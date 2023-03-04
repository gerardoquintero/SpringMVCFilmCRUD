package com.skilldistillery.film.entities;


	import java.util.List;
	import java.util.Objects;

	public class Actor {
		private int id;
		private String firstName;
		private String lastName;
		private List<Film> films;


		public Actor(int id, String fname, String lname) {
			this.id = id;
			this.firstName = fname;
			this.lastName = lname;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public List<Film> getFilms() {
			return films;
		}

		public void setFilms(List<Film> films) {
			this.films = films;
		}

		public String getFirstName() {
			return firstName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public String getLastName() {
			return lastName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		@Override
		public String toString() {
			return "Actor [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + "]";
		}

		@Override
		public int hashCode() {
			return Objects.hash(id);
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Actor other = (Actor) obj;
			return id == other.id;
		}
		
	}


