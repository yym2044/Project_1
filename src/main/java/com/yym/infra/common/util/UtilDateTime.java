package com.yym.infra.common.util;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import com.yym.infra.common.constants.Constants;

public class UtilDateTime {
	
	public static LocalDateTime nowLocalDateTime() throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		return localDateTime;
	}

	public static Date nowDate() throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Constants.DATETIME_FORMAT_BASIC);
		Date date = simpleDateFormat.parse(localDateTimeString);
		return date;
	}

	public static String nowString() throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		return localDateTimeString;
	}
}
