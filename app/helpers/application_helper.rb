module ApplicationHelper
  def account_kind_options
    [
      ['Bank', 'bank'],
      ['Cash', 'cash'],
      ['Credit card', 'credit-card'],
    ]
  end

  def currency_options
    [
      ['Dollars', 'USD'],
      ['Uruguayan Pesos', 'UYU'],
      ['Argentine Pesos', 'ARS']
    ]
  end
end
