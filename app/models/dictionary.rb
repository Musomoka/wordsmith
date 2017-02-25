class Dictionary < ApplicationRecord
   belongs_to :languages
   accepts_nested_attributes_for :languages
end
