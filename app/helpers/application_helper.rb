module ApplicationHelper

  def select_image(index)
    case index
    when 0
      "http://i.telegraph.co.uk/multimedia/archive/02272/guest-list-1-alamy_2272670b.jpg"
    when 1
      "http://liquor.s3.amazonaws.com/wp-content/uploads/2015/03/hub_classic_cocktail_margarita.jpg"
    when 2
      "http://f.tqn.com/y/cocktails/1/S/U/o/-/-/Golden-Dawn-Cocktail.jpg"
    end
  end
end
