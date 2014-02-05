class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_variants

  private

  # Initialize Action Pack Variants.
  def set_variants
    request.variant = :ipad if request.user_agent =~ /iPad/
    request.variant = :iphone if request.user_agent =~ /iPhone/
    request.variant = :windows_phone if request.user_agent =~ /Windows Phone/
  end
end
