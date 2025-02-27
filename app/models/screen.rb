class Screen < ApplicationRecord
  has_one :presentation, dependent: :destroy
end
