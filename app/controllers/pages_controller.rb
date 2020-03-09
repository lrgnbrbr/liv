class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @organizations = Organization.all
  end

  def medical
  end
end
