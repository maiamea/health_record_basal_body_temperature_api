class BasalBodyTemperature < ApplicationRecord
  validates :measured_value, { presence: true }
  validates :measured_at, { presence: true }
end
