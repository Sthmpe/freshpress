class CreateAccountState {
  final String mobileNo;
  final bool isValid;
  final bool isLoading;
  final int currentPage;  // i dont no should this be a required field or not but i don think since it is only need in the page view

  CreateAccountState({
    this.mobileNo = '',
    this.isValid = false,
    this.isLoading = false,
    this.currentPage = 0
  });

  factory CreateAccountState.initial() {
    return CreateAccountState();
  }

  CreateAccountState copyWith({
    String? mobileNo,
    bool? isValid,
    bool? isLoading,
    int? currentPage,
  }) {
    return CreateAccountState(
      mobileNo: mobileNo ?? this.mobileNo,
      isValid: isValid ?? this.isValid,
      isLoading: isLoading ?? this.isLoading,
      currentPage: currentPage ?? this.currentPage,
    );
  }
}
