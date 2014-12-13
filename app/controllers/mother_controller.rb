class MotherController < ApplicationController
  def index
  	@dos_donts = DosDont.all
  end

  def about
  end

  def help
  end
end
