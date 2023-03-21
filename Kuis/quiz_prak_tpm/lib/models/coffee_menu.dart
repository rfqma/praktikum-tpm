class CoffeeMenu {
    String name;
    List<String> imageUrls;
    String description;
    String price;
    List<String> ingredients;
    String nutrition;
    String reviewAverage;
    String reviewCount;
    String linkStore;

    CoffeeMenu({
        required this.name,
        required this.imageUrls,
        required this.description,
        required this.price,
        required this.ingredients,
        required this.nutrition,
        required this.reviewAverage,
        required this.reviewCount,
        required this.linkStore,
    });
}

var coffeeList = [
    CoffeeMenu(
        name: 'Caffè Americano',
        imageUrls: [
            'https://globalassets.starbucks.com/assets/f12bc8af498d45ed92c5d6f1dac64062.jpg',
            'https://images.tokopedia.net/img/cache/500-square/product-1/2020/4/7/8232057/8232057_a24f80ad-593d-4a04-a798-3302f81e0edd_836_836.jpg',
            'https://awsimages.detik.net.id/community/media/visual/2020/10/05/iced-americano-4.jpeg?w=700&q=90',
        ],
        description: 'HOT: Rich, full-bodied espresso with hot water.',
        price: 'Rp20.000',
        ingredients: [
            'Water', 'Brewed Espresso'
        ],
        nutrition: '15 calories',
        reviewAverage: '88%',
        reviewCount: '6875',
        linkStore: 'https://www.starbucks.com/menu/product/406/hot',
    ),
    CoffeeMenu(
        name: 'Caffè Latte',
        imageUrls: [
            'https://globalassets.starbucks.com/assets/b635f407bbcd49e7b8dd9119ce33f76e.jpg',
            'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/9/002d7c0d-2fd0-4811-8564-756ec8fe4a88.jpg',
            'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/1/17/f5361bc1-266c-4f0b-9404-a564d448a48f.jpg',
        ],
        description: 'Rich, full-bodied espresso in steamed milk, lightly topped with foam. A caffè latte is simply a shot or two of bold, tasty espresso with fresh, sweet steamed milk over it.',
        price: 'Rp24.000',
        ingredients: [
            'Milk', 'Brewed Espresso'
        ],
        nutrition: '190 calories',
        reviewAverage: '89%',
        reviewCount: '8209',
        linkStore: 'https://www.starbucks.com/menu/product/407/hot',
    ),
    CoffeeMenu(
        name: 'Cappuccino',
        imageUrls: [
            'https://globalassets.starbucks.com/assets/5c515339667943ce84dc56effdf5fc1b.jpg',
            'https://awsimages.detik.net.id/community/media/visual/2022/08/26/nama-cappuccino-ternyata-terinspirasi-warna-jubah-biarawan-2.jpeg?w=1200',
            'https://cf.shopee.co.id/file/0e5183f497c1d2759332bb249e067d4e',
        ],
        description: 'Espresso with steamed milk, topped with a deep layer of foam.',
        price: 'Rp22.000',
        ingredients: [
            'Milk', 'Brewed Espresso'
        ],
        nutrition: '140 calories',
        reviewAverage: '92%',
        reviewCount: '2973',
        linkStore: 'https://www.starbucks.com/menu/product/409/hot',
    ),
    CoffeeMenu(
        name: 'Flat White',
        imageUrls: [
            'https://globalassets.starbucks.com/assets/fedee22e49724cd09fbcc7ee2e567377.jpg',
            'https://awsimages.detik.net.id/community/media/visual/2016/04/21/36d2313a-47c7-417f-962d-bb95087c0659.jpg?w=700&q=90',
            'https://static.republika.co.id/uploads/images/inpicture_slide/kopi-flat-white-starbucks-_150107161241-449.jpg',
        ],
        description: 'Expertly steamed milk poured over a double shot of our signature espresso and finished with a thin layer of velvety microfoam.',
        price: 'Rp24.000',
        ingredients: [
            'Milk', 'Brewed Espresso'
        ],
        nutrition: '140 calories',
        reviewAverage: '87%',
        reviewCount: '5763',
        linkStore: 'https://www.starbucks.com/menu/product/565/hot',
    ),
    CoffeeMenu(
        name: 'Caramel Macchiato',
        imageUrls: [
            'https://globalassets.starbucks.com/assets/58db701349cb48738069e8c912e2b3ac.jpg',
            'https://cf.shopee.co.id/file/33228878330eadd15c359fc96a9c04a1',
            'https://awsimages.detik.net.id/community/media/visual/2022/07/18/caramel-latte-vs-caramel-macchiato-1.jpeg?w=700&q=90',
        ],
        description: 'Espresso combined with vanilla-flavoured syrup, milk and caramel sauce over ice. A Starbucks classic, chilled for a classic summer’s day. To our signature espresso we add a creamy mix of vanilla syrup and cold milk poured over ice; it’s then topped with our proprietary buttery caramel sauce. Sweet!',
        price: 'Rp26.000',
        ingredients: [
            'Milk', 'Brewed Espresso', 'Vanilla Syrup', 'Caramel Sauce'
        ],
        nutrition: '250 calories',
        reviewAverage: '85%',
        reviewCount: '3748',
        linkStore: 'https://www.starbucks.com/menu/product/413/hot',
    ),
    CoffeeMenu(
        name: 'Caffè Mocha',
        imageUrls: [
            'https://globalassets.starbucks.com/assets/915736da018842e788147f7eab73db73.jpg',
            'https://upload.wikimedia.org/wikipedia/commons/7/7e/Mocha_coffee.jpg',
            'https://media-cdn.tripadvisor.com/media/photo-s/0e/f5/c3/39/cafe-mocha.jpg',
        ],
        description: 'Espresso with bittersweet mocha sauce and steamed milk, topped with sweetened whipped cream. Delightful.',
        price: 'Rp27.000',
        ingredients: [
            'Milk', 'Brewed Espresso', 'Mocha Sauce', 'Whipped Cream'
        ],
        nutrition: '370 calories',
        reviewAverage: '85%',
        reviewCount: '8943',
        linkStore: 'https://www.starbucks.com/menu/product/408/hot',
    ),
    CoffeeMenu(
        name: 'Vanilla Sweet Cream Cold Brew',
        imageUrls: [
            'https://globalassets.starbucks.com/assets/07951b9a7d7d47a2892dfa7a707fd318.jpg',
            'https://www.groundstobrew.com/wp-content/uploads/2021/02/vanilla-sweet-cream-cold-foam-recipe.jpg',
            'https://coffeeatthree.com/wp-content/uploads/vanilla-sweet-cream-cold-foam-recipe.jpg',
        ],
        description: 'Just before serving, our slow-steeped Cold Brew is topped with a delicate float of house-made vanilla sweet cream that cascades throughout the cup.',
        price: 'Rp27.000',
        ingredients: [
            'Ice', 'Brewed Coffee', 'Vanilla Sweet Cream', 'Vanilla Syrup'
        ],
        nutrition: '110 calories',
        reviewAverage: '90%',
        reviewCount: '8733',
        linkStore: 'https://www.starbucks.com/menu/product/2121859/iced',
    ),
    CoffeeMenu(
        name: 'Signature Chocolate',
        imageUrls: [
            'https://globalassets.starbucks.com/assets/677d276173ec4bc192c2b9a21776339f.jpg',
            'https://s1.bukalapak.com/img/12124452312/large/data.jpeg',
            'https://images.tokopedia.net/img/cache/500-square/product-1/2020/6/13/2571151/2571151_3f43f4e6-f7bf-4b3a-8e01-c56cb50a0e70_640_640.jpg',
        ],
        description: 'Chocolate and dairy milk, steamed together to create a hot chocolate fit for a chocaholic! Topped with whipped cream and dusted with cocoa.',
        price: 'Rp25.000',
        ingredients: [
            'Milk', 'Mocha Sauce', 'Whipped Cream' 
        ],
        nutrition: '370 calories',
        reviewAverage: '88%',
        reviewCount: '9873',
        linkStore: 'https://www.starbucks.com/menu/product/471/hot',
    ),
    CoffeeMenu(
        name: 'Chai Tea Latte',
        imageUrls: [
            'https://globalassets.starbucks.com/assets/2d52f16a22fb40ff898be1815ecc952e.jpg',
            'https://globalassets.starbucks.com/assets/98c8bafe1e2241f3ad02212eca2376e3.jpg',
            'https://yellowchilis.com/wp-content/uploads/2021/11/starbucks-chai-tea-latte.jpg',
        ],
        description: 'A less-sweet take on our beloved Classic Chai Tea Latte. Black tea-infused with cinnamon, clove and other warming spices-is steamed with milk and sweetened with liquid cane sugar.',
        price: 'Rp22.000',
        ingredients: [
            'Milk', 'Water', 'Chai Tea Concentrate'
        ],
        nutrition: '240 calories',
        reviewAverage: '90%',
        reviewCount: '8464',
        linkStore: 'https://www.starbucks.com/menu/product/466/hot',
    ),
    CoffeeMenu(
        name: 'Matcha Tea Latte',
        imageUrls: [
            'https://globalassets.starbucks.com/assets/8b1b6d808cca4787afd2b30cf8dd5676.jpg',
            'https://www.butteredsideupblog.com/wp-content/uploads/2022/07/Starbucks-Hot-Matcha-Green-Tea-Latte-Recipe-16-scaled.jpg',
            'https://res.cloudinary.com/hsxfx8igq/image/upload/t_4x3_recipe_image,f_auto/v1598051318/iced-matcha-latte-recipe_jkzbzg.jpg',
        ],
        description: 'Smooth and creamy matcha is lightly sweetened and served with steamed milk.',
        price: 'Rp26.000',
        ingredients: [
            'Milk', 'Matcha Tea Blend'
        ],
        nutrition: '240 calories',
        reviewAverage: '89%',
        reviewCount: '3428',
        linkStore: 'https://www.starbucks.com/menu/product/468/hot',
    )
];