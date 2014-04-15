class UglifyController < ApplicationController
  def index
  end

  def show
  	@content = XmlUglifier.uglify params[:uglifier][:content]
  end
end
