class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def new
  end

  def create
  end

end
