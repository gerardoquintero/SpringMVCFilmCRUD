package com.skilldistillery.film.data;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Component;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

@Component
public class FilmDaoJdbcImpl implements FilmDAO {

	@Override
	public Film findFilmById(int filmId) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Actor findActorById(int actorId) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Actor> findActorsByFilmId(int filmId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Film> findFilmByActorId(int filmId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findFilmLanguage(int filmLanguageId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Film> searchByFilmKeyword(String keyWord) {
		// TODO Auto-generated method stub
		return null;
	}

}
