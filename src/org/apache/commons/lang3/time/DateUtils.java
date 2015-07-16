package org.apache.commons.lang3.time;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;

public class DateUtils
{
  public static final long MILLIS_PER_DAY = 86400000L;
  public static final long MILLIS_PER_HOUR = 3600000L;
  public static final long MILLIS_PER_MINUTE = 60000L;
  public static final long MILLIS_PER_SECOND = 1000L;
  private static final int MODIFY_CEILING = 2;
  private static final int MODIFY_ROUND = 1;
  private static final int MODIFY_TRUNCATE = 0;
  public static final int RANGE_MONTH_MONDAY = 6;
  public static final int RANGE_MONTH_SUNDAY = 5;
  public static final int RANGE_WEEK_CENTER = 4;
  public static final int RANGE_WEEK_MONDAY = 2;
  public static final int RANGE_WEEK_RELATIVE = 3;
  public static final int RANGE_WEEK_SUNDAY = 1;
  public static final int SEMI_MONTH = 1001;
  private static final int[][] fields;
  
  static
  {
    int[] arrayOfInt1 = { 14 };
    int[] arrayOfInt2 = { 1 };
    fields = new int[][] { arrayOfInt1, { 13 }, { 12 }, { 11, 10 }, { 5, 5, 9 }, { 2, 1001 }, arrayOfInt2, { 0 } };
  }
  
  private static Date add(Date paramDate, int paramInt1, int paramInt2)
  {
    if (paramDate == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    localCalendar.add(paramInt1, paramInt2);
    return localCalendar.getTime();
  }
  
  public static Date addDays(Date paramDate, int paramInt)
  {
    return add(paramDate, 5, paramInt);
  }
  
  public static Date addHours(Date paramDate, int paramInt)
  {
    return add(paramDate, 11, paramInt);
  }
  
  public static Date addMilliseconds(Date paramDate, int paramInt)
  {
    return add(paramDate, 14, paramInt);
  }
  
  public static Date addMinutes(Date paramDate, int paramInt)
  {
    return add(paramDate, 12, paramInt);
  }
  
  public static Date addMonths(Date paramDate, int paramInt)
  {
    return add(paramDate, 2, paramInt);
  }
  
  public static Date addSeconds(Date paramDate, int paramInt)
  {
    return add(paramDate, 13, paramInt);
  }
  
  public static Date addWeeks(Date paramDate, int paramInt)
  {
    return add(paramDate, 3, paramInt);
  }
  
  public static Date addYears(Date paramDate, int paramInt)
  {
    return add(paramDate, 1, paramInt);
  }
  
  public static Calendar ceiling(Calendar paramCalendar, int paramInt)
  {
    if (paramCalendar == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    paramCalendar = (Calendar)paramCalendar.clone();
    modify(paramCalendar, paramInt, 2);
    return paramCalendar;
  }
  
  public static Date ceiling(Object paramObject, int paramInt)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    if ((paramObject instanceof Date)) {
      return ceiling((Date)paramObject, paramInt);
    }
    if ((paramObject instanceof Calendar)) {
      return ceiling((Calendar)paramObject, paramInt).getTime();
    }
    throw new ClassCastException("Could not find ceiling of for type: " + paramObject.getClass());
  }
  
  public static Date ceiling(Date paramDate, int paramInt)
  {
    if (paramDate == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    modify(localCalendar, paramInt, 2);
    return localCalendar.getTime();
  }
  
  private static long getFragment(Calendar paramCalendar, int paramInt, TimeUnit paramTimeUnit)
  {
    long l1 = 0L;
    if (paramCalendar == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    int i;
    if (paramTimeUnit == TimeUnit.DAYS)
    {
      i = 0;
      label26:
      switch (paramInt)
      {
      }
    }
    for (;;)
    {
      l2 = l1;
      l3 = l1;
      l4 = l1;
      l5 = l1;
      switch (paramInt)
      {
      case 3: 
      case 4: 
      case 7: 
      case 8: 
      case 9: 
      case 10: 
      default: 
        throw new IllegalArgumentException("The fragment " + paramInt + " is not supported");
        i = 1;
        break label26;
        l1 = 0L + paramTimeUnit.convert(paramCalendar.get(6) - i, TimeUnit.DAYS);
        continue;
        l1 = 0L + paramTimeUnit.convert(paramCalendar.get(5) - i, TimeUnit.DAYS);
      }
    }
    long l2 = l1 + paramTimeUnit.convert(paramCalendar.get(11), TimeUnit.HOURS);
    long l3 = l2 + paramTimeUnit.convert(paramCalendar.get(12), TimeUnit.MINUTES);
    long l4 = l3 + paramTimeUnit.convert(paramCalendar.get(13), TimeUnit.SECONDS);
    long l5 = l4 + paramTimeUnit.convert(paramCalendar.get(14), TimeUnit.MILLISECONDS);
    return l5;
  }
  
  private static long getFragment(Date paramDate, int paramInt, TimeUnit paramTimeUnit)
  {
    if (paramDate == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    return getFragment(localCalendar, paramInt, paramTimeUnit);
  }
  
  public static long getFragmentInDays(Calendar paramCalendar, int paramInt)
  {
    return getFragment(paramCalendar, paramInt, TimeUnit.DAYS);
  }
  
  public static long getFragmentInDays(Date paramDate, int paramInt)
  {
    return getFragment(paramDate, paramInt, TimeUnit.DAYS);
  }
  
  public static long getFragmentInHours(Calendar paramCalendar, int paramInt)
  {
    return getFragment(paramCalendar, paramInt, TimeUnit.HOURS);
  }
  
  public static long getFragmentInHours(Date paramDate, int paramInt)
  {
    return getFragment(paramDate, paramInt, TimeUnit.HOURS);
  }
  
  public static long getFragmentInMilliseconds(Calendar paramCalendar, int paramInt)
  {
    return getFragment(paramCalendar, paramInt, TimeUnit.MILLISECONDS);
  }
  
  public static long getFragmentInMilliseconds(Date paramDate, int paramInt)
  {
    return getFragment(paramDate, paramInt, TimeUnit.MILLISECONDS);
  }
  
  public static long getFragmentInMinutes(Calendar paramCalendar, int paramInt)
  {
    return getFragment(paramCalendar, paramInt, TimeUnit.MINUTES);
  }
  
  public static long getFragmentInMinutes(Date paramDate, int paramInt)
  {
    return getFragment(paramDate, paramInt, TimeUnit.MINUTES);
  }
  
  public static long getFragmentInSeconds(Calendar paramCalendar, int paramInt)
  {
    return getFragment(paramCalendar, paramInt, TimeUnit.SECONDS);
  }
  
  public static long getFragmentInSeconds(Date paramDate, int paramInt)
  {
    return getFragment(paramDate, paramInt, TimeUnit.SECONDS);
  }
  
  public static boolean isSameDay(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    if ((paramCalendar1 == null) || (paramCalendar2 == null)) {
      throw new IllegalArgumentException("The date must not be null");
    }
    return (paramCalendar1.get(0) == paramCalendar2.get(0)) && (paramCalendar1.get(1) == paramCalendar2.get(1)) && (paramCalendar1.get(6) == paramCalendar2.get(6));
  }
  
  public static boolean isSameDay(Date paramDate1, Date paramDate2)
  {
    if ((paramDate1 == null) || (paramDate2 == null)) {
      throw new IllegalArgumentException("The date must not be null");
    }
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate1);
    paramDate1 = Calendar.getInstance();
    paramDate1.setTime(paramDate2);
    return isSameDay(localCalendar, paramDate1);
  }
  
  public static boolean isSameInstant(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    if ((paramCalendar1 == null) || (paramCalendar2 == null)) {
      throw new IllegalArgumentException("The date must not be null");
    }
    return paramCalendar1.getTime().getTime() == paramCalendar2.getTime().getTime();
  }
  
  public static boolean isSameInstant(Date paramDate1, Date paramDate2)
  {
    if ((paramDate1 == null) || (paramDate2 == null)) {
      throw new IllegalArgumentException("The date must not be null");
    }
    return paramDate1.getTime() == paramDate2.getTime();
  }
  
  public static boolean isSameLocalTime(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    if ((paramCalendar1 == null) || (paramCalendar2 == null)) {
      throw new IllegalArgumentException("The date must not be null");
    }
    return (paramCalendar1.get(14) == paramCalendar2.get(14)) && (paramCalendar1.get(13) == paramCalendar2.get(13)) && (paramCalendar1.get(12) == paramCalendar2.get(12)) && (paramCalendar1.get(11) == paramCalendar2.get(11)) && (paramCalendar1.get(6) == paramCalendar2.get(6)) && (paramCalendar1.get(1) == paramCalendar2.get(1)) && (paramCalendar1.get(0) == paramCalendar2.get(0)) && (paramCalendar1.getClass() == paramCalendar2.getClass());
  }
  
  public static Iterator<?> iterator(Object paramObject, int paramInt)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    if ((paramObject instanceof Date)) {
      return iterator((Date)paramObject, paramInt);
    }
    if ((paramObject instanceof Calendar)) {
      return iterator((Calendar)paramObject, paramInt);
    }
    throw new ClassCastException("Could not iterate based on " + paramObject);
  }
  
  public static Iterator<Calendar> iterator(Calendar paramCalendar, int paramInt)
  {
    int i = 2;
    if (paramCalendar == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    Calendar localCalendar1;
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("The range style " + paramInt + " is not valid.");
    case 5: 
    case 6: 
      localCalendar1 = truncate(paramCalendar, 2);
      paramCalendar = (Calendar)localCalendar1.clone();
      paramCalendar.add(2, 1);
      paramCalendar.add(5, -1);
      if (paramInt == 6) {
        paramInt = 1;
      }
      break;
    }
    for (;;)
    {
      int j = i;
      if (i <= 0) {
        j = i + 7;
      }
      int k = j;
      if (j > 7) {
        k = j - 7;
      }
      i = paramInt;
      if (paramInt <= 0) {
        i = paramInt + 7;
      }
      paramInt = i;
      if (i > 7) {
        paramInt = i - 7;
      }
      for (;;)
      {
        if (localCalendar1.get(7) != k)
        {
          localCalendar1.add(5, -1);
          continue;
          localCalendar1 = truncate(paramCalendar, 5);
          Calendar localCalendar2 = truncate(paramCalendar, 5);
          switch (paramInt)
          {
          default: 
            paramInt = 7;
            i = 1;
            paramCalendar = localCalendar2;
            break;
          case 1: 
            paramInt = 7;
            i = 1;
            paramCalendar = localCalendar2;
            break;
          case 2: 
            paramInt = 1;
            paramCalendar = localCalendar2;
            break;
          case 3: 
            i = paramCalendar.get(7);
            paramInt = i - 1;
            paramCalendar = localCalendar2;
            break;
          case 4: 
            i = paramCalendar.get(7) - 3;
            paramInt = paramCalendar.get(7) + 3;
            paramCalendar = localCalendar2;
            break;
          }
        }
      }
      while (paramCalendar.get(7) != paramInt) {
        paramCalendar.add(5, 1);
      }
      return new DateIterator(localCalendar1, paramCalendar);
      i = 1;
      paramInt = 7;
    }
  }
  
  public static Iterator<Calendar> iterator(Date paramDate, int paramInt)
  {
    if (paramDate == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    return iterator(localCalendar, paramInt);
  }
  
  private static void modify(Calendar paramCalendar, int paramInt1, int paramInt2)
  {
    if (paramCalendar.get(1) > 280000000) {
      throw new ArithmeticException("Calendar value too large for accurate calculations");
    }
    if (paramInt1 == 14) {
      return;
    }
    Object localObject1 = paramCalendar.getTime();
    long l2 = ((Date)localObject1).getTime();
    int i = 0;
    int j = paramCalendar.get(14);
    if (paramInt2 != 0)
    {
      l1 = l2;
      if (j >= 500) {}
    }
    else
    {
      l1 = l2 - j;
    }
    if (paramInt1 == 13) {
      i = 1;
    }
    j = paramCalendar.get(13);
    l2 = l1;
    if (i == 0) {
      if (paramInt2 != 0)
      {
        l2 = l1;
        if (j >= 30) {}
      }
      else
      {
        l2 = l1 - j * 1000L;
      }
    }
    if (paramInt1 == 12) {
      i = 1;
    }
    j = paramCalendar.get(12);
    if ((i == 0) && ((paramInt2 == 0) || (j < 30))) {}
    for (long l1 = l2 - j * 60000L;; l1 = l2)
    {
      if (((Date)localObject1).getTime() != l1)
      {
        ((Date)localObject1).setTime(l1);
        paramCalendar.setTime((Date)localObject1);
      }
      localObject1 = fields;
      int i1 = localObject1.length;
      i = 0;
      int m = 0;
      if (m < i1)
      {
        Object localObject2 = localObject1[m];
        int k = localObject2.length;
        j = 0;
        for (;;)
        {
          if (j >= k) {
            break label355;
          }
          if (localObject2[j] == paramInt1)
          {
            if ((paramInt2 != 2) && ((paramInt2 != 1) || (i == 0))) {
              break;
            }
            if (paramInt1 == 1001)
            {
              if (paramCalendar.get(5) == 1)
              {
                paramCalendar.add(5, 15);
                return;
              }
              paramCalendar.add(5, -15);
              paramCalendar.add(2, 1);
              return;
            }
            if (paramInt1 == 9)
            {
              if (paramCalendar.get(11) == 0)
              {
                paramCalendar.add(11, 12);
                return;
              }
              paramCalendar.add(11, -12);
              paramCalendar.add(5, 1);
              return;
            }
            paramCalendar.add(localObject2[0], 1);
            return;
          }
          j += 1;
        }
        switch (paramInt1)
        {
        default: 
          label355:
          label384:
          int n = 0;
          k = 0;
          j = i;
          i = n;
          if (k == 0)
          {
            i = paramCalendar.getActualMinimum(localObject2[0]);
            j = paramCalendar.getActualMaximum(localObject2[0]);
            k = paramCalendar.get(localObject2[0]) - i;
            if (k <= (j - i) / 2) {
              break label593;
            }
          }
          break;
        }
        label593:
        for (i = 1;; i = 0)
        {
          j = i;
          i = k;
          if (i != 0) {
            paramCalendar.set(localObject2[0], paramCalendar.get(localObject2[0]) - i);
          }
          m += 1;
          i = j;
          break;
          if (localObject2[0] != 5) {
            break label384;
          }
          j = paramCalendar.get(5) - 1;
          i = j;
          if (j >= 15) {
            i = j - 15;
          }
          if (i > 7) {}
          for (j = 1;; j = 0)
          {
            k = 1;
            break;
          }
          if (localObject2[0] != 11) {
            break label384;
          }
          j = paramCalendar.get(11);
          i = j;
          if (j >= 12) {
            i = j - 12;
          }
          if (i >= 6) {}
          for (j = 1;; j = 0)
          {
            k = 1;
            break;
          }
        }
      }
      throw new IllegalArgumentException("The field " + paramInt1 + " is not supported");
    }
  }
  
  public static Date parseDate(String paramString, Locale paramLocale, String... paramVarArgs)
  {
    return parseDateWithLeniency(paramString, paramLocale, paramVarArgs, true);
  }
  
  public static Date parseDate(String paramString, String... paramVarArgs)
  {
    return parseDate(paramString, null, paramVarArgs);
  }
  
  public static Date parseDateStrictly(String paramString, Locale paramLocale, String... paramVarArgs)
  {
    return parseDateWithLeniency(paramString, null, paramVarArgs, false);
  }
  
  public static Date parseDateStrictly(String paramString, String... paramVarArgs)
  {
    return parseDateStrictly(paramString, null, paramVarArgs);
  }
  
  private static Date parseDateWithLeniency(String paramString, Locale paramLocale, String[] paramArrayOfString, boolean paramBoolean)
  {
    if ((paramString == null) || (paramArrayOfString == null)) {
      throw new IllegalArgumentException("Date and Patterns must not be null");
    }
    ParsePosition localParsePosition;
    int i;
    label52:
    Object localObject2;
    if (paramLocale == null)
    {
      paramLocale = new SimpleDateFormat();
      paramLocale.setLenient(paramBoolean);
      localParsePosition = new ParsePosition(0);
      int j = paramArrayOfString.length;
      i = 0;
      if (i >= j) {
        break label181;
      }
      localObject2 = paramArrayOfString[i];
      if (!((String)localObject2).endsWith("ZZ")) {
        break label213;
      }
    }
    label181:
    label213:
    for (Object localObject1 = ((String)localObject2).substring(0, ((String)localObject2).length() - 1);; localObject1 = localObject2)
    {
      paramLocale.applyPattern((String)localObject1);
      localParsePosition.setIndex(0);
      if (((String)localObject2).endsWith("ZZ")) {}
      for (localObject1 = paramString.replaceAll("([-+][0-9][0-9]):([0-9][0-9])$", "$1$2");; localObject1 = paramString)
      {
        localObject2 = paramLocale.parse((String)localObject1, localParsePosition);
        if ((localObject2 != null) && (localParsePosition.getIndex() == ((String)localObject1).length()))
        {
          return (Date)localObject2;
          paramLocale = new SimpleDateFormat("", paramLocale);
          break;
        }
        i += 1;
        break label52;
        throw new ParseException("Unable to parse the date: " + paramString, -1);
      }
    }
  }
  
  public static Calendar round(Calendar paramCalendar, int paramInt)
  {
    if (paramCalendar == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    paramCalendar = (Calendar)paramCalendar.clone();
    modify(paramCalendar, paramInt, 1);
    return paramCalendar;
  }
  
  public static Date round(Object paramObject, int paramInt)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    if ((paramObject instanceof Date)) {
      return round((Date)paramObject, paramInt);
    }
    if ((paramObject instanceof Calendar)) {
      return round((Calendar)paramObject, paramInt).getTime();
    }
    throw new ClassCastException("Could not round " + paramObject);
  }
  
  public static Date round(Date paramDate, int paramInt)
  {
    if (paramDate == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    modify(localCalendar, paramInt, 1);
    return localCalendar.getTime();
  }
  
  private static Date set(Date paramDate, int paramInt1, int paramInt2)
  {
    if (paramDate == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setLenient(false);
    localCalendar.setTime(paramDate);
    localCalendar.set(paramInt1, paramInt2);
    return localCalendar.getTime();
  }
  
  public static Date setDays(Date paramDate, int paramInt)
  {
    return set(paramDate, 5, paramInt);
  }
  
  public static Date setHours(Date paramDate, int paramInt)
  {
    return set(paramDate, 11, paramInt);
  }
  
  public static Date setMilliseconds(Date paramDate, int paramInt)
  {
    return set(paramDate, 14, paramInt);
  }
  
  public static Date setMinutes(Date paramDate, int paramInt)
  {
    return set(paramDate, 12, paramInt);
  }
  
  public static Date setMonths(Date paramDate, int paramInt)
  {
    return set(paramDate, 2, paramInt);
  }
  
  public static Date setSeconds(Date paramDate, int paramInt)
  {
    return set(paramDate, 13, paramInt);
  }
  
  public static Date setYears(Date paramDate, int paramInt)
  {
    return set(paramDate, 1, paramInt);
  }
  
  public static Calendar toCalendar(Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    return localCalendar;
  }
  
  public static Calendar truncate(Calendar paramCalendar, int paramInt)
  {
    if (paramCalendar == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    paramCalendar = (Calendar)paramCalendar.clone();
    modify(paramCalendar, paramInt, 0);
    return paramCalendar;
  }
  
  public static Date truncate(Object paramObject, int paramInt)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    if ((paramObject instanceof Date)) {
      return truncate((Date)paramObject, paramInt);
    }
    if ((paramObject instanceof Calendar)) {
      return truncate((Calendar)paramObject, paramInt).getTime();
    }
    throw new ClassCastException("Could not truncate " + paramObject);
  }
  
  public static Date truncate(Date paramDate, int paramInt)
  {
    if (paramDate == null) {
      throw new IllegalArgumentException("The date must not be null");
    }
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    modify(localCalendar, paramInt, 0);
    return localCalendar.getTime();
  }
  
  public static int truncatedCompareTo(Calendar paramCalendar1, Calendar paramCalendar2, int paramInt)
  {
    return truncate(paramCalendar1, paramInt).compareTo(truncate(paramCalendar2, paramInt));
  }
  
  public static int truncatedCompareTo(Date paramDate1, Date paramDate2, int paramInt)
  {
    return truncate(paramDate1, paramInt).compareTo(truncate(paramDate2, paramInt));
  }
  
  public static boolean truncatedEquals(Calendar paramCalendar1, Calendar paramCalendar2, int paramInt)
  {
    return truncatedCompareTo(paramCalendar1, paramCalendar2, paramInt) == 0;
  }
  
  public static boolean truncatedEquals(Date paramDate1, Date paramDate2, int paramInt)
  {
    return truncatedCompareTo(paramDate1, paramDate2, paramInt) == 0;
  }
  
  static class DateIterator
    implements Iterator<Calendar>
  {
    private final Calendar endFinal;
    private final Calendar spot;
    
    DateIterator(Calendar paramCalendar1, Calendar paramCalendar2)
    {
      endFinal = paramCalendar2;
      spot = paramCalendar1;
      spot.add(5, -1);
    }
    
    public boolean hasNext()
    {
      return spot.before(endFinal);
    }
    
    public Calendar next()
    {
      if (spot.equals(endFinal)) {
        throw new NoSuchElementException();
      }
      spot.add(5, 1);
      return (Calendar)spot.clone();
    }
    
    public void remove()
    {
      throw new UnsupportedOperationException();
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.DateUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */