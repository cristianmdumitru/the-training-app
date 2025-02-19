abstract interface class ISerializableObject<T> {
  String get tableCreationQuery;

  T fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();
}
