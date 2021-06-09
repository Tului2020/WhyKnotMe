class Pages::PagesController < ApplicationController

  def show
      render template: "pages/examples"
  end


  def phone
    render template: "pages/phone"
  end

  def facebook
    render template: "pages/facebook"
  end

end
