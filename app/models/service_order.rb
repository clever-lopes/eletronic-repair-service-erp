class ServiceOrder < ApplicationRecord
  has_one :eletronic, null: false
  belongs_to :user
end
