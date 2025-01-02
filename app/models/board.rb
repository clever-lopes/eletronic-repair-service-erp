class Board < ApplicationRecord
  belongs_to :brand
  belongs_to :service_order
end
