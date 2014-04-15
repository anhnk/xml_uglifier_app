class UglifyController < ApplicationController
  skip_before_filter :verify_authenticity_token, if: :json_request?

  def index
    respond_to do |format|
      format.json { render json: { name: 'Anh Do', status: :ok} }
      format.html
    end
  end

  def show
    @content = XmlUglifier.uglify params[:uglifier][:content] unless params[:uglifier].nil?

    respond_to do |format|
      format.json { render json: { uglified_xml: 'Nilo', status: :ok} }
      format.html
    end
  end

  protected

  def json_request?
	request.format.to_s == '*/*'
  end
end
