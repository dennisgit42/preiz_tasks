class Project < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3, maximum: 30}
    validates :description, presence: true, length: {maximum: 500}
end
