module AccountsHelper
  def account_kind_options
    [
      ['Bank', 'bank'],
      ['Cash', 'cash'],
      ['Credit card', 'credit-card'],
    ]
  end

  def formatted_currency(balance, currency)
    content_tag(:span, class: amount_class(balance)) do
      number_to_currency(balance,
                         unit: currency,
                         format: '%u %n',
                         negative_format: '(%u %n)')
    end
  end

  private

  def amount_class(balance)
    if (balance >= 0)
      'listing__amount--income'
    else
      'listing__amount--expense'
    end
  end
end
