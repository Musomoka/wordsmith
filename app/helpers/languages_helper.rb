module LanguagesHelper

def country_name
   name = ISO3166::Country.find_country_by_alpha3(@language.country)
  end	
end
