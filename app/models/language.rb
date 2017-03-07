class Language < ApplicationRecord
    has_many :dictionaries
    has_many :dialects
    scope :dialect, -> { where(:country => country) }
end
