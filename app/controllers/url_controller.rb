class UrlController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
  if @url.save
  render :create
  else
  render :new
  end
end

  def fwd
  @url = Url.find(params[:id])
  redirect_to @url.long_url
  end

  def list
  end

private
  def url_params
    params.require(:url).permit(:long_url)
  end

end
