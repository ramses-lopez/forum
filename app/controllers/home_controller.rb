class HomeController < ApplicationController
  include ApplicationHelper

  before_action :login_required, only: [:private_area]

  def index
  end

  def private_area
  end

end
