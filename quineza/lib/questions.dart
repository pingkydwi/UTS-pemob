class Question {
  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });
}

final List<Question> questionList = [
  Question(
    questionText: 'Ada berapa jurusan/prodi pada fakultas Vokasi Unesa saat ini?',
    options: ['6', '7', '8', '9'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Siapakah Ketua Prodi dari Manajemen Informatika?',
    options: ['Bpk. I Gde Agung Sri Sidhimantra', 'Bpk. Arief Budiono', 'Bpk. Dodik Arwin Dermawan', 'Bpk. Moch Deny Pratama'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Fakultas Vokasi berada di kampus Unesa mana?',
    options: ['Lidah Wetan', 'Magetan', 'Ketintang', 'Nganjuk'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Tahun berapa prodi D4 Manajemen Informatika menjadi bagian dari fakultas Vokasi Unesa?',
    options: ['2019', '2020', '2021', '2022'],
    correctAnswerIndex: 2,
  ),
  Question(
    questionText: 'Siapakah tokoh terkenal Unesa yang akrab dipanggil dengan panggilan "Cak Hasan"?',
    options: ['Rektor Unesa', 'Satpam Fakultas Vokasi', 'Dekan Fakultas Teknik', 'Wakil Dekan II Fakultas Ilmu Pendidikan'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Apa warna dari bendera fakultas Fokasi?',
    options: ['Merah', 'Hijau', 'Biru', 'Oranye'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'Ada berapa jumlah matakuliah yang diampu oleh Bpk. I Gde Agung Sri Sidhimantra?',
    options: ['32', '41', '29', '43'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'Ada berapa kelas untuk prodi Manajemen Informatika angkatan 2023?',
    options: ['6', '5', '4', '3'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Ada berapa banyak dosen di Unesa untuk saat ini?',
    options: ['1459', '1621', '1590', '1593'],
    correctAnswerIndex: 3,
  ),
  Question(
    questionText: 'Tanggal berapa Unesa didirikan?',
    options: ['21 Juni 1967', '19 Desember 1964', '14 April 1968', '20 Agustus 1965'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Apakah IKIP memiliki sangkut paut dengan Unesa?',
    options: ['Benar', 'Salah'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Apakah Kampus utama sekaligus gedung rektorat Unesa berada di kampus Magetan?',
    options: ['Benar', 'Salah'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Saat ini unesa telah memiliki lebih dari 60000 mahasiswa aktif',
    options: ['Benar', 'Salah'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Jas almamater kebanggaan mahasiswa Unesa berwarna Ungu?',
    options: ['Benar', 'Salah'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Apakah benar saat ini Unesa memiliki 12 Fakultas?',
    options: ['Benar', 'Salah'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Sampai saat ini Unesa belum juga mempunyai Fakultas Kedokteran?',
    options: ['Benar', 'Salah'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Selain menjabat sebagai Kaprodi Manajemen Informatika Bpk. Dodik Arwin Dermawan juga mengampu matakuliah di prodi MI?',
    options: ['Benar', 'Salah'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Apakah prodi Manajemen Informatika termasuk prodi dengan Akrediatasi A?',
    options: ['Benar', 'Salah'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Fakultas Ilmu Pendidikan adalah fakultas yang paling diminati banyak orang dari seluruh fakultas yang ada di Unesa',
    options: ['Benar', 'Salah'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Kampus Magetan adalah kampus Unesa yang paling lama dan paling tua',
    options: ['Benar', 'Salah'],
    correctAnswerIndex: 1,
  ),
];
