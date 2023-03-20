class Identity {
  String name;
  String username;
  String fotoUrls;
  List<String> email;
  List<List<String>> company;

  Identity({
    required this.name,
    required this.fotoUrls,
    required this.username,
    required this.email,
    required this.company,
  });
}

var listIdentity = [
  Identity(
    name: 'Elon Musk',
    fotoUrls:
    'https://media.suara.com/pictures/970x544/2022/05/09/48179-elon-musk.jpg',
    username: 'elonmusk',
    email: [
      'elonmusk@gmail.com',
      'elonmusk@yahoo.com',
    ],
    company: [
      [
        'SpaceX',
        'spacecraft manufacturer, launcher, and a satellite communications corporation',
      ],
      [
        'Tesla',
        'manufactures electric vehicles (electric cars and trucks)',
      ],
    ],
  ),
  Identity(
    name: 'Jeff Bezos',
    fotoUrls:
    'https://asset.kompas.com/crops/Nzd8Wg_VyGH8dM9CI4J1fqIupco=/0x0:3159x2106/750x500/data/photo/2021/05/02/608eb6854cbba.jpg',
    username: 'jeffbezos',
    email: [
      'jeffbezos@gmail.com',
      'jeffbezos@yahoo.com',
    ],
    company: [
      [
        'Amazon',
        'multinational technology company focusing on e-commerce',
      ],
      [
        'Bezos Expeditions',
        'investment firm',
      ],
    ],
  ),
  Identity(
    name: 'Warren Buffet',
    fotoUrls:
    'http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSrx0_1wW6kGpqy5trTntG_OZEtdjbPApgwYM-Go_1Qb1gzw7_BT5lE999mfOpzw0rO',
    username: 'warrenbuffet',
    email: [
      'warrenbuffet@gmail.com',
      'warrenbuffet@yahoo.com',
    ],
    company: [
      [
        'Chevron',
        'oil company',
      ],
      [
        'American Express',
        'financial services corporation specialized in payment cards',
      ],
    ],
  ),
  Identity(
    name: 'Bill Gates',
    fotoUrls:
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Bill_Gates_2017_%28cropped%29.jpg/330px-Bill_Gates_2017_%28cropped%29.jpg',
    username: 'billgates',
    email: [
      'billgates@gmail.com',
      'billgates@yahoo.com',
    ],
    company: [
      [
        'Microsoft',
        'technology corporation',
      ],
    ],
  ),
  Identity(
    name: 'Michael Bloomberg',
    fotoUrls:
    'https://static01.nyt.com/images/2020/02/26/opinion/26Blow/merlin_169183047_302517ca-2f53-4543-b733-3ac18bdcaa1d-mediumSquareAt3X.jpg',
    username: 'michaelbloomberg',
    email: [
      'michaelbloomberg@gmail.com',
      'michaelbloomberg@yahoo.com',
    ],
    company: [
      [
        'Bloomberg Radio',
        'global business news',
      ],
      [
        'Bloomberg Businessweek',
        'weekly business magazine',
      ],
    ],
  ),
];
