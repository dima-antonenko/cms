class AddDataToVariables < ActiveRecord::Migration
  def change
  	SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at) VALUES
  	 ("Номер телефона", "+7 123 456 78", "footer", "2015-04-14 06:08:13.505610" , "2015-04-14 06:08:13.505612")');
  	
  	SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at) VALUES
  	 ("О компании", "Текст о компании", "footer", "2015-04-14 06:08:13.505610" , "2015-04-14 06:08:13.505613")');

  	SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at)
  	 VALUES ("График работы", "10:00 - 20:00", "header", "2015-04-14 06:08:13.505610", "2015-04-14 06:08:13.505612")');

  	SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at)
  	 VALUES ("Телефон для справки", "+7 123 435 456", "header", "2015-04-14 06:08:13.505610", "2015-04-14 06:08:13.505615")');

  	SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at)
  	 VALUES ("Телефон для справки", "+7 123 435 456", "page_contact", "2015-04-14 06:08:13.505610", "2015-04-14 06:08:13.505310")');

  	SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at)
  	 VALUES ("Информация о компании", "Информация о компании здесь", "page_company_info", "2015-04-14 06:08:13.505610", "2015-04-14 06:08:13.506610")');

    SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at)
     VALUES ("Доставка и оплата текст", "Текст доставки и оплаты", "page_delivery_pay", "2015-04-14 06:08:13.505610", "2015-04-14 06:08:13.506610")');

    SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at)
     VALUES ("Код яндекс метрики", "Здесь будет код", "settings", "2015-04-14 06:08:13.505610", "2015-04-14 06:08:13.506610")');

    SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at)
     VALUES ("Код гугл аналитики", "Здесь будет код", "settings", "2015-04-14 06:08:13.505610", "2015-04-14 06:08:13.506610")');
  end
end
