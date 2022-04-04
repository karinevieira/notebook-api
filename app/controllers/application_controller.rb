class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :ensure_json_request

  def ensure_json_request
    return if request.headers["Accept"] =~ /json/ 
    render :nothing => true, status: :not_acceptable
  end
end
