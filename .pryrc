# load Rails Console helpers like reload
require 'rails/console/app'
extend Rails::ConsoleMethods
puts 'Rails Console Helpers loaded'

def acc(id = 1)
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
