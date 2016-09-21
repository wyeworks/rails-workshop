require 'test_helper'

class CreateAccountTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test 'can create an account' do
    sign_in users(:one)

    get '/accounts/new'
    assert_response :success

    post '/accounts', params: {
      account: {
        name: 'Bank account',
        kind: 'bank',
        balance: 300,
        currency: 'USD'
      }
    }

    assert_response :redirect
    follow_redirect!

    assert_response :success
    assert_select 'tbody tr:last-child' do
      assert_select 'td:nth-child(1)', 'Bank account'
      assert_select 'td:nth-child(2)', 'bank'
      assert_select 'td:nth-child(3)', 'USD 300.00'
    end
  end
end
