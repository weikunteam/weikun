package com.great.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	/**@author vv
	 * @return String
	 * 
	 */
	public static String getDateTime() {
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		return df.format(date);
	}
}
