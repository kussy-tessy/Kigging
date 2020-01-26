class HomeController < ApplicationController
  def home
    @kigurumis = Kigurumi.all
  end
end
