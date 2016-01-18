class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, :alert => exception.message
  end

 # def after_sign_in_path_for(resource)
 #      if resource.is_a?(User)
 #        #if User.name == 'ydd'
 #        if User.count == 1
 #          resource.add_role 'admin'
 #        end
 #        resource
 #      end
 #      root_path
#  end


end
