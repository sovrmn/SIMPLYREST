module ApplicationHelper
  def select_icon(category)
    case category
     when 'légume'
       icon = "food_icons/vegies.png"
     when 'épice'
       icon = "food_icons/spices.png"
     when 'condiment'
       icon = "food_icons/condiment.png"
     when 'BOF'
       icon = "food_icons/BOF.png"
     when 'alcool'
       icon = "food_icons/wine.png"
     when 'poisson'
       icon = "food_icons/poisson.png"
     when 'fruit'
       icon = "food_icons/fruit.png"
     when 'fruit à coque'
       icon = "food_icons/coque.png"
     when 'crèmerie'
       icon = "food_icons/cremerie.png"
     when 'viande'
       icon = "food_icons/viande.png"
     when 'féculent'
       icon = "food_icons/feculent.png"
     when 'épicerie sucrée'
       icon = "food_icons/sucre.png"
    end
  end
end
