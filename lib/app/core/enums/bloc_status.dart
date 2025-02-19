enum BlocStatus {
  idle,
  loading,
  success,
  error;

  bool get isIdle => this == idle;
  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isError => this == error;
}
