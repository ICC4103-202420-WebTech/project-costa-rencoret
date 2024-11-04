class ApplicationController < ActionController::Base
  before_action :authenticate_utilizer!
end