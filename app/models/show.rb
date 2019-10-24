class Show < ActiveRecord::Base
  def highest_rating
    Show.maximum("rating")
  end

  def most_popular_show
    hr = highest_rating
    Show.where("rating = ?", hr)
  end

  def lowest_rating
    Show.minimum("rating")
  end

  def least_popular_show
    lr = lowest_rating
    Show.where("rating = ?", lr)
  end

  def ratings_sum
    Show.sum("rating")
  end

  def popular_shows
    Show.where("rating > ?", 5)
  end

  def shows_by_alphabetical_order
    Show.order(name: :asc)
  end
end
