package com.skilldistillery.film.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	@Autowired
	private FilmDAO filmDao;

	@RequestMapping(path = { "/", "home.do" })
	public String goHome(Model model) {
		Film TEST = filmDao.findFilmById(1);// DEBUG
		model.addAttribute("TESTFILM", TEST);
		return "home";

	}

	@RequestMapping(path = "addNewFilm.do", method = RequestMethod.GET)
	public ModelAndView createFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		Film f = filmDao.createFilm(film);

		if (film == null) {

		} else {
			mv.addObject("film", f);
			mv.setViewName("result");
			return mv;
		}
		return mv;

	}

	@RequestMapping(path = "getSingleFilm.do", method = RequestMethod.GET)
	public ModelAndView getSingleFilmById(int filmId) {
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.findFilmById(filmId);
		if (film == null) {

		} else {
			mv.addObject("Film", film);
			mv.setViewName("result");
			return mv;
		}
		return mv;

	}

	@RequestMapping(path = "addFilmPage.do")
	public ModelAndView goToFilmPage() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("addfilm");
		return mv;
	}

	@RequestMapping(path = "addFilm.do", method = RequestMethod.POST)
	public ModelAndView createNewFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		Film newFilm = filmDao.createFilm(film);
		Film reGetFilm = filmDao.findFilmById(newFilm.getId());
		System.out.println(reGetFilm);
		System.out.println(newFilm);
		if (!newFilm.equals(null)) {
			mv.addObject("Film", reGetFilm);
			mv.setViewName("result");
			return mv;
		} else {
			newFilm = null;
		}
		return mv;

	}

	@RequestMapping(path = "delete.do", method = RequestMethod.POST)
	public ModelAndView deletedFilm(int filmId) {
		ModelAndView mv = new ModelAndView();
		boolean isFilmDeleted = filmDao.deleteFilm(filmId);
		if (isFilmDeleted == true) {
			System.out.println(isFilmDeleted);
			mv.addObject("isDeleted", true);
			mv.setViewName("result");
			return mv;
		} else {
			System.out.println(isFilmDeleted);
			mv.addObject("notDeleted", true);
			mv.setViewName("result");
			return mv;
		}

	}

	@RequestMapping(path = "update.do", method = RequestMethod.GET)
	public ModelAndView updatePage(int filmId) {
		System.out.println("inside update page method");
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.findFilmById(filmId);
		mv.addObject("film", film);
		mv.setViewName("updateFilm");
		return mv;
	}
	
	@RequestMapping(path = "updateFilm.do", method = RequestMethod.POST)
	public ModelAndView updateFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		Film filmEdited = filmDao.updateFilm(film);
		Film reGetFilm = filmDao.findFilmById(filmEdited.getId());
		if (!filmEdited.equals(null)) {
			mv.addObject("Film", reGetFilm);
			mv.setViewName("result");
			return mv;
		} else {
			reGetFilm = null;
		}
		return mv;
	}
	
	@RequestMapping(path = "filmKeyword.do", method = RequestMethod.GET)
	public ModelAndView getFilmDetails(String searchByKeyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> films = filmDao.searchByFilmKeyword(searchByKeyword);
		
		if (films == null) {

		} else {
			mv.addObject("films", films);
			mv.setViewName("keywordResults");
			return mv;
		}
		return mv;

	
	}
}
