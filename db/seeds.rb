OrderItem.destroy_all
p "Order items destroyed"
InventoryItem.destroy_all
p "Inventory items destroyed"
RestaurantRecipe.destroy_all
p "Restaurant Recipes destroyed"
RecipeSale.destroy_all
p "Recipe Sales destroyed"
SupplierItem.destroy_all
p "Supplier items destroyed"
Ingredient.destroy_all
p "Ingredients destroyed"
Recipe.destroy_all
p "Recipes destroyed"
Order.destroy_all
p "Orders destroyed"
OrderItem.destroy_all
p "Order items destroyed"
Product.destroy_all
p "Products destroyed"
Supplier.destroy_all
p "Suppliers destroyed"
Restaurant.destroy_all
p "Restaurants destroyed"
User.destroy_all
p "Users destroyed"

# users :
owner = User.create!(email:'brad.pitt.hollywood@gmail.com', password:'nespresso')
p "users created"
# restaurant :
restaurant = Restaurant.create!(name: 'Marius & Lucien', user: User.first)
p "restaurants created"
# recipes :
bourguignon = Recipe.create!(name: "Bourguignon de bœuf Aubrac sur son lit de légumes tournés" , category: 'Cuisine française', user: owner)
cdb = Recipe.create!(name: "Côte de Bœuf Aubrac accompagnée d'une rivière de purée" , category: 'Cuisine française', user: owner)
saumonR = Recipe.create!(name: "Rillettes de saumon", category: 'poisson', user: owner)
falafel = Recipe.create!(name: "Falafel", category: "végétarien", user: owner)
rizLait = Recipe.create!(name: "Riz au lait de mûres sauvages ", category: "dessert", user: owner)
p "recipes created"
# products pour Boeuf bourgignon + cote de boeuf
boeufAubrac = Product.create!(name: 'Bœuf Aubrac', category: 'viande', unit: 'kg')
coteAubrac = Product.create!(name: 'Cote de Bœuf Aubrac', category: 'viande', unit: 'kg')
oignon = Product.create!(name: 'Oignons', category: 'légume' , unit: 'kg')
carotte = Product.create!(name: 'Carottes', category: 'légume', unit: 'kg')
persil = Product.create!(name: 'Persil', category: 'épice' , unit: 'kg')
epices = Product.create!(name: '4 épices', category: 'épice', unit: 'kg')
thym =Product.create!(name: 'Thym', category: 'épice', unit: 'kg')
huileTournesol = Product.create!(name: 'Huile Tournesol', category: 'condiment' , unit: 'L' )
huileOlive = Product.create!(name: "Huile d'olive", category: 'condiment' , unit: 'L' )
farine = Product.create!(name: 'Farine', category: 'BOF', unit: 'kg')
vin = Product.create!(name: 'Vin', category: "alcool" , unit: 'L')
fondsVeau = Product.create!(name: 'Fonds de veau', category: 'viande' , unit: 'L')
pdtg = Product.create!(name: 'PDT G', category: 'légume', unit: 'kg')
beurre = Product.create!(name: 'Beurre', category: 'BOF' , unit: 'kg')
salade = Product.create!(name: 'Salade', category: "légume", unit: 'kg' )
fleurSel = Product.create!(name: 'Fleur de sel', category: 'épice', unit: 'kg')
# saumon
saumon = Product.create!(name: 'saumon', category: 'poisson', unit: 'kg')
citronConfit = Product.create!(name: 'citron confit', category: 'fruit', unit: 'kg')
noisette = Product.create!(name: 'noisettes', category: 'fruit à coque', unit: 'kg')
fromageFrais = Product.create!(name: 'fromage frais', category: 'crèmerie', unit: 'kg')
citronJaune = Product.create!(name: 'citron jaune', category: 'fruit', unit: 'kg')
poivre = Product.create!(name: 'Poivre', category: 'épice', unit: 'kg')
# falafel
poisChiches = Product.create!(name: 'pois chiches', category: 'légume', unit: 'kg')
coriandre = Product.create!(name: 'coriandre', category: 'épice', unit: 'kg')
cumin = Product.create!(name: 'cumin', category: 'épice', unit: 'kg')
aubergine = Product.create!(name: 'aubergine', category: 'légume', unit: 'kg')
ail = Product.create!(name: 'ail', category: 'légume', unit: 'kg')
citronVert = Product.create!(name: 'citron vert', category: 'fruit', unit: 'kg')
# riz au lait
rizRond = Product.create!(name: 'riz rond', category: 'féculent', unit: 'kg')
lait = Product.create!(name: 'lait', category: 'crèmerie', unit: 'L')
sucre = Product.create!(name: 'sucre', category: 'épicerie sucrée', unit: 'kg')
mure = Product.create!(name: 'mûres sauvages', category: 'fruit', unit: 'kg')
tonka = Product.create!(name: 'fêves tonka', category: 'épicerie sucrée', unit: 'kg')
p "products created"
# ingredients :
# Boeuf bourgignon
oignon_bourguignon = Ingredient.create!(quantity: 0.05625, recipe: bourguignon, product: oignon)
boeuf_bourguignon = Ingredient.create!(quantity: 0.250, recipe: bourguignon, product: boeufAubrac)
carotte_bourguignon = Ingredient.create!(quantity: 0.4625, recipe: bourguignon, product: carotte)
persil_bourguignon = Ingredient.create!(quantity: 0.015, recipe: bourguignon, product: persil)
epices_bourguignon = Ingredient.create!(quantity: 0.008, recipe: bourguignon, product: epices)
thym_bourguignon = Ingredient.create!(quantity: 0.01, recipe: bourguignon, product: thym)
tournesol_bourguignon = Ingredient.create!(quantity: 0.002, recipe: bourguignon, product: huileTournesol)
farine_bourguignon = Ingredient.create!(quantity: 0.008, recipe: bourguignon, product: farine)
vin_bourguignon = Ingredient.create!(quantity: 0.015, recipe: bourguignon, product: vin)
fondsVeau_bourguignon = Ingredient.create!(quantity: 0.015, recipe: bourguignon, product: fondsVeau)
pdtg_bourguignon = Ingredient.create!(quantity: 0.125, recipe: bourguignon, product: pdtg)
fleurSel_bourguignon = Ingredient.create!(quantity: 0.008, recipe: bourguignon, product: fleurSel)
# cote de boeuf = cdb
boeuf_cdb = Ingredient.create!(quantity: 1.070, recipe: cdb, product: coteAubrac)
pdt_cdb = Ingredient.create!(quantity: 0.500, recipe: cdb, product: pdtg)
beurre_cdb = Ingredient.create!(quantity: 0.020, recipe: cdb, product: beurre)
huileOlive_cdb = Ingredient.create!(quantity: 0.07, recipe: cdb, product: huileOlive)
salade_cdb = Ingredient.create!(quantity: 0.05, recipe: cdb, product: salade)
#rillettes de saumon = saumonR
saumon_saumonR = Ingredient.create!(quantity: 0.57143, recipe: saumonR, product: saumon)
noisette_saumonR = Ingredient.create!(quantity: 0.2143, recipe: saumonR, product: noisette)
citronConfit_saumonR = Ingredient.create!(quantity: 0.2143, recipe: saumonR, product: citronConfit)
fleurSel_saumonR = Ingredient.create!(quantity: 0.008, recipe: saumonR, product: fleurSel)
#falafel
poisChiches_falafel = Ingredient.create!(quantity: 0.45, recipe: falafel, product: poisChiches)
huileTournesol_falafel = Ingredient.create!(quantity: 0.0013, recipe: falafel, product: huileTournesol)
carotte_falafel = Ingredient.create!(quantity: 0.012, recipe: falafel, product: carotte)
persil_falafel = Ingredient.create!(quantity: 0.008, recipe: falafel, product: persil)
coriandre_falafel = Ingredient.create!(quantity: 0.006, recipe: falafel, product: coriandre )
cumin_falafel = Ingredient.create!(quantity: 0.004, recipe: falafel, product: cumin )
huileOlive_falafel = Ingredient.create!(quantity: 0.0012, recipe: falafel, product: huileOlive)
aubergine_falafel = Ingredient.create!(quantity: 0.160, recipe: falafel, product: aubergine )
ail_falafel = Ingredient.create!(quantity: 0.004, recipe: falafel, product: ail )
fleurSel_falafel = Ingredient.create!(quantity: 0.004, recipe: falafel, product: fleurSel )
citronVert_falafel = Ingredient.create!(quantity: 0.004, recipe: falafel, product: citronVert)
poivre_falafel = Ingredient.create!(quantity: 0.003, recipe: falafel, product: poivre)
# riz au lait = rizLait
riz_rizLait = Ingredient.create!(quantity: 0.1, recipe: rizLait, product: rizRond)
lait_rizLait = Ingredient.create!(quantity: 0.1, recipe: rizLait, product: lait)
sucre_rizLait = Ingredient.create!(quantity: 0.04, recipe: rizLait, product: sucre)
mures_rizLait = Ingredient.create!(quantity: 0.6666, recipe: rizLait, product: mure)
tonka_rizLait = Ingredient.create!(quantity: 0.01, recipe: rizLait, product: tonka)
p "ingredients created"
# suppliers :
c2b = Supplier.create!(name: "C2B" ,typology: "viandes", email: "c2b@gmail.com")
daybyday = Supplier.create!(name: "DaybyDay" ,typology: "épicerie en g" ,email: "daybyday@gmail.com" )
lenoble = Supplier.create!(name: "Lenoble" ,typology: "primeur",email: "lenoble@gmail.com" )
jayden = Supplier.create!(name: "Jayden" ,typology: "primeur",email: "jayden@gmail.com" )
superu = Supplier.create!(name: "Super U" ,typology: "GMS",email: "superu@gmail.com")
metro = Supplier.create!(name: "Metro" ,typology: "GMS",email: "metro@gmail.com" )
brasson = Supplier.create!(name: "Maison Brasson" ,typology: "épicerie spécialisée" ,email: "brasson@gmail.com" )
g20 = Supplier.create!(name: "G20" ,typology: "GMS",email: "g20@gmail.com")
chapoutier = Supplier.create!(name: "Chapoutier" ,typology: "vins & spiritueux" ,email: "chapoutier@gmail.com")
aksha = Supplier.create!(name: "Aksha" ,typology: "primeur" ,email: "aksha@gmail.com")
p "suppliers created"
# supplierItems :
cote_c2b = SupplierItem.create(price_per_product: 24.76, supplier: c2b, product: coteAubrac)
cote_metro = SupplierItem.create(price_per_product: 15.65, supplier: metro, product: coteAubrac)
boeufAubrac_c2b = SupplierItem.create(price_per_product: 10.11, supplier: c2b, product: boeufAubrac)
boeufAubrac_metro = SupplierItem.create(price_per_product: 9.11, supplier: metro, product: boeufAubrac)
oignon_lenoble = SupplierItem.create(price_per_product: 0.95, supplier: lenoble , product: oignon)
oignon_jayden = SupplierItem.create(price_per_product: 0.90, supplier: jayden , product: oignon)
carotte_jayden = SupplierItem.create(price_per_product: 1.40, supplier: jayden , product: carotte)
carotte_lenoble = SupplierItem.create(price_per_product: 1.27, supplier: lenoble, product: carotte)
carotte_metro = SupplierItem.create(price_per_product: 1.07, supplier: metro, product: carotte)
persil_jayden = SupplierItem.create(price_per_product: 9, supplier: jayden, product: persil)
persil_lenoble = SupplierItem.create(price_per_product: 9.3, supplier: lenoble, product: persil)
beurre_superu = SupplierItem.create(price_per_product: 11.70, supplier: superu, product: beurre)
fleurSel_metro = SupplierItem.create(price_per_product: 14.08, supplier: metro , product: fleurSel)
epices_daybyday = SupplierItem.create(price_per_product: 10, supplier: daybyday , product: epices)
thym_daybyday = SupplierItem.create(price_per_product: 11, supplier: daybyday , product: thym)
citronConfit_metro = SupplierItem.create(price_per_product: 3.20, supplier: metro , product: citronConfit)
farine_g20 = SupplierItem.create(price_per_product: 0.47, supplier: g20 , product: farine)
huileTournesol_metro = SupplierItem.create(price_per_product: 8, supplier: metro , product: huileTournesol)
huileOlive_metro = SupplierItem.create(price_per_product: 7, supplier: metro , product: huileOlive)
vin_chapoutier = SupplierItem.create(price_per_product: 15.11, supplier: chapoutier , product: vin)
fromageFrais_superu = SupplierItem.create(price_per_product: 9.03, supplier: superu , product: fromageFrais)
saumon_metro = SupplierItem.create(price_per_product: 16.99, supplier: metro , product: saumon)
fondsVeau_metro = SupplierItem.create(price_per_product: 19, supplier: metro , product: fondsVeau)
pdtg_jayden = SupplierItem.create(price_per_product: 1.76, supplier: jayden , product: pdtg)
pdtg_lenoble = SupplierItem.create(price_per_product: 1.86, supplier: lenoble , product: pdtg)
pdtg_metro = SupplierItem.create(price_per_product: 1.56, supplier: metro , product: pdtg)
sucre_metro = SupplierItem.create(price_per_product: 0.99, supplier: metro , product: sucre)
sucre_superu = SupplierItem.create(price_per_product: 1.03, supplier: superu , product: sucre)
salade_jayden = SupplierItem.create(price_per_product: 10.11, supplier: jayden , product: salade)
noisette_metro = SupplierItem.create(price_per_product: 11.79, supplier: metro , product: noisette)
tonka_metro = SupplierItem.create(price_per_product: 179, supplier: metro , product: tonka)
poisChiches_metro = SupplierItem.create(price_per_product: 5.10, supplier: metro , product: poisChiches)
coriandre_g20 = SupplierItem.create(price_per_product: 35, supplier: g20 , product: coriandre)
coriandre_superu = SupplierItem.create(price_per_product: 34.43, supplier: superu , product: coriandre)
poivre_metro = SupplierItem.create(price_per_product: 102.22, supplier: metro , product: poivre)
lait_g20 = SupplierItem.create(price_per_product: 1.14, supplier: g20 , product: lait)
cumin_metro = SupplierItem.create(price_per_product: 33.80, supplier: metro , product: cumin)
aubergine_metro = SupplierItem.create(price_per_product: 6, supplier: metro , product: aubergine)
ail_metro = SupplierItem.create(price_per_product: 4, supplier: metro , product: ail)
citronJaune_jayden = SupplierItem.create(price_per_product: 5.70, supplier: jayden , product: citronJaune)
citronVert_lenoble = SupplierItem.create(price_per_product: 4.10, supplier: lenoble , product: citronVert)
rizRond_metro = SupplierItem.create(price_per_product: 1.09, supplier: metro , product: rizRond)
mure_jayden = SupplierItem.create(price_per_product: 18.99, supplier: jayden , product: mure)
p "suppliers items created"
# restaurant_recipes :
bourguignon_restaurant_recipes = RestaurantRecipe.create(plate: 22, restaurant: restaurant, recipe: bourguignon)
cdb_restaurant_recipes = RestaurantRecipe.create(plate: 23, restaurant: restaurant, recipe: cdb)
saumonR_restaurant_recipes = RestaurantRecipe.create(plate: 13, restaurant: restaurant, recipe: saumonR)
falafel_restaurant_recipes = RestaurantRecipe.create(plate: 87, restaurant: restaurant, recipe: falafel)
rizLait_restaurant_recipes = RestaurantRecipe.create(plate: 31, restaurant: restaurant, recipe: rizLait)
p "restaurant recipes created"
# recipes_sales :
bourguignon_sales = RecipeSale.create(quantity: 75, restaurant: restaurant, recipe: bourguignon)
cdb_sales = RecipeSale.create(quantity: 80, restaurant: restaurant, recipe: cdb)
saumonR_sales = RecipeSale.create(quantity: 48, restaurant: restaurant, recipe: saumonR)
falafel_sales = RecipeSale.create(quantity: 197, restaurant: restaurant, recipe: falafel)
rizLait_sales = RecipeSale.create(quantity: 98, restaurant: restaurant, recipe: rizLait)
p "recipes sales created"
# ? inventory_items :
boeufAubrac_inv = InventoryItem.create(quantity: 4,restaurant: restaurant ,product: boeufAubrac)
coteAubrac_inv = InventoryItem.create(quantity: 6,restaurant: restaurant ,product: coteAubrac)
oignon_inv = InventoryItem.create(quantity: 2,restaurant: restaurant ,product: oignon)
carotte_inv = InventoryItem.create(quantity: 1,restaurant: restaurant ,product: carotte)
persil_inv = InventoryItem.create(quantity: 0.2,restaurant: restaurant ,product: persil)
epices_inv = InventoryItem.create(quantity: 0.3,restaurant: restaurant ,product: epices)
thym_inv = InventoryItem.create(quantity: 0.5,restaurant: restaurant ,product: thym)
huileTournesol_inv = InventoryItem.create(quantity: 4,restaurant: restaurant ,product: huileTournesol)
huileOlive_inv = InventoryItem.create(quantity: 3,restaurant: restaurant ,product: huileOlive)
farine_inv = InventoryItem.create(quantity: 6,restaurant: restaurant ,product: farine)
vin_inv = InventoryItem.create(quantity: 75,restaurant: restaurant ,product: vin)
fondsVeau_inv = InventoryItem.create(quantity: 4,restaurant: restaurant ,product: fondsVeau)
pdtg_inv = InventoryItem.create(quantity: 5,restaurant: restaurant ,product: pdtg)
beurre_inv = InventoryItem.create(quantity: 2,restaurant: restaurant ,product: beurre)
salade_inv = InventoryItem.create(quantity: 1.5,restaurant: restaurant ,product: salade)
fleurSel_inv = InventoryItem.create(quantity: 1.1,restaurant: restaurant ,product: fleurSel)
# saumon
saumon_inv = InventoryItem.create(quantity: 3,restaurant: restaurant ,product: saumon)
citronConfit_inv = InventoryItem.create(quantity: 0.4,restaurant: restaurant ,product: citronConfit)
noisette_inv = InventoryItem.create(quantity: 0.3,restaurant: restaurant ,product: noisette)
fromageFrais_inv = InventoryItem.create(quantity: 1.2,restaurant: restaurant ,product: fromageFrais)
citronJaune_inv = InventoryItem.create(quantity: 0.3,restaurant: restaurant ,product: citronJaune)
poivre = InventoryItem.create(quantity: 0.4,restaurant: restaurant ,product: poivre)
# falafel
poisChiches_inv = InventoryItem.create(quantity: 0.8,restaurant: restaurant ,product: poisChiches)
coriandre_inv = InventoryItem.create(quantity: 0.3,restaurant: restaurant ,product: coriandre)
cumin_inv = InventoryItem.create(quantity: 0.5,restaurant: restaurant ,product: cumin)
aubergine_inv = InventoryItem.create(quantity: 1.2,restaurant: restaurant ,product: aubergine)
ail_inv = InventoryItem.create(quantity: 0.9,restaurant: restaurant ,product: ail)
citronVert_inv = InventoryItem.create(quantity: 1,restaurant: restaurant ,product: citronVert)
# riz au lait
rizRond_inv = InventoryItem.create(quantity: 2.5,restaurant: restaurant ,product: rizRond)
lait_inv = InventoryItem.create(quantity: 4,restaurant: restaurant ,product: lait)
sucre_inv = InventoryItem.create(quantity: 2.5,restaurant: restaurant ,product: sucre)
mure_inv = InventoryItem.create(quantity: 0.6,restaurant: restaurant ,product: mure)
tonka_inv = InventoryItem.create(quantity: 0.2,restaurant: restaurant ,product: tonka)
p "inventory items created"
# ? orders :
order_delivered = Order.create(total: 638.05, order_number: "BC-72-2020-01" ,delivered: false, restaurant: restaurant, supplier: metro, validated: false)
order_waiting = Order.create(total: 431.54, order_number: "BC-73-2020-02" ,delivered: false, restaurant: restaurant, supplier: c2b, validated: false)
order_waiting_again = Order.create(total: 390.28, order_number: "BC-74-2020-02" ,delivered: true, restaurant: restaurant, supplier: metro, validated: true)
p "orders created"
boeufAubrac_order_item = OrderItem.create(quantity: 8, unit: 'kg', price: 195.76, completed: false, supplier_item: boeufAubrac_c2b, order: order_waiting)
coteAubrac_order_item = OrderItem.create(quantity: 6, unit: 'kg', price: 98.45, completed: false, supplier_item: cote_c2b, order: order_waiting)

# order_item
order_item_one = OrderItem.create(quantity: 1, unit: 'g', price: 1, completed: false, supplier_item: aubergine_metro, order: order_waiting_again)
order_item_two = OrderItem.create(quantity: 1, unit: 'g', price: 4, completed: false, supplier_item: fleurSel_metro, order: order_waiting_again)
order_item_thre = OrderItem.create(quantity: 1, unit: 'g', price: 1, completed: false, supplier_item: aubergine_metro, order: order_waiting)
order_item_four = OrderItem.create(quantity: 1, unit: 'g', price: 4, completed: false, supplier_item: fleurSel_metro, order: order_waiting)
p "order_items created"
