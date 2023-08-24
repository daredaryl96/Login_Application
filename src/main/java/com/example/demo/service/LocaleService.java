package com.example.demo.service;

import java.util.Locale;
import java.util.ResourceBundle;

import org.springframework.stereotype.Service;

@Service
public class LocaleService {

	private Locale locale;

	public Locale getLocale() {
		return locale;
	}

	public void setLocale(String lang) {
		switch (lang) {
		case "en":
			this.locale = getEnglishLocale();
			break;
		case "cn":
			this.locale = getMandarinLocale();
			break;
		default:
			break;
		}
	}

	public LocaleService() {
		super();
		this.locale = getEnglishLocale();
	}

	public String getTranslatedString(String field) {
		ResourceBundle resource = ResourceBundle.getBundle("message", locale);
		return resource.getString(field);
	}

	public Locale getEnglishLocale() {
		String lang = "en";
		String country = "US";

		return new Locale(lang, country);
	}

	public Locale getMandarinLocale() {
		String lang = "cn";
		String country = "CN";

		return new Locale(lang, country);
	}
}