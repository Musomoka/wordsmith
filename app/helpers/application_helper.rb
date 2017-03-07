module ApplicationHelper
    
    def full_title(page_title='')
         base_title = "www.wordsmith.com"
        if page_title.empty?
           
            
        else
       page_title + ' | ' + base_title
        end
    end


    def country_name
     return  name = ISO3166::Country.find_country_by_alpha3(@language.country)
  end
end
