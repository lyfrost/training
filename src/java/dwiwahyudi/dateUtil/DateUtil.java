package dwiwahyudi.dateUtil;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {

	DateFormat formatter;

	public Date firstOfMonth() throws ParseException {
		Calendar cal = Calendar.getInstance();
		int month = cal.get(Calendar.MONTH) + 1;
		int year = cal.get(Calendar.YEAR);

		String a = "1-" + month + "-" + year;
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date firstOfMonth(Date date) throws ParseException {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int month = cal.get(Calendar.MONTH) + 1;
		int year = cal.get(Calendar.YEAR);

		String a = "1-" + month + "-" + year;
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date firstOfPrevMonth() throws ParseException{
		Calendar cal = Calendar.getInstance();
		int month;
		int year;

		if (cal.get(Calendar.MONTH) == 0) {
			month = 12;
			year = cal.get(Calendar.YEAR) - 1;
		} else {
			month = cal.get(Calendar.MONTH);
			year = cal.get(Calendar.YEAR);
		}

		String a = "1-" + month + "-" + year;
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date firstOfPrevMonth(Date date) throws ParseException{
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int month;
		int year;

		if (cal.get(Calendar.MONTH) == 0) {
			month = 12;
			year = cal.get(Calendar.YEAR) - 1;
		} else {
			month = cal.get(Calendar.MONTH);
			year = cal.get(Calendar.YEAR);
		}

		String a = "1-" + month + "-" + year;
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date firstOfNextMonth() throws ParseException {
		Calendar cal = Calendar.getInstance();
		int month;
		int year;

		if (cal.get(Calendar.MONTH) == 12) {
			month = 1;
			year = cal.get(Calendar.YEAR) + 1;
		} else {
			month = cal.get(Calendar.MONTH) + 2;
			year = cal.get(Calendar.YEAR);
		}

		String a = "1-" + month + "-" + year;
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date firstOfNextMonth(Date date) throws ParseException {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int month;
		int year;

		if (cal.get(Calendar.MONTH) == 12) {
			month = 1;
			year = cal.get(Calendar.YEAR) + 1;
		} else {
			month = cal.get(Calendar.MONTH) + 2;
			year = cal.get(Calendar.YEAR);
		}

		String a = "1-" + month + "-" + year;
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date firstDayOfYear() throws ParseException {
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);

		String a = "1-1-" + year;
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date lastDayOfYear() throws ParseException {
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);

		String a = "31-12-" + year;
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date firstDayofNextYear() throws ParseException{
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);

		String a = "1-1-" + (year + 1);
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date firstDayofPrevYear() throws ParseException {
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);

		String a = "1-1-" + (year - 1);
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date firstDayofPrevYear(Date date) throws ParseException {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int year = cal.get(Calendar.YEAR);

		String a = "1-1-" + (year - 1);
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date lastDayofPrevYear() throws ParseException{
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);

		String a = "31-12-" + (year - 1);
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date lastDayofPrevYear(Date date) throws ParseException{
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int year = cal.get(Calendar.YEAR);

		String a = "31-12-" + (year - 1);
		formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date returned = (Date) formatter.parse(a);

		return returned;
	}

	public Date addDate(Date date, int amount){
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DAY_OF_YEAR, amount);

		return cal.getTime();
	}
}
