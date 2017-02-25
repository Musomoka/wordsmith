class Language < ApplicationRecord
    has_many :dictionaries
    has_many :dialects
end
