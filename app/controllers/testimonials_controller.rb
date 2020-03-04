class TestimonialsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @testimonial = Testimony.all
  end
end
