class Language < ApplicationRecord
    has_many :dictionaries
    has_many :dialects
    accepts_nested_attributes_for :dialects
   
    
    
    
    
end
