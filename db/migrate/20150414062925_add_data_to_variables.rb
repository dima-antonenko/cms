class AddDataToVariables < ActiveRecord::Migration
  def change

    
    SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at)
     VALUES ("Код яндекс метрики", "Здесь будет код", "settings", "2015-04-14 06:08:13.505610", "2015-04-14 06:08:13.506610")');

    SiteVariable.connection.execute('INSERT INTO "site_variables" (name, value, place, created_at, updated_at)
     VALUES ("Код гугл аналитики", "Здесь будет код", "settings", "2015-04-14 06:08:13.505610", "2015-04-14 06:08:13.506612")');

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

    User.connection.execute('INSERT INTO "site_variables" (email, encrypted_password,  remember_created_at,
      sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at)
     VALUES ("d.antonenko94@mail.ru", "$2a$10$2K.HHIYgUGfuM6QlLYgIQOaRZE1KR5onMcWcXiLFR7fPaWQswrrmO", "2015-04-21 13:18:33.376890",
      "40", "2015-04-21 13:18:33.529918", "2015-04-20 14:28:28.304498", "127.0.0.1", "127.0.0.1", "2015-03-12 07:03:28.328922", "2015-03-12 07:03:28.328929"
      )');

  end
end
