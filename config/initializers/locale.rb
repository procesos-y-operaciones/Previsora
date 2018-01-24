# config/initializers/locale.rb
# Where the I18n library should search for translation files
I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]

# Whitelist locales available for the application
I18n.available_locales = [:en, :'es-MX']

# Set default locale to something other than :en
I18n.default_locale = :'es-MX'

#Cities and Departaments
CS.states(:co)[:QUI] =  "QUINDIO"
CS.states(:co)[:ARA] =  "ARAUCA"
CS.states(:co)[:ATL] =  "ATLANTICO"
CS.states(:co)[:BOL] =  "BOLIVAR"
CS.states(:co)[:BOY] =  "BOYACA"
CS.states(:co)[:CAL] =  "CALDAS"
CS.states(:co)[:CAQ] =  "CAQUETA"
CS.states(:co)[:CAS] =  "CASANARE"
CS.states(:co)[:CAU] =  "CAUCA"
CS.states(:co)[:CES] =  "CESAR"
CS.states(:co)[:CHO] =  "CHOCO"
CS.states(:co)[:COR] =  "CORDOBA"
CS.states(:co)[:GUA] =  "GUAINIA"
CS.states(:co)[:GUV] =  "GUAVIARE"
CS.states(:co)[:HUI] =  "HUILA"
CS.states(:co)[:LAG] =  "GUAJIRA"
CS.states(:co)[:MAG] =  "MAGDALENA"
CS.states(:co)[:MET] =  "META"
CS.states(:co)[:NAR] =  "NARINO"
CS.states(:co)[:NSA] =  "NORTE DE SANTANDER"
CS.states(:co)[:PUT] =  "PUTUMAYO"
CS.states(:co)[:QUI] =  "QUINDIO"
CS.states(:co)[:RIS] =  "RISARALDA"
CS.states(:co)[:SAN] =  "SANTANDER"
CS.states(:co)[:SUC] =  "SUCRE"
CS.states(:co)[:TOL] =  "TOLIMA"
CS.states(:co)[:VAC] =  "VALLE DEL CAUCA"
CS.states(:co)[:VAU] =  "VAUPES"
CS.states(:co)[:VID] =  "VICHADA"

CS.states(:co).each_pair do |k,v|
  CS.states(:co)[k] = v.upcase
end


#Active Job
BackupJob.perform_later
