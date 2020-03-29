package util;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class DateUtil {

	public String getDate() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 设置日期格式
		return df.format(new java.util.Date());
	}

	public Date getTimeTypeDate() {
		java.util.Date utilDate = new java.util.Date(); // 获取当前时间
		java.sql.Date date = new java.sql.Date(utilDate.getTime());
		return date;
	}

}
