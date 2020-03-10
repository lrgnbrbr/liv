class ServiceWorkerController < ApplicationController
  skip_before_action :authenticate_user!

  def manifest
  end
end
