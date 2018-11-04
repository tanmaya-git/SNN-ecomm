package com.anand.util;

import java.text.SimpleDateFormat;

public class CurrentDate {
	public static String getCurrentDate() {
		java.util.Date date = new java.util.Date();
		SimpleDateFormat dt1 = new SimpleDateFormat("dd-MM-yyyy");
		System.out.println(dt1.format(date));
		return dt1.format(date);
	}
}
