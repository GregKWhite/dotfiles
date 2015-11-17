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

def acc
  a = Account.find_by(account_name: 'Test Account: Greg')
  a.switch
  a
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

def enable_pry
  ENV['DISABLE_PRY'] = nil
end
