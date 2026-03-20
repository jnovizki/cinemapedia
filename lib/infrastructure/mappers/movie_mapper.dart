import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/movieDb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDbToEntity(MovieMovieDb movieDb) => Movie(
    adult: movieDb.adult,
    backdropPath: (movieDb.backdropPath != '')
        ? "https://image.tmdb.org/t/p/w500/${movieDb.backdropPath}"
        : 'https://media.gettyimages.com/id/1252349524/es/vector/efectos-de-dibujos-animados.jpg?s=612x612&w=0&k=20&c=f-c0RrA4iObDiuZ9nIpwMTHTr_nD2PHQ9BoMI_8TfQo=',
    genreIds: movieDb.genreIds.map((e) => e.toString()).toList(),
    id: movieDb.id,
    originalLanguage: movieDb.originalLanguage,
    originalTitle: movieDb.originalTitle,
    overview: movieDb.overview,
    popularity: movieDb.popularity,
    posterPath: (movieDb.posterPath != '') ? "https://image.tmdb.org/t/p/w500/${movieDb.posterPath}" : 'No poster',
    releaseDate: movieDb.releaseDate,
    title: movieDb.title,
    video: movieDb.video,
    voteAverage: movieDb.voteAverage,
    voteCount: movieDb.voteCount,
  );
}
