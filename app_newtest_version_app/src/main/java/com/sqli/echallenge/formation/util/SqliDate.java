package com.sqli.echallenge.formation.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class SqliDate {

	public static String getDateString(Date date)
	{
		return new SimpleDateFormat("dd/MM/yyyy").format(date);
	}
}
