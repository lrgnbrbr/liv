class OrganizationController < ApplicationController

  def new
    @organization = Organization.new
  end

  def create
    Organization.create!(orgaization_params)
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
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    redirect_to organization_path
  end

 private


  def organization_params
    params.require(:organization).permit(:zip_code, :address, :name, :phon_number, :description, :email, :city)
  end
end



