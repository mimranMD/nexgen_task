
class MdTrip {
  MdTrip({
    this.id,
    this.bookingId,
    this.tripType,
    this.requestType,
    this.parcelType,
    this.parcelSenderName,
    this.parcelSenderMobile,
    this.parcelReceiverName,
    this.parcelReceiverMobile,
    this.poolId,
    this.poolType,
    this.seatsBooked,
    this.userChargeType,
    this.userRequestedTotal,
    this.userId,
    this.type,
    this.rideOption,
    this.broadcast,
    this.providerId,
    this.currentProviderId,
    this.serviceTypeId,
    this.rentalHours,
    this.status,
    this.invoiceEmail,
    this.outLeave,
    this.outReturn,
    this.day,
    this.cancelledBy,
    this.cancelReason,
    this.paymentMode,
    this.serviceRequired,
    this.paid,
    this.isTrack,
    this.distance,
    this.apiDistance,
    this.travelTime,
    this.sAddress,
    this.sLatitude,
    this.sLongitude,
    this.dAddress,
    this.otp,
    this.driverOtp,
    this.qrCode,
    this.bullseyeQrcode,
    this.qrVerified,
    this.dLatitude,
    this.trackDistance,
    this.trackLatitude,
    this.trackLongitude,
    this.dLongitude,
    this.assignedAt,
    this.scheduleAt,
    this.startedAt,
    this.finishedAt,
    this.isScheduled,
    this.userRated,
    this.providerRated,
    this.useWallet,
    this.surge,
    this.routeKey,
    this.geoFencingId,
    this.geoFencingDistance,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.geoTime,
    this.driverAcceptTime,
    this.driverReachedTime,
    this.arrivalEstimateTime,
    this.etaDiscount,
    this.payment,
    this.serviceType,
    this.provider,
    this.providerService,
    this.staticMap,
  });

  int? id;
  String? bookingId;
  String? tripType;
  String? requestType;
  dynamic parcelType;
  dynamic parcelSenderName;
  dynamic parcelSenderMobile;
  dynamic parcelReceiverName;
  dynamic parcelReceiverMobile;
  dynamic poolId;
  String? poolType;
  dynamic seatsBooked;
  String? userChargeType;
  dynamic userRequestedTotal;
  String? userId;
  String? type;
  String? rideOption;
  String? broadcast;
  String? providerId;
  String? currentProviderId;
  String? serviceTypeId;
  String? rentalHours;
  String? status;
  dynamic invoiceEmail;
  dynamic outLeave;
  dynamic outReturn;
  dynamic day;
  String? cancelledBy;
  dynamic cancelReason;
  String? paymentMode;
  String? serviceRequired;
  String? paid;
  String? isTrack;
  String? distance;
  String? apiDistance;
  String? travelTime;
  String? sAddress;
  String? sLatitude;
  String? sLongitude;
  String? dAddress;
  String? otp;
  String? driverOtp;
  String? qrCode;
  dynamic bullseyeQrcode;
  String? qrVerified;
  String? dLatitude;
  String? trackDistance;
  String? trackLatitude;
  String? trackLongitude;
  String? dLongitude;
  DateTime? assignedAt;
  dynamic scheduleAt;
  DateTime? startedAt;
  DateTime? finishedAt;
  String? isScheduled;
  String? userRated;
  String? providerRated;
  String? useWallet;
  String? surge;
  String? routeKey;
  String? geoFencingId;
  String? geoFencingDistance;
  dynamic deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? geoTime;
  String? driverAcceptTime;
  String? driverReachedTime;
  String? arrivalEstimateTime;
  String? etaDiscount;
  Payment? payment;
  ServiceType? serviceType;
  TripsProvider? provider;
  ProviderService? providerService;
  String? staticMap;

  factory MdTrip.fromJson(Map<String, dynamic> json) => MdTrip(
    id: json["id"],
    bookingId: json["booking_id"],
    tripType: json["trip_type"],
    requestType: json["request_type"],
    parcelType: json["parcel_type"],
    parcelSenderName: json["parcel_sender_name"],
    parcelSenderMobile: json["parcel_sender_mobile"],
    parcelReceiverName: json["parcel_receiver_name"],
    parcelReceiverMobile: json["parcel_receiver_mobile"],
    poolId: json["pool_id"],
    poolType: json["pool_type"],
    seatsBooked: json["seats_booked"],
    userChargeType: json["user_charge_type"],
    userRequestedTotal: json["user_requested_total"],
    userId: json["user_id"],
    type: json["type"],
    rideOption: json["ride_option"],
    broadcast: json["broadcast"],
    providerId: json["provider_id"],
    currentProviderId: json["current_provider_id"],
    serviceTypeId: json["service_type_id"],
    rentalHours: json["rental_hours"],
    status: json["status"],
    invoiceEmail: json["invoice_email"],
    outLeave: json["out_leave"],
    outReturn: json["out_return"],
    day: json["day"],
    cancelledBy: json["cancelled_by"],
    cancelReason: json["cancel_reason"],
    paymentMode: json["payment_mode"],
    serviceRequired: json["service_required"],
    paid: json["paid"],
    isTrack: json["is_track"],
    distance: json["distance"],
    apiDistance: json["api_distance"],
    travelTime: json["travel_time"],
    sAddress: json["s_address"],
    sLatitude: json["s_latitude"],
    sLongitude: json["s_longitude"],
    dAddress: json["d_address"],
    otp: json["otp"],
    driverOtp: json["driver_otp"],
    qrCode: json["qr_code"],
    bullseyeQrcode: json["bullseye_qrcode"],
    qrVerified: json["qr_verified"],
    dLatitude: json["d_latitude"],
    trackDistance: json["track_distance"],
    trackLatitude: json["track_latitude"],
    trackLongitude: json["track_longitude"],
    dLongitude: json["d_longitude"],
    assignedAt: json["assigned_at"] == null ? null : DateTime.parse(json["assigned_at"]),
    scheduleAt: json["schedule_at"],
    startedAt: json["started_at"] == null ? null : DateTime.parse(json["started_at"]),
    finishedAt: json["finished_at"] == null ? null : DateTime.parse(json["finished_at"]),
    isScheduled: json["is_scheduled"],
    userRated: json["user_rated"],
    providerRated: json["provider_rated"],
    useWallet: json["use_wallet"],
    surge: json["surge"],
    routeKey: json["route_key"],
    geoFencingId: json["geo_fencing_id"],
    geoFencingDistance: json["geo_fencing_distance"],
    deletedAt: json["deleted_at"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    geoTime: json["geo_time"],
    driverAcceptTime: json["driver_accept_time"],
    driverReachedTime: json["driver_reached_time"],
    arrivalEstimateTime: json["arrival_estimate_time"],
    etaDiscount: json["eta_discount"],
    payment: json["payment"] == null ? null : Payment.fromJson(json["payment"]),
    serviceType: json["service_type"] == null ? null : ServiceType.fromJson(json["service_type"]),
    provider: json["provider"] == null ? null : TripsProvider.fromJson(json["provider"]),
    providerService: json["provider_service"] == null ? null : ProviderService.fromJson(json["provider_service"]),
    staticMap: json["static_map"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "booking_id": bookingId,
    "trip_type": tripType,
    "request_type": requestType,
    "parcel_type": parcelType,
    "parcel_sender_name": parcelSenderName,
    "parcel_sender_mobile": parcelSenderMobile,
    "parcel_receiver_name": parcelReceiverName,
    "parcel_receiver_mobile": parcelReceiverMobile,
    "pool_id": poolId,
    "pool_type": poolType,
    "seats_booked": seatsBooked,
    "user_charge_type": userChargeType,
    "user_requested_total": userRequestedTotal,
    "user_id": userId,
    "type": type,
    "ride_option": rideOption,
    "broadcast": broadcast,
    "provider_id": providerId,
    "current_provider_id": currentProviderId,
    "service_type_id": serviceTypeId,
    "rental_hours": rentalHours,
    "status": status,
    "invoice_email": invoiceEmail,
    "out_leave": outLeave,
    "out_return": outReturn,
    "day": day,
    "cancelled_by": cancelledBy,
    "cancel_reason": cancelReason,
    "payment_mode": paymentMode,
    "service_required": serviceRequired,
    "paid": paid,
    "is_track": isTrack,
    "distance": distance,
    "api_distance": apiDistance,
    "travel_time": travelTime,
    "s_address": sAddress,
    "s_latitude": sLatitude,
    "s_longitude": sLongitude,
    "d_address": dAddress,
    "otp": otp,
    "driver_otp": driverOtp,
    "qr_code": qrCode,
    "bullseye_qrcode": bullseyeQrcode,
    "qr_verified": qrVerified,
    "d_latitude": dLatitude,
    "track_distance": trackDistance,
    "track_latitude": trackLatitude,
    "track_longitude": trackLongitude,
    "d_longitude": dLongitude,
    "assigned_at": assignedAt == null ? null : assignedAt?.toIso8601String(),
    "schedule_at": scheduleAt,
    "started_at": startedAt == null ? null : startedAt?.toIso8601String(),
    "finished_at": finishedAt == null ? null : finishedAt?.toIso8601String(),
    "is_scheduled": isScheduled,
    "user_rated": userRated,
    "provider_rated": providerRated,
    "use_wallet": useWallet,
    "surge": surge,
    "route_key": routeKey,
    "geo_fencing_id": geoFencingId,
    "geo_fencing_distance": geoFencingDistance,
    "deleted_at": deletedAt,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "geo_time": geoTime,
    "driver_accept_time": driverAcceptTime,
    "driver_reached_time": driverReachedTime,
    "arrival_estimate_time": arrivalEstimateTime,
    "eta_discount": etaDiscount,

    "payment": payment == null ? null : payment?.toJson(),
    "service_type": serviceType == null ? null : serviceType?.toJson(),
    "provider": provider == null ? null : provider?.toJson(),
    "provider_service": providerService == null ? null : providerService?.toJson(),
    "static_map": staticMap,
  };
}

class Payment {
  Payment({
    this.id,
    this.requestId,
    this.promocodeId,
    this.paymentId,
    this.paymentMode,
    this.peakPrice,
    this.driverBeta,
    this.fixed,
    this.distance,
    this.minute,
    this.nonGeoFencingMinute,
    this.geoFencingMinute,
    this.commision,
    this.discount,
    this.tax,
    this.wallet,
    this.surge,
    this.noneGeoFencingTotal,
    this.geoFencingTotal,
    this.nonGeoPrice,
    this.returnTravelFare,
    this.total,
    this.payable,
    this.nightFare,
    this.percentage,
    this.providerCommission,
    this.providerPay,
    this.etaDiscount,
  });

  int? id;
  String? requestId;
  dynamic promocodeId;
  dynamic paymentId;
  dynamic paymentMode;
  String? peakPrice;
  String? driverBeta;
  String? fixed;
  String? distance;
  String? minute;
  String? nonGeoFencingMinute;
  String? geoFencingMinute;
  String? commision;
  String? discount;
  String? tax;
  String? wallet;
  String? surge;
  String? noneGeoFencingTotal;
  String? geoFencingTotal;
  String? nonGeoPrice;
  String? returnTravelFare;
  String? total;
  String? payable;
  String? nightFare;
  String? percentage;
  String? providerCommission;
  String? providerPay;
  String? etaDiscount;

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
    id: json["id"],
    requestId: json["request_id"],
    promocodeId: json["promocode_id"],
    paymentId: json["payment_id"],
    paymentMode: json["payment_mode"],
    peakPrice: json["peak_price"],
    driverBeta: json["driver_beta"],
    fixed: json["fixed"],
    distance: json["distance"],
    minute: json["minute"],
    nonGeoFencingMinute: json["non_geo_fencing_minute"],
    geoFencingMinute: json["geo_fencing_minute"],
    commision: json["commision"],
    discount: json["discount"],
    tax: json["tax"],
    wallet: json["wallet"],
    surge: json["surge"],
    noneGeoFencingTotal: json["none_geo_fencing_total"],
    geoFencingTotal: json["geo_fencing_total"],
    nonGeoPrice: json["non_geo_price"],
    returnTravelFare: json["return_travel_fare"],
    total: json["total"],
    payable: json["payable"],
    nightFare: json["night_fare"],
    percentage: json["percentage"],
    providerCommission: json["provider_commission"],
    providerPay: json["provider_pay"],
    etaDiscount: json["eta_discount"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "request_id": requestId,
    "promocode_id": promocodeId,
    "payment_id": paymentId,
    "payment_mode": paymentMode,
    "peak_price": peakPrice,
    "driver_beta": driverBeta,
    "fixed": fixed,
    "distance": distance,
    "minute": minute,
    "non_geo_fencing_minute": nonGeoFencingMinute,
    "geo_fencing_minute": geoFencingMinute,
    "commision": commision,
    "discount": discount,
    "tax": tax,
    "wallet": wallet,
    "surge": surge,
    "none_geo_fencing_total": noneGeoFencingTotal,
    "geo_fencing_total": geoFencingTotal,
    "non_geo_price": nonGeoPrice,
    "return_travel_fare": returnTravelFare,
    "total": total,
    "payable": payable,
    "night_fare": nightFare,
    "percentage": percentage,
    "provider_commission": providerCommission,
    "provider_pay": providerPay,
    "eta_discount": etaDiscount,
  };
}

class TripsProvider {
  TripsProvider({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.deviceToken,
    this.deviceId,
    this.gender,
    this.mobile,
    this.countryCode,
    this.ssnNumber,
    this.dobDay,
    this.dobMonth,
    this.dobYear,
    this.documentBack,
    this.documentFront,
    this.city,
    this.country,
    this.province,
    this.zipCode,
    this.connectId,
    this.address,
    this.password,
    this.avatar,
    this.walletBalance,
    this.stripeCustId,
    this.rating,
    this.status,
    this.fleet,
    this.latitude,
    this.longitude,
    this.locationUpdatedAt,
    this.tripType,
    this.otp,
    this.otpSentAt,
    this.otpVerifiedAt,
    this.rememberToken,
    this.createdAt,
    this.updatedAt,
    this.loginBy,
    this.socialUniqueId,
    this.emergencyContact1,
    this.emergencyEmail,
    this.emergencyContact2,
    this.deletedAt,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? email;
  dynamic deviceToken;
  String? deviceId;
  String? gender;
  String? mobile;
  String? countryCode;
  dynamic ssnNumber;
  dynamic dobDay;
  dynamic dobMonth;
  dynamic dobYear;
  dynamic documentBack;
  dynamic documentFront;
  dynamic city;
  dynamic country;
  dynamic province;
  dynamic zipCode;
  dynamic connectId;
  dynamic address;
  String? password;
  String? avatar;
  String? walletBalance;
  dynamic stripeCustId;
  String? rating;
  String? status;
  String? fleet;
  String? latitude;
  String? longitude;
  DateTime? locationUpdatedAt;
  String? tripType;
  dynamic otp;
  dynamic otpSentAt;
  dynamic otpVerifiedAt;
  dynamic rememberToken;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? loginBy;
  dynamic socialUniqueId;
  String? emergencyContact1;
  String? emergencyEmail;
  dynamic emergencyContact2;
  dynamic deletedAt;

  factory TripsProvider.fromJson(Map<String, dynamic> json) => TripsProvider(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    deviceToken: json["device_token"],
    deviceId: json["device_id"],
    gender: json["gender"],
    mobile: json["mobile"],
    countryCode: json["country_code"],
    ssnNumber: json["ssn_number"],
    dobDay: json["dob_day"],
    dobMonth: json["dob_month"],
    dobYear: json["dob_year"],
    documentBack: json["document_back"],
    documentFront: json["document_front"],
    city: json["city"],
    country: json["country"],
    province: json["province"],
    zipCode: json["zip_code"],
    connectId: json["connect_id"],
    address: json["address"],
    password: json["password"],
    avatar: json["avatar"],
    walletBalance: json["wallet_balance"],
    stripeCustId: json["stripe_cust_id"],
    rating: json["rating"],
    status: json["status"],
    fleet: json["fleet"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    locationUpdatedAt: json["location_updated_at"] == null ? null : DateTime.parse(json["location_updated_at"]),
    tripType: json["trip_type"],
    otp: json["otp"],
    otpSentAt: json["otp_sent_at"],
    otpVerifiedAt: json["otp_verified_at"],
    rememberToken: json["remember_token"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    loginBy: json["login_by"],
    socialUniqueId: json["social_unique_id"],
    emergencyContact1: json["emergency_contact1"],
    emergencyEmail: json["emergency_email"],
    emergencyContact2: json["emergency_contact2"],
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "device_token": deviceToken,
    "device_id": deviceId,
    "gender": gender,
    "mobile": mobile,
    "country_code": countryCode,
    "ssn_number": ssnNumber,
    "dob_day": dobDay,
    "dob_month": dobMonth,
    "dob_year": dobYear,
    "document_back": documentBack,
    "document_front": documentFront,
    "city": city,
    "country": country,
    "province": province,
    "zip_code": zipCode,
    "connect_id": connectId,
    "address": address,
    "password": password,
    "avatar": avatar,
    "wallet_balance": walletBalance,
    "stripe_cust_id": stripeCustId,
    "rating": rating,
    "status": status,
    "fleet": fleet,
    "latitude": latitude,
    "longitude": longitude,
    "location_updated_at": locationUpdatedAt == null ? null : locationUpdatedAt?.toIso8601String(),
    "trip_type": tripType,
    "otp": otp,
    "otp_sent_at": otpSentAt,
    "otp_verified_at": otpVerifiedAt,
    "remember_token": rememberToken,
    "created_at": createdAt == null ? null : createdAt?.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
    "login_by": loginBy,
    "social_unique_id": socialUniqueId,
    "emergency_contact1": emergencyContact1,
    "emergency_email": emergencyEmail,
    "emergency_contact2": emergencyContact2,
    "deleted_at": deletedAt,
  };
}

class ProviderService {
  ProviderService({
    this.id,
    this.providerId,
    this.serviceTypeId,
    this.serviceNumber,
    this.serviceModel,
    this.status,
  });

  int? id;
  String? providerId;
  String? serviceTypeId;
  String? serviceNumber;
  String? serviceModel;
  String? status;

  factory ProviderService.fromJson(Map<String, dynamic> json) => ProviderService(
    id: json["id"],
    providerId: json["provider_id"],
    serviceTypeId: json["service_type_id"],
    serviceNumber: json["service_number"],
    serviceModel: json["service_model"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "provider_id": providerId,
    "service_type_id": serviceTypeId,
    "service_number": serviceNumber,
    "service_model": serviceModel,
    "status": status,
  };
}

class ServiceType {
  ServiceType({
    this.id,
    this.name,
    this.isTruck,
    this.maxWeight,
    this.perHelperCost,
    this.deliveryService,
    this.providerName,
    this.image,
    this.capacity,
    this.fixed,
    this.price,
    this.poolKmPrice,
    this.nightFare,
    this.minute,
    this.peakTime11Pm6Am,
    this.peakTime5Pm9Pm,
    this.peakTime8Am11Am,
    this.outstationKm,
    this.roundtripKm,
    this.rentalFare,
    this.rentalKmPrice,
    this.rentalHourPrice,
    this.outstationDriver,
    this.hour,
    this.distance,
    this.betweenKm,
    this.calculator,
    this.description,
    this.status,
  });

  int? id;
  String? name;
  String? isTruck;
  String? maxWeight;
  String? perHelperCost;
  String? deliveryService;
  String? providerName;
  String? image;
  String? capacity;
  String? fixed;
  String? price;
  String? poolKmPrice;
  String? nightFare;
  String? minute;
  String? peakTime11Pm6Am;
  String? peakTime5Pm9Pm;
  String? peakTime8Am11Am;
  String? outstationKm;
  String? roundtripKm;
  String? rentalFare;
  String? rentalKmPrice;
  String? rentalHourPrice;
  String? outstationDriver;
  String? hour;
  String? distance;
  String? betweenKm;
  String? calculator;
  dynamic description;
  String? status;

  factory ServiceType.fromJson(Map<String, dynamic> json) => ServiceType(
    id: json["id"],
    name: json["name"],
    isTruck: json["is_truck"],
    maxWeight: json["max_weight"],
    perHelperCost: json["per_helper_cost"],
    deliveryService: json["delivery_service"],
    providerName: json["provider_name"],
    image: json["image"],
    capacity: json["capacity"],
    fixed: json["fixed"],
    price: json["price"],
    poolKmPrice: json["pool_km_price"],
    nightFare: json["night_fare"],
    minute: json["minute"],
    peakTime11Pm6Am: json["peak_time_11pm_6am"],
    peakTime5Pm9Pm: json["peak_time_5pm_9pm"],
    peakTime8Am11Am: json["peak_time_8am_11am"],
    outstationKm: json["outstation_km"],
    roundtripKm: json["roundtrip_km"],
    rentalFare: json["rental_fare"],
    rentalKmPrice: json["rental_km_price"],
    rentalHourPrice: json["rental_hour_price"],
    outstationDriver: json["outstation_driver"],
    hour: json["hour"],
    distance: json["distance"],
    betweenKm: json["between_km"],
    calculator: json["calculator"],
    description: json["description"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "is_truck": isTruck,
    "max_weight": maxWeight,
    "per_helper_cost": perHelperCost,
    "delivery_service": deliveryService,
    "provider_name": providerName,
    "image": image,
    "capacity": capacity,
    "fixed": fixed,
    "price": price,
    "pool_km_price": poolKmPrice,
    "night_fare": nightFare,
    "minute": minute,
    "peak_time_11pm_6am": peakTime11Pm6Am,
    "peak_time_5pm_9pm": peakTime5Pm9Pm,
    "peak_time_8am_11am": peakTime8Am11Am,
    "outstation_km": outstationKm,
    "roundtrip_km": roundtripKm,
    "rental_fare": rentalFare,
    "rental_km_price": rentalKmPrice,
    "rental_hour_price": rentalHourPrice,
    "outstation_driver": outstationDriver,
    "hour": hour,
    "distance": distance,
    "between_km": betweenKm,
    "calculator": calculator,
    "description": description,
    "status": status,
  };
}
