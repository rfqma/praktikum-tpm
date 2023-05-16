class FilmList {
  final List<Search>? search;
  final String? totalResults;
  final String? response;

  FilmList({
    this.search,
    this.totalResults,
    this.response,
  });

  FilmList.fromJson(Map<String, dynamic> json)
      : search = (json['Search'] as List?)?.map((dynamic e) => Search.fromJson(e as Map<String,dynamic>)).toList(),
        totalResults = json['totalResults'] as String?,
        response = json['Response'] as String?;

  Map<String, dynamic> toJson() => {
    'Search' : search?.map((e) => e.toJson()).toList(),
    'totalResults' : totalResults,
    'Response' : response
  };
}

class Search {
  final String? title;
  final String? year;
  final String? imdbID;
  final String? type;
  final String? poster;

  Search({
    this.title,
    this.year,
    this.imdbID,
    this.type,
    this.poster,
  });

  Search.fromJson(Map<String, dynamic> json)
      : title = json['Title'] as String?,
        year = json['Year'] as String?,
        imdbID = json['imdbID'] as String?,
        type = json['Type'] as String?,
        poster = json['Poster'] as String?;

  Map<String, dynamic> toJson() => {
    'Title' : title,
    'Year' : year,
    'imdbID' : imdbID,
    'Type' : type,
    'Poster' : poster
  };
}