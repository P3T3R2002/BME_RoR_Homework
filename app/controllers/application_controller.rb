class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :load_secondary_links

  private

  def load_secondary_links
    @secondary_link_1 = Link.find(1)
    @secondary_link_2 = Link.find(2)
    @secondary_link_3 = Link.find(3)
    @secondary_link_4 = Link.find(4)
    @secondary_link_5 = Link.find(5)
    @secondary_link_6 = Link.find(6)
    @secondary_link_7 = Link.find(7)
    @secondary_link_8 = Link.find(8)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone])
  end
end
