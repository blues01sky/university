package util;

import java.text.SimpleDateFormat;

public class DateUtil {
	
	 public String getDate() {
		 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		 return df.format(new java.util.Date());
	 }
}
