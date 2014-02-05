class HomeController < ApplicationController
  def index
    # Your friendly neighbourhood respond_to...
    respond_to do |format|
      # ... responds to HTML. Yada yada yada.
      format.html do |html|
        # BAM! New and exciting! Action Pack Variants for HTML.
        html.ipad
        html.iphone
        html.windows_phone { redirect_to "/windows_phone.jpg" }
      end
    end
  end
end
