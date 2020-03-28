class ApplicationController < ActionController::Base
  def home
    @movies = Movie.all.order(publish: :asc)
    @categories = Movie.all&.pluck(:category)&.uniq
    render 'layouts/home'
  end
end
