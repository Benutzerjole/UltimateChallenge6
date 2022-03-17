class CustomersController < ApplicationController
  def index
         
    @customers = Customer.all

  end

  def alphabetized

    @customers = Customer.all.order(:name)

  end

end
