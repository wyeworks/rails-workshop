class EntriesController < ApplicationController
  before_action :set_account
  before_action :set_entry, only: [:edit, :update, :destroy]

  def index
    @entries = @account.entries
  end

  def new
    @entry = @account.entries.build
  end

  def edit
  end

  def create
    @entry = @account.entries.build(entry_params)

    if @entry.save
      redirect_to account_entries_path(@account), notice: 'Entry was successfully created.'
    else
      render :new
    end
  end

  def update
    if @entry.update(entry_params)
      redirect_to account_entries_path(@account), notice: 'Entry was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @entry.destroy
    redirect_to account_entries_path(@account)
  end

  private

  def set_entry
    @entry = @account.entries.find(params[:id])
  end

  def set_account
    @account = current_user.accounts.find(params[:account_id])
  end

  def entry_params
    params.require(:entry).permit(:category, :kind, :amount, :date, :notes)
  end
end
