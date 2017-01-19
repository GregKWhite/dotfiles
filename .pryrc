# load Rails Console helpers like reload
require 'rails/console/app'
extend Rails::ConsoleMethods
puts 'Rails Console Helpers loaded'

# Set the logger level to debug by default
Rails.logger = Logger.new(STDOUT)
Rails.logger.level = 0

def enable_logger
  Rails.logger.level = 0
end

def disable_logger
  Rails.logger.level = 4
end

def a
  Account.current_account
end

def enable_sql
  ActiveRecord::Base.logger = Logger.new STDOUT
end

def disable_sql
  ActiveRecord::Base.logger = nil
end

def r
  reload!
end

def c
  `\e[H\e[2J`
end

def create_temp_table
  contract = Contract.find(9)
  ActiveRecord::Base.connection.execute(<<-SQL)
    create temp table export_data as
      select areas.id as area_id,
      services_servicings.service_id,
      servicings.id as servicing_id,
      servicings.completed_at at time zone work_orders.timezone as completed_at,
      area_types.id as area_type_id
      from areas
      inner join area_types on area_types.id = areas.area_type_id
        and area_types.deleted_at is null
      inner join servicings on servicings.area_id = areas.id
        and servicings.work_order_id in
          (
            select id
            from work_orders
            where work_orders.starts_at between '#{contract.start_date}' and '#{contract.end_date}'
              and work_orders.location_id = '#{contract.location_id}'
          )
        and servicings.approval_status = 'approved'
        and servicings.deleted_at is null
      inner join work_orders on work_orders.id = servicings.work_order_id
        and work_orders.deleted_at is null
      inner join services_servicings on services_servicings.servicing_id = servicings.id
      group by areas.id, services_servicings.id, work_orders.timezone, servicings.completed_at,
        servicings.id, area_types.id
      order by areas.id, services_servicings.service_id
  SQL
end
