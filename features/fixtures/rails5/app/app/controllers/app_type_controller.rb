class AppTypeController < ActionController::Base
  protect_from_forgery

  def initializer
    Bugsnag.notify("handled string")
    render json: {}
  end

  def after
    Bugsnag.configure do |conf|
      conf.app_type = params[:type]
    end
    Bugsnag.notify("handled string")
    render json: {}
  end
end
