class Entry < ApplicationRecord
  belongs_to :account

  def signed_amount
    if kind == 'expense'
      -amount
    elsif kind == 'income'
      amount
    end
  end
end
