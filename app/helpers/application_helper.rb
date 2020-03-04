module ApplicationHelper
  def select_icon(category)
    case category
     when 'légumes'
       icon = "food_icons/vegies.png"
     when 'épices'
       icon = "food_icons/spices.png"
     when 'condiments'
       icon = "food_icons/condiment.png"
     when 'BOF'
       icon = "food_icons/BOF.png"
     when 'Liquide - Alcool'
       icon = "food_icons/wine.png"
     when 'poissons'
       icon = "food_icons/poisson.png"
     when 'fruits'
       icon = "food_icons/fruit.png"
     when 'fruits à coque'
       icon = "food_icons/coque.png"
     when 'crèmerie'
       icon = "food_icons/cremerie.png"
     when 'viandes'
       icon = "food_icons/viande.png"
     when 'féculents'
       icon = "food_icons/feculent.png"
     when 'épicerie sucrée'
       icon = "food_icons/sucre.png"
    end
  end
end
