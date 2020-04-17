class ApplicationController < ActionController::Base
  def home
    @movies = Movie.all.order(publish: :asc)
    @categories = Movie.all&.pluck(:category)&.uniq
    render 'layouts/home'
  end



  def is_admin?
    redirect_to root_path unless (current_user&.admin? || false)
  end
end
