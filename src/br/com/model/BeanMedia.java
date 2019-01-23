package br.com.model;

import java.util.Hashtable;

public class BeanMedia {

	private String title;
	private String year;
	private String type;
	private Hashtable<String, String> mistakes;

	public BeanMedia() {
		title = "";
		year = "";
		type = "";
		mistakes = new Hashtable<String, String>();
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public boolean isValid() {

		boolean flag = true;

		if ((title == null) || title.equals("")) {
			mistakes.put("title", "Please, tip a title.");
			flag = false;
		}

		if ((year == null) || year.equals("")) {
			mistakes.put("year", "Please, tip a year.");
			flag = false;
		}

		if ((type == null) || type.equals("")) {
			mistakes.put("type", "Please, set a type.");
			flag = false;
		}

		return flag;
	}

	public String getMistakes(String key) {

		String message = mistakes.get(key);

		return (message == null) ? "" : message;

	}

	public void setMistakes(String key, String message) {

		mistakes.put(key, message);
	}

}
