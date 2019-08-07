#!/bin/bash

# This file converts static images named productN.png to a single product.gif.

# List all products
products='airtime amarante banana beef brochette cabbage candle carrots'
products+=' cassava_flour cassava_leaves cassava_root celery charcoal'
products+=' comm_beer cook_banana cook_oil detergent dress dry_beans echarpe'
products+=' egg fish garlic gitenge goat green_pea grnd_nut_flr ground_nut'
products+=' hair_dye imported_rice irish_potato leek maggi maize maize_flour'
products+=' mandarine mattress milk mineral_water nails onion pants_female'
products+=' pants_male pepper rabbit sandals sanitary_napkin shampoo soap'
products+=' softdrink sorghum sorghum_flour spaghetti string_bean sugar'
products+=' suitcase sweet_potato tea_local toilet_paper tomato tomato_concentrate'
products+=' toothpaste tshirt urea whole_chicken'

echo $products

# Loop trough products and create .gif
for p in $products
do
    convert -delay 100 -loop 0 $p*.png $p.gif
done

echo Done!