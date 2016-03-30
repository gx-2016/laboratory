package cn.edu.njupt.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StringHelper {

	/**
	 * @Description: 将字符串形式的类型转换成日期类型
	 * @Parameter: String date 字符串类型的日期形式
	 * @Parameter: Date 日期类型
	 * @Return:Date
	 * @Author: 高翔
	 * @Date: 2016年3月23日
	 */
	public static Date stringConvertDate(String date) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date d = null;
		try {
			d = format.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return d;
	}

}
