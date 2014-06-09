package dwiwahyudi.dateUtil;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatter {
	private SimpleDateFormat TIME_FORMATTER = new SimpleDateFormat(
			"dd-MMM-yyyy HH.mm.ss");
	private SimpleDateFormat TIME_FORMATTER2 = new SimpleDateFormat(
			"dd-MMM-yyyy HH.mm");
	private SimpleDateFormat TIME_FORMATTER3 = new SimpleDateFormat(
			"dd-MMM-yyyy");
	private SimpleDateFormat TIME_FORMATTER4 = new SimpleDateFormat("dd MMM yy");
	private SimpleDateFormat TIME_FORMATTER5 = new SimpleDateFormat(
			"MMM-yyyy");
	private SimpleDateFormat TIME_FORMATTER6 = new SimpleDateFormat(
			"yyyy");
	private SimpleDateFormat MONTH_YEAR = new SimpleDateFormat("MM-yyyy");
	private SimpleDateFormat FOR_CONSTRAINT = new SimpleDateFormat("yyyyMMdd");

	public String format(Date toBeFormatted) {
		return TIME_FORMATTER.format(toBeFormatted);
	}

	public String formatWithoutSecond(Date toBeFormatted) {
		return TIME_FORMATTER2.format(toBeFormatted);
	}

	public String formatWithoutTime(Date toBeFormatted) {
		return TIME_FORMATTER3.format(toBeFormatted);
	}

	public String formatYearAndMonth(Date toBeFormatted) {
		return MONTH_YEAR.format(toBeFormatted);
	}

	public String forConstraint(Date toBeFormatted) {
		return FOR_CONSTRAINT.format(toBeFormatted);
	}

	public String shortDate(Date toBeFormatted) {
		return TIME_FORMATTER4.format(toBeFormatted);
	}

	public String onlyMonthAndYear(Date toBeFormatted) {
		return TIME_FORMATTER5.format(toBeFormatted);
	}

	public String onlyYear(Date toBeFormatted) {
		return TIME_FORMATTER6.format(toBeFormatted);
	}

	public Date getDateWithoutTime(Date toBeFormatted) throws ParseException {
		return TIME_FORMATTER3.parse(TIME_FORMATTER3.format(toBeFormatted));
	}
}
