require "byebug"
require "mysql2"
require "GDO/JQuery"

RSpec.describe ::GDO::JQuery do
  
 it "can switch to bot language" do
   ::GDO::Lang::Trans.instance.iso(:bot)
 end
  
  it "can connect to the database" do
      db = ::GDO::DB::Connection.new('localhost', 'rubygdo', 'rubygdo', 'rubygdo')
      expect(db.get_link).to be_truthy
  end
  
  it "can install the jquery module" do
    # Flush install JQuery
    mod = ::GDO::JQuery::Module.instance
   ::GDO::Core::ModuleInstaller.instance.drop_module mod
   ::GDO::Core::ModuleInstaller.instance.install_module mod
  end

  it "can configure the jquery module" do
    mod = ::GDO::JQuery::Module.instance
  end
  

end
