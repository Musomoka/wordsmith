class Dialect < ApplicationRecord
  belongs_to :language
   include Filterable
end
