module RatingsHelper
  def stars_helper(rating)
    stars = ""
    rating.stars.divmod(1)[0].times do
      stars << '<i class="fa fa-star"></i>'
    end
    rating.stars.divmod(1)[1].times do
      stars << '<i class="fa fa-star-half"></i>'
    end
    stars.html_safe
  end

  def status_helper(status)
    status ? "Draft" : "Published"
  end
end
