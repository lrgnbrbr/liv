class TestimonialsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @testimonial = Testimony.all
    @fake_test = VideoThumb::get("http://www.youtube.com/watch?v=iEPTlhBmwRg", "medium")
  end
end
