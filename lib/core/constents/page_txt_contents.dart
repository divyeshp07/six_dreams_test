
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
  final txtprelable = 'enter text';
  final txtname = 'form Name';
  final txtemail = ' form Email';
  final txtemaillbl = 'hellow@gmail.com';
  final txtnamelabl = 'hello';
  final txttoogletxtfirst = 'Run Only once per Customer';
  final txttoogletxtsecnd = 'custom audience';
  final txtsavedraft = 'Save Draft';
  final txtnextStep = 'Next Step';

  // richtext const
  final txtheilightedFirstportion = "custom domain";
  final txtheilightedsecondportion = "connect your email service provider";
  final txtyoucansetup = "You can set up a ";
  final txtor = " or ";
  final txtcnagethis = " to change this.";
}

@riverpod
FormPageConstents pageConstents(Ref ref) {
  return FormPageConstents();
}
