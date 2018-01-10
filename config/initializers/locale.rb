# config/initializers/locale.rb

# Where the I18n library should search for translation files
I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]

# Whitelist locales available for the application
I18n.available_locales = [:en, 'es-MX']

# Set default locale to something other than :en
I18n.default_locale = 'es-MX'

#Cities and Departaments
puts "Actualizando ciudades"
CS.update
CS.states(:co).each_pair do |k,v|
  CS.states(:co)[k] = v.upcase
end
