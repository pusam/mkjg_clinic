package kr.co.sist.mkjg.clinic.domain;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class Testest {

	public static void main(String[] args) {
/*		String dt = "2016-01-01";
		SimpleDateFormat todaydf = new SimpleDateFormat("yyyyMMdd");
		Calendar c = Calendar.getInstance();
		try {
			c.setTime(todaydf.parse(dt));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		c.add(Calendar.DATE, 1);  //�Ϸ縦 �����ش�.
		dt = todaydf.format(c.getTime());  // dt�� �Ϸ縦 ���� ��¥
		System.out.println(dt);*/
		SimpleDateFormat todaydf = new SimpleDateFormat("yyyyMMdd");
		
		Calendar cal = new GregorianCalendar();
	    cal.add(Calendar.DATE, 20); // ���� ��¥ 20�� ���ϸ� 11�� 1��
	    Date date = cal.getTime();
	    String strToday = todaydf.format(date);
	}

}
