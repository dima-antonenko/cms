class AddDataToVariables < ActiveRecord::Migration
  def change
  	SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at) VALUES ("Номер телефона", "+7 123 456 78", "footer", "2015-04-14 06:08:13.505610" , "2015-04-14 06:08:13.505610")')
  	SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at) VALUES ("График работы", "10:00 - 20:00", "header", "2015-04-14 06:08:13.505610", "2015-04-14 06:08:13.505610")')
  end
end
