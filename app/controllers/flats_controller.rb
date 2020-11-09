require "open-uri"

class FlatsController < ApplicationController
  before_action :fetch_flats

  def index
  end

  def show
    #  from the list of flats i need to find the flat with the id from the params
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
  end

  private

  def fetch_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
