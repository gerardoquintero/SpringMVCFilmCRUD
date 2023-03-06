package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface FilmDAO {

	// finds films by film_id
	public Film findFilmById(int filmId);

	// finds actor by actor_id
	public Actor findActorById(int actorId);

	// finds actors by film_id
	public List<Actor> findActorsByFilmId(int filmId);

	// finds films by actors id
	public List<Film> findFilmByActorId(int filmId);

	// find language by language ID
	public String findFilmLanguage(int filmLanguageId);

	//
	public List<Film> searchByFilmKeyword(String keyWord);

	Film createFilm(Film film);

	boolean deleteFilm(int filmId);

	Film updateFilm(Film film);

	public String findCategory(int filmId);
}
