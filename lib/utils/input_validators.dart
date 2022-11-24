

/// ~|||||||||validations||||||||||||~ \\\\

///email validator
String? emailValidator(String? value) {
  if (value!.trim().isNotEmpty) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (emailValid) {
      return null;
    } else {
      return "email_is_not_valid";
    }
  } else {
    return "email_is_required";
  }
}

///phone validator
String? phoneValidation(String? value) {
  if (value!.trim().isNotEmpty) {
    String pattern = r'(^(?:[+0]9)?[0-9]{11,12}$)';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'phone_is_not_valid';
    }else{
      return null;
    }
  } else {
    return "phone_is_required";
  }
}

///other fields validator
String? fieldsValidator(String? value) {
  if (value!.trim().isNotEmpty) {
    return null;
  } else {
    return "field_is_required";
  }
}

///other fields validator
String? passValidator(String? value) {
  if (value!.trim().isNotEmpty && value.trim().length >= 6) {
    return null;
  } else if (value.trim().isEmpty) {
    return "field_is_required";
  } else if (value.trim().length < 6) {
    return "password_length";
  } else {
    return "field_is_required";
  }
}

///other fields validator
String? priceValidator(String? value) {
  if (value!.trim().isNotEmpty) {
    if ((double.parse(value.toString()) > 0.0)) {
      return null;
    } else {
      return "price_validation";
    }
  } else {
    return "field_is_required";
  }
}
