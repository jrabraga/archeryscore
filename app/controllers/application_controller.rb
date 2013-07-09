class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :definir_pessoa


  def definir_pessoa
  	@current_pessoa = Pessoa.find(1)
  end
end
