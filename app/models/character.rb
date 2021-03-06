class Character < ApplicationRecord
    validates :name, presence: true, length: { minimum: 2, maximum: 40 }
    belongs_to :job
    belongs_to :user
    belongs_to :race
end