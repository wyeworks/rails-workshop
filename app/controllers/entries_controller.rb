class EntriesController < ApplicationController
  def index
    @account = current_user.accounts.find(params[:account_id])
    @entries = @account.entries
  end
end
