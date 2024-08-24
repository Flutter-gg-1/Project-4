class CustomerModel {
  int id;
  String fullName;
  String email;
  String password;
  List? address;
  List? paymentMethods;

  CustomerModel(
      {required this.id,
      required this.fullName,
      required this.email,
      required this.password,
      this.address,
      this.paymentMethods});
}
