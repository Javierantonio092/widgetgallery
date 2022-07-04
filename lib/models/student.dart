class Student {
  final String firstName, lastName, phone, email;
  final int gender;
  final String country;

  Student({
    required this.firstName,
    required this.lastName,
    required this.email,
    this.phone = '',
    this.gender = 0,
    this.country = '',
  });

  factory Student.empty() => Student(
      firstName: '',
      lastName: '',
      email: '',
      phone: '',
      gender: 0,
      country: '');
}
