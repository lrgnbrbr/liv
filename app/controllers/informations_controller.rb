class InformationsController < ApplicationController
skip_before_action :authenticate_user!
  def index
    @informations = Information.all
  end
end
