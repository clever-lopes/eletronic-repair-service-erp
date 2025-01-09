class Eletronic < ApplicationRecord
  belongs_to :service_order, optional: true
end
