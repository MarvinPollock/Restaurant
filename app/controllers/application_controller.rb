class ApplicationController < ActionController::Base
  before_filter :authenticate_customer!
  protect_from_forgery
end
