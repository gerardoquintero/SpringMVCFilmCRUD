package com.skilldistillery.film.controllers;

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
		System.out.println(film);
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
		System.out.println(newFilm);
		if (newFilm != null) {
			mv.addObject("Film", newFilm);
			mv.setViewName("result");
			return mv;
		} else {
			newFilm = null;
		}
		return mv;

	}
	
}
