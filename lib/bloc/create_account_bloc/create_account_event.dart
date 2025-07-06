abstract class CreateAccountEvent {}

class MobileNoChanged extends CreateAccountEvent { 
  MobileNoChanged({required this.mobileNo});
  
  final String mobileNo;
}

class Submitted extends CreateAccountEvent {}

class CreateAccountPageChanged extends CreateAccountEvent {
  final int pageIndex;
  CreateAccountPageChanged({required this.pageIndex});
}