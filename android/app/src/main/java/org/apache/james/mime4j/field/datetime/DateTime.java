package org.apache.james.mime4j.field.datetime;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class DateTime {
    private final Date date;
    private final int day;
    private final int hour;
    private final int minute;
    private final int month;
    private final int second;
    private final int timeZone;
    private final int year;

    public DateTime(String yearString, int month, int day, int hour, int minute, int second, int timeZone) {
        this.year = convertToYear(yearString);
        this.date = convertToDate(this.year, month, day, hour, minute, second, timeZone);
        this.month = month;
        this.day = day;
        this.hour = hour;
        this.minute = minute;
        this.second = second;
        this.timeZone = timeZone;
    }

    private int convertToYear(String yearString) {
        int year = Integer.parseInt(yearString);
        switch (yearString.length()) {
            case 1:
            case 2:
                if (year >= 0 && year < 50) {
                    return year + 2000;
                }
                return year + 1900;
            case 3:
                return year + 1900;
            default:
                return year;
        }
    }

    public static Date convertToDate(int year, int month, int day, int hour, int minute, int second, int timeZone) {
        Calendar c = new GregorianCalendar(TimeZone.getTimeZone("GMT+0"));
        c.set(year, month - 1, day, hour, minute, second);
        c.set(14, 0);
        if (timeZone != Integer.MIN_VALUE) {
            int minutes = ((timeZone / 100) * 60) + (timeZone % 100);
            c.add(12, minutes * (-1));
        }
        return c.getTime();
    }

    public Date getDate() {
        return this.date;
    }

    public int getYear() {
        return this.year;
    }

    public int getMonth() {
        return this.month;
    }

    public int getDay() {
        return this.day;
    }

    public int getHour() {
        return this.hour;
    }

    public int getMinute() {
        return this.minute;
    }

    public int getSecond() {
        return this.second;
    }

    public int getTimeZone() {
        return this.timeZone;
    }

    public void print() {
        System.out.println(toString());
    }

    public String toString() {
        return getYear() + " " + getMonth() + " " + getDay() + "; " + getHour() + " " + getMinute() + " " + getSecond() + " " + getTimeZone();
    }

    public int hashCode() {
        int result = (this.date == null ? 0 : this.date.hashCode()) + 31;
        return (((((((((((((result * 31) + this.day) * 31) + this.hour) * 31) + this.minute) * 31) + this.month) * 31) + this.second) * 31) + this.timeZone) * 31) + this.year;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            DateTime other = (DateTime) obj;
            if (this.date == null) {
                if (other.date != null) {
                    return false;
                }
            } else if (!this.date.equals(other.date)) {
                return false;
            }
            return this.day == other.day && this.hour == other.hour && this.minute == other.minute && this.month == other.month && this.second == other.second && this.timeZone == other.timeZone && this.year == other.year;
        }
        return false;
    }
}
