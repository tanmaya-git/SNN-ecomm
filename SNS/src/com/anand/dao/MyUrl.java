package com.anand.dao;

import java.util.HashMap;

public class MyUrl {
	public static String createUrl(HashMap hm) {
		String url = "";
		int count = 0;
		String op = "";

		for (int i = 3; i <= hm.size(); i++) {
			op = (String) hm.get(i);
			if (op != null) {
				op = op.trim();

				if (i == 3) {
					url = url + "&USERNAME=" + op;
				}
				/*
				 * if(i==4){ url=url+" & EMAIL="+op; } if(i==5){
				 * url=url+" & MOBILENO="+op; }
				 */
				if (i == 6) {
					url = url + "&FCOLOR=" + op;
				}
				if (i == 7) {
					url = url + "&HIGHESTQUALIFICATION=" + op;
				}
				if (i == 8) {
					url = url + "&OCCUPATION=" + op;
				}
				if (i == 9) {
					url = url + "&DOB=" + op;
				}
				if (i == 10) {
					url = url + "&GENDER=" + op;
				}
				/*
				 * if(i==11){ url=url+" & ADDRES="+op; }
				 */

				if (i == 12) {
					count = count + 1;
					url = url + "&" + count + "=" + op;
				}
				if (i == 13) {
					count = count + 1;
					url = url + "&" + count + "=" + op;
				}
				if (i == 14) {
					count = count + 1;
					url = url + "&" + count + "=" + op;
				}
				if (i == 15) {
					count = count + 1;
					url = url + "&" + count + "=" + op;
				}
				if (i == 16) {
					count = count + 1;
					url = url + "&" + count + "=" + op;
				}
				if (i == 17) {
					count = count + 1;
					url = url + "&" + count + "=" + op;
				}
				if (i == 18) {
					count = count + 1;
					url = url + "&" + count + "=" + op;
				}
				if (i == 19) {
					count = count + 1;
					url = url + "&" + count + "=" + op;
				}
				if (i == 20) {
					count = count + 1;
					url = url + "&" + count + "=" + op;
				}
				if (i == 21) {
					count = count + 1;
					url = url + "&" + count + "=" + op;
				}
				/*
				 * if(i==22){ url=url+" & PASSWORD="+op; }
				 */
				if (i == 23) {
					url = url + "&MARITALSTATUS=" + op;
				}

			}
			System.out.println(i + " : " + hm.get(i));
		}
		op = (String) hm.get(2);
		op = op.toUpperCase().trim();
		url = "LOGINID=" + op + url + "&COUNT=" + count;
		System.out.println("\n\n" + url);
		return url;
	}
}
