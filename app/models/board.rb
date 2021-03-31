class Board < ApplicationRecord
    belongs_to :bulletin
    has_many :items
end
