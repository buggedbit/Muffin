package org.muffin.muffin.daos;

import lombok.NonNull;
import org.muffin.muffin.beans.Genre;
import org.muffin.muffin.beans.Movie;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface MovieDAO {
    public List<Movie> getByOwner(final int ownerId, final int offset, final int limit, final String pattern);

    public List<Movie> getByGenre(final int genreId);

    public Optional<Movie> get(final String name);

    public Optional<Movie> get(final int movieId);

    public List<Movie> search(final String substring, final int offset, final int limit);

    public Optional<Movie> create(final String name, final int durationInMinutes, final int ownerId);

    public Optional<Movie> update(final int movieId, final int ownerId, final String name, final int duration);

    public boolean updateGenre(final int movieId, final int ownerId, final int genre, final int flag);

    public boolean delete(final int movieId, int ownerId);

    public Optional<Float> getAverageRating(int movieId);

    public Optional<Integer> getReviewCount(int movieId);

    public Map<Integer, Integer> getRatingHistogram(int movieId);
}
