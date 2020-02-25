User.destroy_all
p "users destroyed"
Restaurant.destroy_all
p "restaurants destroyed"
Recipe.destroy_all
p "recipes destroyed"
Product.destroy_all
p "products destroyed"
Ingredient.destroy_all
p "ingredients destroyed"
Supplier.destroy_all
p "suppliers destroyed"

# users :
User.create(email:'brad.pitt.hollywood@gmail.com', password:'nespresso')
# restaurant :
Restaurant.create(name: 'Error 500')
# recipes :
bourguignon = Recipes.create(name: "Bourguignon de bœuf Aubrac sur son lit de légumes tournés" , category: 'Cuisine française')
cdb = Recipes.create(name: "Côte de Bœuf Aubrac accompagnée d'une rivière de purée" , category: 'Cuisine française')
saumonRillette = Recipes.create(name: "Rillettes de saumon", category: 'poisson')
falafel = Recipes.create(name: "Falafel", category: "végétarien")
rizLait = Recipes.create(name: "Riz au lait de mûres sauvages ", category: "dessert")
Recipes.create(name: "", category:)
# products pour Boeuf bourgignon + cote de boeuf
boeufAubrac = Product.create(name: 'Bœuf Aubrac', category: 'viande', unit: 'g')
coteAubrac = Product.create(name: 'Cote de Bœuf Aubrac', category: 'viande', unit: 'g')
oignon = Product.create(name: 'Oignons', category: 'légume' , unit: 'g')
carotte = Product.create(name: 'Carottes', category: 'légume', unit: 'g')
persil = Product.create(name: 'Persil', category: 'épice' , unit: 'g' )
4epices = Product.create(name: '4 épices', category: 'épice', unit: 'g')
thym =Product.create(name: 'Thym', category: 'épice', unit: 'g')
huileTournesol = Product.create(name: 'Huile Tournesol', category: 'condiment' , unit: 'L' )
huileOlive = Product.create(name: "Huile d'olive", category: 'condiment' , unit: 'L' )
farine = Product.create(name: 'Farine', category: 'BOF', unit: 'g')
vin = Product.create(name: 'Vin', category: "alcool" , unit: 'L')
fondsVeau = Product.create(name: 'Fonds de veau', category: 'viande' , unit: 'L')
carotteG = Product.create(name: 'Carottes G', category:'légume' , unit:'g' )
pdtg = Product.create(name: 'PDT G', category: 'légume', unit: 'g')
beurre = Product.create(name: 'Beurre', category: 'BOF' , unit: 'g')
salade = Product.create(name: 'Salade', category: "légume", unit: 'g' )
fleurSel = Product.create(name: 'Fleur de sel', category: 'épice', unit: 'g')
# saumon
saumon = Product.create(name: 'saumon', category: 'poisson', unit: 'g')
citronConfit = Product.create(name: 'citron confit', category: 'fruit', unit: 'g')
noisette = Product.create(name: 'noisettes', category: 'fruit à coque', unit: 'g')
fromageFrais = Product.create(name: 'fromage frais', category: 'crèmerie', unit: 'g')
citronJaune = Product.create(name: 'citron jaune', category: 'fruit', unit: 'g')
poivre = Product.create(name: 'Poivre', category: 'épice', unit: 'g')
# falafel
poisChiches = Product.create(name: 'pois chiches', category: 'légume', unit: 'g')
coriandre = Product.create(name: 'coriandre', category: 'épice', unit: 'g')
cumin = Product.create(name: 'cumin', category: 'épice', unit: 'g')
aubergine = Product.create(name: 'aubergine', category: 'légume', unit: 'g')
ail = Product.create(name: 'ail', category: 'légume', unit: 'g')
citron vert = Product.create(name: 'citron vert', category: 'fruit', unit: 'g')
# riz au lait
rizRond = Product.create(name: 'riz rond', category: 'féculent', unit: 'g')
lait = Product.create(name: 'lait', category: 'crèmerie', unit: 'L')
sucre = Product.create(name: 'sucre', category: 'épicerie sucrée', unit: 'g')
mure = Product.create(name: 'mûres sauvages', category: 'fruit', unit: 'g')
tonka = Product.create(name: 'fêves tonka', category: 'épicerie sucrée', unit: '')
 = Product.create(name: '', category: '', unit: '')

# ingredients :
# Boeuf bourgignon
oignon_bourguignon = Ingredient.create(quantity: 56.25 )
oignon_bourguignon.product = oignon
oignon_bourguignon.recipe = bourguignon
boeuf_bourguignon = Ingredient.create(quantity: 250 )
carotte_bourguignon = Ingredient.create(quantity: 56.25 )
persil_bourguignon = Ingredient.create(quantity: "" )
4epices_bourguignon = Ingredient.create(quantity: "" )
thym_bourguignon = Ingredient.create(quantity: "" )
tournesol_bourguignon = Ingredient.create(quantity: 4.125 )
farine_bourguignon = Ingredient.create(quantity: 6.25 )
vin_bourguignon = Ingredient.create(quantity: 12.50 )
fondsVeau_bourguignon = Ingredient.create(quantity: 12.50 )
pdtg_bourguignon = Ingredient.create(quantity: 125 )
carotteG_bourguignon = Ingredient.create(quantity: 68.75 )
fleurSel_bourguignon = Ingredient.create(quantity: "" )
# cote de boeuf = cdb
boeuf_cdb = Ingredient.create(quantity: 1070 )
pdt_cdb = Ingredient.create(quantity: 500 )
beurre_cdb = Ingredient.create(quantity: 20 )
huileOlive_cdb = Ingredient.create(quantity: 0.07 )
salade_cdb = Ingredient.create(quantity:  )
#rillettes de saumon = saumonR
saumon_saumonR = Ingredient.create(quantity: 57.143 )
noisette_saumonR = Ingredient.create(quantity: 21.43 )
citronConfit_saumonR = Ingredient.create(quantity: 21.43 )
fleurSel_saumonR = Ingredient.create(quantity: "" )
#falafel
poisChiches_falafel = Ingredient.create(quantity: 40 )
huileTournesol_falafel = Ingredient.create(quantity: 0.013 )
carotte_falafel = Ingredient.create(quantity: 12 )
persil_falafel = Ingredient.create(quantity: "" )
coriandre_falafel = Ingredient.create(quantity: "" )
cumin_falafel = Ingredient.create(quantity: 2 )
huileOlive_falafel = Ingredient.create(quantity: 0.0012 )
aubergine_falafel = Ingredient.create(quantity: 160 )
ail_falafel = Ingredient.create(quantity: 4 )
fleurSel_falafel = Ingredient.create(quantity: "" )
citronVert_falafel = Ingredient.create(quantity: "" )
poivre_falafel = Ingredient.create(quantity: "" )
# riz au lait = rizLait
riz_rizLait = Ingredient.create(quantity: "" )
lait_rizLait = Ingredient.create(quantity: "" )
sucre_rizLait = Ingredient.create(quantity: "" )
mures_rizLait = Ingredient.create(quantity: 66.66 )
tonka_rizLait = Ingredient.create(quantity: 1 )
 = Ingredient.create(quantity: "" )
 = Ingredient.create(quantity: "" )
 = Ingredient.create(quantity: "" )

# suppliers :
c2b = Supplier.create(name: "C2B" ,category: "viandes" ,email: "c2b@gmail.com")
daybyday = Supplier.create(name: "DaybyDay" ,category: "épicerie en vrac" ,email: "daybyday@gmail.com" )
lenoble = Supplier.create(name: "Lenoble" ,category: "primeur",email: "lenoble@gmail.com" )
jayden = Supplier.create(name: "Jayden" ,category: "primeur",email: "jayden@gmail.com" )
superu = Supplier.create(name: "Super U" ,category: "GMS",email: "superu@gmail.com")
metro = Supplier.create(name: "Metro" ,category: "GMS",email: "metro@gmail.com" )
brasson = Supplier.create(name: "Maison Brasson" ,category: "épicerie spécialisée" ,email: "brasson@gmail.com" )
g20 = Supplier.create(name: "G20" ,category: "GMS",email: "g20@gmail.com")
chapoutier = Supplier.create(name: "Chapoutier" ,category: "vins & spiritueux" ,email: "chapoutier@gmail.com")
aksha = Supplier.create(name: "Aksha" ,category: "primeur" ,email: "aksha@gmail.com")
 = Supplier.create(name: ,category: ,email: )

 # recipes_sales :
# restaurant_recipes :
# supplier_items :
# ? order_items :
# ? inventory_items :
# ? orders :

