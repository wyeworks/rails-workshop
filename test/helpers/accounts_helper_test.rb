require 'test_helper'

class AccountsHelperTest < ActionView::TestCase
  test "should render the USD currency and a positive value as income" do
    assert_dom_equal '<span class="listing__amount--income">USD 45.10</span>', formatted_currency(45.1, 'USD')
  end

  test "should render the USD currency and a negative value as expense" do
    assert_dom_equal '<span class="listing__amount--expense">(USD 12.90)</span>', formatted_currency(-12.9, 'USD')
  end

  test "should render the UYU currency and a zero value as income" do
    assert_dom_equal '<span class="listing__amount--income">UYU 0.00</span>', formatted_currency(0, 'UYU')
  end
end
