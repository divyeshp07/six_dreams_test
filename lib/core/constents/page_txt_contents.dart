
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_txt_contents.g.dart';
class FormPageConstents {
  final johndiotxt = "John Dio";
  final myprofiletxt = "My Profile";
  final fromTxt = 'From';
  final totxt = 'To';
  final quickstatetxy =  "Quick Stats";
  final copyreflink= "Copy Refer Link";
  final cusomer = 'customers';
  final customervalue = '124435';
  final money = ' fmoney';
  final moneyvalue = '345278';
  final joindusers = 'Joined Users';
  final today = 'Today ';
  final txttoogletxtsecnd = 'custom audience';
  final txtsavedraft = 'Save Draft';
  final txtnextStep = 'Next Step';

  // richtext const
  final txtheilightedFirstportion = "custom domain";
  final txtheilightedsecondportion = "connect your email service provider";
  final txtyoucansetup = "You can set up a ";
  final txtor = " or ";
  final txtcnagethis = " to change this.";

  // user profile image
  final userprofileimg='assets/images/Max-R_Headshot (1).jpg';
}

@riverpod
FormPageConstents pageConstents(Ref ref) {
  return FormPageConstents();
}
