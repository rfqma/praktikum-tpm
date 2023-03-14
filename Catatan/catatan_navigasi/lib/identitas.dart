class Identitas {
  String nama;
  String username;
  List<String> email;

  Identitas({
    required this.nama,
    required this.username,
    required this.email,
  });
}

var listIdentitas = [
  Identitas(
    nama: 'Elon Musk',
    username: 'elonmusk',
    email: [
      'elonmusk@gmail.com',
      'elonmusk@yahoo.com',
    ],
  ),
  Identitas(
    nama: 'Jeff Bezos',
    username: 'jeffbezos',
    email: [
      'jeffbezos@gmail.com',
      'jeffbezos@yahoo.com',
    ],
  ),
  Identitas(
    nama: 'Warren Buffet',
    username: 'warrenbuffet',
    email: [
      'warrenbuffet@gmail.com',
      'warrenbuffet@yahoo.com',
    ],
  ),
  Identitas(
    nama: 'Bill Gates',
    username: 'billgates',
    email: [
      'billgates@gmail.com',
      'billgates@yahoo.com',
    ],
  ),
  Identitas(
    nama: 'Michael Bloomberg',
    username: 'michaelbloomberg',
    email: [
      'michaelbloomberg@gmail.com',
      'michaelbloomberg@yahoo.com',
    ],
  ),
];