// trash file. never do this in prod xd

class SalonCardModel {
  final String salonName;
  final String professionalName;
  final double distance;
  final Map<String, int> services;
  final String bookingDate;
  final double price;
  final bool isUpcoming;

  SalonCardModel({
    required this.salonName,
    required this.professionalName,
    required this.distance,
    required this.services,
    required this.bookingDate,
    required this.price,
    this.isUpcoming = false,
  });
}

class BookingData {
  static final fakePastData = [
    SalonCardModel(
      salonName: "Luna's salon",
      professionalName: "Pary Siniclair",
      distance: 5.0,
      services: {
        "Basic Manicure": 1,
      },
      bookingDate: "8 Mar 2022",
      price: 30,
      isUpcoming: false,
    ),
    SalonCardModel(
      salonName: "Gallery Salon",
      professionalName: "Anna Smith",
      distance: 2.2,
      services: {
        "Basic Manicure": 1,
      },
      bookingDate: "12 May 2022",
      price: 65,
      isUpcoming: false,
    ),
    SalonCardModel(
      salonName: "Gallery Salon",
      professionalName: "Doe John",
      distance: 2.2,
      services: {"Acrylic Extensions": 1, "Gel Manicure": 2},
      bookingDate: "8 Sep 2022",
      price: 180,
      isUpcoming: false,
    ),
  ];

  static final fakeUpcomingData = [
    SalonCardModel(
      salonName: "Gallery Salon",
      professionalName: "Anna Smith",
      distance: 2.2,
      services: {"Gel Pedicure": 1},
      bookingDate: "31 Oct 2023",
      price: 55,
      isUpcoming: true,
    ),
    SalonCardModel(
      salonName: "Gallery Salon",
      professionalName: "Anna Smith",
      distance: 2.2,
      services: {"Acrylic Extensions": 1, "Gel Manicure": 2},
      bookingDate: "19 Oct 2023",
      price: 160,
      isUpcoming: true,
    ),
  ];
}