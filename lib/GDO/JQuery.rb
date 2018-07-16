require "GDO"
module GDO::JQuery
  VERSION = 1.00
  extend ::GDO::Autoloader # Own GDO Autoloader
end
::GDO::JQuery::Module.instance # Autoload module
