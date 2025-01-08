class ServiceOrder < ApplicationRecord
  has_one :eletronic
  belongs_to :user
end
