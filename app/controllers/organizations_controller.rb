class OrganizationsController < ApplicationController
    skip_before_action :authenticate_user!

  def new
    @organization = Organization.new
  end

  def create
    Organization.create!(organziation_params)
    redirect_to organization_path
  end

  def edit

  end

  def update
    @organization = Organization.find(params[:id])
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def index
    @organization = Organization.all
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    redirect_to organization_path
  end

 private


  def organziation_params
    params.require(:organization).permit(:zip_code, :address, :name, :phon_number, :description, :email, :city)
  end
end



