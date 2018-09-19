# config/initializers/locale.rb
# Where the I18n library should search for translation files
I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]

# Whitelist locales available for the application
I18n.available_locales = [:en, :'es-MX']

# Set default locale to something other than :en
I18n.default_locale = :'es-MX'

#Active Job
day = 7 - (Time.now.day % 7)
hour = 23 - (Time.now.hour % 23)
BackupJob.set(wait: day.day + hour.hour).perform_later
puts "------> BackupJob will be executed in #{day} days and #{hour} hours. <------"
