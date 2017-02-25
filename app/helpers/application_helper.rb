module ApplicationHelper
    
    def full_title(page_title='')
         base_title = "www.wordsmith.com"
        if page_title.empty?
           
            
        else
       page_title + ' | ' + base_title
        end
    end
end
