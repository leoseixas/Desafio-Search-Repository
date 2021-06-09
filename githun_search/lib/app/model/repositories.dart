class Repositories {
  Repositories({this.title, this.urlRepository, this.description});

  String title;
  String urlRepository;
  String description;

  factory Repositories.fromJson(Map<String, dynamic> json) => Repositories(
        title: json['name'],
        urlRepository: json['html_url'],
        description: json['description'],
      );

  @override
  String toString() {
    return 'Repositories: {title, $title, urlRepository, $urlRepository, description, $description}';
  }
}
