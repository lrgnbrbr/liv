class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def medical
  end

  def calculator
    render layout: "calculator"
  end

end
