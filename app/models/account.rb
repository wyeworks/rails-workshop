class Account < ApplicationRecord
  validates :name, presence: true
  validates :kind, inclusion: { in: %w(bank cash credit-card) }
  validates :balance, numericality: true
  validates :currency, inclusion: { in: %w(USD UYU ARS) }
end
