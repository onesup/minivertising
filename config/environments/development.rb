Minivertising::Application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  if File.exists? ("#{Rails.root}/config/email.yml")
    EMAIL_CONFIG = YAML.load_file("#{Rails.root}/config/email.yml")[Rails.env]
  else
    EMAIL_CONFIG = {user_name: "temp@temp.org", password: "temp"}
  end
  config.action_mailer.smtp_settings = {
    address: "smtp.naver.com",
    port: 587,
    domain: "minivertising.kr",
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: EMAIL_CONFIG[:user_name],
    password: EMAIL_CONFIG[:password]
  }
  
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
end
