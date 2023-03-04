package com.skilldistillery.film.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

@Component
public class FilmDaoJdbcImpl implements FilmDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/sdvid?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=US/Mountain";
	private static final String user = "student";
	private static final String pass = "student";
	
	static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.err.println(e);
        }
	}

	@Override
	public Film findFilmById(int filmId) {
		Film film = null;
//		List<Actor> cast = findActorsByFilmId(filmId);
		List<Actor> cast = new ArrayList<>();

		try {
			Connection conn = DriverManager.getConnection(URL, user, pass);
			String sql = "select * from film " + "join language "
					+ "on film.language_id = language.id where film.id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, filmId);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("film.id");
				String title = rs.getString("film.title");
				String description = rs.getString("film.description");
				Integer releaseYear = rs.getInt("film.release_year");
				int languageId = rs.getInt("film.language_id");
				int length = rs.getInt("film.length");
				double replacementCost = rs.getDouble("film.replacement_cost");
				String rating = rs.getString("film.rating");
				String specialFeatures = rs.getString("film.special_features");
				String name = rs.getString("language.name");

				film = new Film(id, title, description, releaseYear, languageId, length, replacementCost, rating,
						specialFeatures, cast, name);
			}

			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return film;
	}

	@Override
	public Actor findActorById(int actorId) {
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

	@Override
	public Film createFilm(Film film) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteFilm(int filmId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Film updateFilm(int filmId, Film film) {
		// TODO Auto-generated method stub
		return null;
	}

}
