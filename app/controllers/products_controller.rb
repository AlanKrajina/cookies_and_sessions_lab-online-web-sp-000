require 'pry'


class ProductsController < ApplicationController

  def index
    @cart = cart
  end

  def add
    binding.pry
    @cart = cart
    @cart << params[:product]
    session[:cart] = @cart
    redirect_to '/'
  end

end
