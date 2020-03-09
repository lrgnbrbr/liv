class MedicalController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @medical = Medical.all
  end
end
