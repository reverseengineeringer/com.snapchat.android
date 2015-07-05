package org.apache.commons.lang3.time;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.apache.commons.lang3.StringUtils;

public class DurationFormatUtils
{
  static final Object H;
  public static final String ISO_EXTENDED_FORMAT_PATTERN = "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.S'S'";
  static final Object M;
  static final Object S = "S";
  static final Object d;
  static final Object m;
  static final Object s;
  static final Object y = "y";
  
  static
  {
    M = "M";
    d = "d";
    H = "H";
    m = "m";
    s = "s";
  }
  
  static String format(Token[] paramArrayOfToken, long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6, long paramLong7, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int n = paramArrayOfToken.length;
    int k = 0;
    int j = 0;
    while (j < n)
    {
      Token localToken = paramArrayOfToken[j];
      Object localObject = localToken.getValue();
      int i1 = localToken.getCount();
      int i;
      if ((localObject instanceof StringBuilder))
      {
        localStringBuilder.append(localObject.toString());
        i = k;
        j += 1;
        k = i;
      }
      else
      {
        if (localObject == y) {
          localStringBuilder.append(paddedValue(paramLong1, paramBoolean, i1));
        }
        for (;;)
        {
          i = 0;
          break;
          if (localObject == M)
          {
            localStringBuilder.append(paddedValue(paramLong2, paramBoolean, i1));
          }
          else if (localObject == d)
          {
            localStringBuilder.append(paddedValue(paramLong3, paramBoolean, i1));
          }
          else if (localObject == H)
          {
            localStringBuilder.append(paddedValue(paramLong4, paramBoolean, i1));
          }
          else if (localObject == m)
          {
            localStringBuilder.append(paddedValue(paramLong5, paramBoolean, i1));
          }
          else
          {
            if (localObject == s)
            {
              localStringBuilder.append(paddedValue(paramLong6, paramBoolean, i1));
              i = 1;
              break;
            }
            i = k;
            if (localObject != S) {
              break;
            }
            if (k != 0)
            {
              if (paramBoolean) {}
              for (i = Math.max(3, i1);; i = 3)
              {
                localStringBuilder.append(paddedValue(paramLong7, true, i));
                break;
              }
            }
            localStringBuilder.append(paddedValue(paramLong7, paramBoolean, i1));
          }
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String formatDuration(long paramLong, String paramString)
  {
    return formatDuration(paramLong, paramString, true);
  }
  
  public static String formatDuration(long paramLong, String paramString, boolean paramBoolean)
  {
    paramString = lexx(paramString);
    long l2 = 0L;
    long l3 = 0L;
    long l4 = 0L;
    long l5 = 0L;
    long l1 = paramLong;
    if (Token.containsTokenWithValue(paramString, d))
    {
      l2 = paramLong / 86400000L;
      l1 = paramLong - 86400000L * l2;
    }
    paramLong = l1;
    if (Token.containsTokenWithValue(paramString, H))
    {
      l3 = l1 / 3600000L;
      paramLong = l1 - 3600000L * l3;
    }
    l1 = paramLong;
    if (Token.containsTokenWithValue(paramString, m))
    {
      l4 = paramLong / 60000L;
      l1 = paramLong - 60000L * l4;
    }
    if (Token.containsTokenWithValue(paramString, s))
    {
      paramLong = l1 / 1000L;
      l1 -= 1000L * paramLong;
    }
    for (;;)
    {
      return format(paramString, 0L, 0L, l2, l3, l4, paramLong, l1, paramBoolean);
      paramLong = l5;
    }
  }
  
  public static String formatDurationHMS(long paramLong)
  {
    return formatDuration(paramLong, "H:mm:ss.SSS");
  }
  
  public static String formatDurationISO(long paramLong)
  {
    return formatDuration(paramLong, "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.S'S'", false);
  }
  
  public static String formatDurationWords(long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject1 = formatDuration(paramLong, "d' days 'H' hours 'm' minutes 's' seconds'");
    Object localObject2 = localObject1;
    String str;
    if (paramBoolean1)
    {
      localObject1 = " " + (String)localObject1;
      localObject2 = StringUtils.replaceOnce((String)localObject1, " 0 days", "");
      if (((String)localObject2).length() == ((String)localObject1).length()) {
        break label301;
      }
      str = StringUtils.replaceOnce((String)localObject2, " 0 hours", "");
      localObject1 = localObject2;
      if (str.length() != ((String)localObject2).length())
      {
        localObject2 = StringUtils.replaceOnce(str, " 0 minutes", "");
        localObject1 = localObject2;
        if (((String)localObject2).length() != ((String)localObject2).length()) {
          localObject1 = StringUtils.replaceOnce((String)localObject2, " 0 seconds", "");
        }
      }
    }
    label294:
    label301:
    for (;;)
    {
      localObject2 = localObject1;
      if (((String)localObject1).length() != 0) {
        localObject2 = ((String)localObject1).substring(1);
      }
      localObject1 = localObject2;
      if (paramBoolean2)
      {
        str = StringUtils.replaceOnce((String)localObject2, " 0 seconds", "");
        localObject1 = localObject2;
        if (str.length() != ((String)localObject2).length())
        {
          localObject2 = StringUtils.replaceOnce(str, " 0 minutes", "");
          if (((String)localObject2).length() == str.length()) {
            break label294;
          }
          str = StringUtils.replaceOnce((String)localObject2, " 0 hours", "");
          localObject1 = localObject2;
          if (str.length() == ((String)localObject2).length()) {}
        }
      }
      for (localObject1 = StringUtils.replaceOnce(str, " 0 days", "");; localObject1 = str) {
        return StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(" " + (String)localObject1, " 1 seconds", " 1 second"), " 1 minutes", " 1 minute"), " 1 hours", " 1 hour"), " 1 days", " 1 day").trim();
      }
    }
  }
  
  public static String formatPeriod(long paramLong1, long paramLong2, String paramString)
  {
    return formatPeriod(paramLong1, paramLong2, paramString, true, TimeZone.getDefault());
  }
  
  public static String formatPeriod(long paramLong1, long paramLong2, String paramString, boolean paramBoolean, TimeZone paramTimeZone)
  {
    paramString = lexx(paramString);
    Calendar localCalendar = Calendar.getInstance(paramTimeZone);
    localCalendar.setTime(new Date(paramLong1));
    paramTimeZone = Calendar.getInstance(paramTimeZone);
    paramTimeZone.setTime(new Date(paramLong2));
    int k = paramTimeZone.get(14) - localCalendar.get(14);
    int j = paramTimeZone.get(13) - localCalendar.get(13);
    int i1 = paramTimeZone.get(12) - localCalendar.get(12);
    int i2 = paramTimeZone.get(11) - localCalendar.get(11);
    int i3 = paramTimeZone.get(5) - localCalendar.get(5);
    int i6 = paramTimeZone.get(2) - localCalendar.get(2);
    int i4 = paramTimeZone.get(1) - localCalendar.get(1);
    int n;
    for (;;)
    {
      i = i1;
      n = j;
      if (k >= 0) {
        break;
      }
      k += 1000;
      j -= 1;
    }
    for (;;)
    {
      j = i2;
      i1 = i;
      if (n >= 0) {
        break;
      }
      n += 60;
      i -= 1;
    }
    for (;;)
    {
      i = i3;
      i2 = j;
      if (i1 >= 0) {
        break;
      }
      i1 += 60;
      j -= 1;
    }
    while (i2 < 0)
    {
      i2 += 24;
      i -= 1;
    }
    int i5;
    if (Token.containsTokenWithValue(paramString, M))
    {
      i3 = i6;
      i5 = i;
      for (;;)
      {
        i = i4;
        j = i3;
        if (i5 >= 0) {
          break;
        }
        i5 += localCalendar.getActualMaximum(5);
        i3 -= 1;
        localCalendar.add(2, 1);
      }
      while (j < 0)
      {
        j += 12;
        i -= 1;
      }
      i3 = i;
      i4 = j;
      i6 = i5;
      if (!Token.containsTokenWithValue(paramString, y))
      {
        i3 = i;
        i4 = j;
        i6 = i5;
        if (i != 0) {
          for (;;)
          {
            i3 = i;
            i4 = j;
            i6 = i5;
            if (i == 0) {
              break;
            }
            j += i * 12;
            i = 0;
          }
        }
      }
    }
    else
    {
      i5 = i4;
      j = i;
      if (!Token.containsTokenWithValue(paramString, y))
      {
        i4 = paramTimeZone.get(1);
        i3 = i4;
        j = i;
        if (i6 < 0) {
          i3 = i4 - 1;
        }
        for (j = i; localCalendar.get(1) != i3; j = i + localCalendar.get(6))
        {
          j += localCalendar.getActualMaximum(6) - localCalendar.get(6);
          i = j;
          if ((localCalendar instanceof GregorianCalendar))
          {
            i = j;
            if (localCalendar.get(2) == 1)
            {
              i = j;
              if (localCalendar.get(5) == 29) {
                i = j + 1;
              }
            }
          }
          localCalendar.add(1, 1);
        }
        i5 = 0;
      }
      while (localCalendar.get(2) != paramTimeZone.get(2))
      {
        j += localCalendar.getActualMaximum(5);
        localCalendar.add(2, 1);
      }
      i = 0;
      for (;;)
      {
        i3 = i5;
        i4 = i;
        i6 = j;
        if (j >= 0) {
          break;
        }
        j += localCalendar.getActualMaximum(5);
        i -= 1;
        localCalendar.add(2, 1);
      }
    }
    if (!Token.containsTokenWithValue(paramString, d)) {
      j = 0;
    }
    for (int i = i2 + i6 * 24;; i = i2)
    {
      if (!Token.containsTokenWithValue(paramString, H))
      {
        i2 = 0;
        i = i1 + i * 60;
      }
      for (i1 = i2;; i1 = i2)
      {
        if (!Token.containsTokenWithValue(paramString, m))
        {
          i2 = 0;
          i = n + i * 60;
        }
        for (n = i2;; n = i2)
        {
          if (!Token.containsTokenWithValue(paramString, s))
          {
            i2 = 0;
            k += i * 1000;
            i = i2;
          }
          for (;;)
          {
            return format(paramString, i3, i4, j, i1, n, i, k, paramBoolean);
          }
          i2 = i;
          i = n;
        }
        i2 = i;
        i = i1;
      }
      j = i6;
    }
  }
  
  public static String formatPeriodISO(long paramLong1, long paramLong2)
  {
    return formatPeriod(paramLong1, paramLong2, "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.S'S'", false, TimeZone.getDefault());
  }
  
  static Token[] lexx(String paramString)
  {
    ArrayList localArrayList = new ArrayList(paramString.length());
    int j = 0;
    Object localObject3 = null;
    Object localObject2 = null;
    int i = 0;
    if (j < paramString.length())
    {
      char c = paramString.charAt(j);
      int k;
      Object localObject4;
      if ((i != 0) && (c != '\''))
      {
        ((StringBuilder)localObject2).append(c);
        k = i;
        localObject4 = localObject3;
      }
      Object localObject1;
      label199:
      do
      {
        j += 1;
        localObject3 = localObject4;
        i = k;
        break;
        switch (c)
        {
        default: 
          localObject4 = localObject2;
          if (localObject2 == null)
          {
            localObject4 = new StringBuilder();
            localArrayList.add(new Token(localObject4));
          }
          ((StringBuilder)localObject4).append(c);
          localObject1 = null;
          localObject2 = localObject4;
          localObject4 = localObject3;
          k = i;
        }
      } while (localObject1 == null);
      if ((localObject3 != null) && (((Token)localObject3).getValue() == localObject1)) {
        ((Token)localObject3).increment();
      }
      for (;;)
      {
        localObject2 = null;
        localObject4 = localObject3;
        k = i;
        break;
        if (i != 0)
        {
          localObject1 = null;
          localObject2 = null;
          i = 0;
          break label199;
        }
        localObject2 = new StringBuilder();
        localArrayList.add(new Token(localObject2));
        i = 1;
        localObject1 = null;
        break label199;
        localObject1 = y;
        break label199;
        localObject1 = M;
        break label199;
        localObject1 = d;
        break label199;
        localObject1 = H;
        break label199;
        localObject1 = m;
        break label199;
        localObject1 = s;
        break label199;
        localObject1 = S;
        break label199;
        localObject3 = new Token(localObject1);
        localArrayList.add(localObject3);
      }
    }
    if (i != 0) {
      throw new IllegalArgumentException("Unmatched quote in format: " + paramString);
    }
    return (Token[])localArrayList.toArray(new Token[localArrayList.size()]);
  }
  
  private static String paddedValue(long paramLong, boolean paramBoolean, int paramInt)
  {
    String str2 = Long.toString(paramLong);
    String str1 = str2;
    if (paramBoolean) {
      str1 = StringUtils.leftPad(str2, paramInt, '0');
    }
    return str1;
  }
  
  static class Token
  {
    private int count;
    private final Object value;
    
    Token(Object paramObject)
    {
      value = paramObject;
      count = 1;
    }
    
    Token(Object paramObject, int paramInt)
    {
      value = paramObject;
      count = paramInt;
    }
    
    static boolean containsTokenWithValue(Token[] paramArrayOfToken, Object paramObject)
    {
      boolean bool2 = false;
      int j = paramArrayOfToken.length;
      int i = 0;
      for (;;)
      {
        boolean bool1 = bool2;
        if (i < j)
        {
          if (paramArrayOfToken[i].getValue() == paramObject) {
            bool1 = true;
          }
        }
        else {
          return bool1;
        }
        i += 1;
      }
    }
    
    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof Token))
      {
        paramObject = (Token)paramObject;
        if (value.getClass() == value.getClass()) {
          break label31;
        }
      }
      label31:
      do
      {
        do
        {
          return false;
        } while (count != count);
        if ((value instanceof StringBuilder)) {
          return value.toString().equals(value.toString());
        }
        if ((value instanceof Number)) {
          return value.equals(value);
        }
      } while (value != value);
      return true;
    }
    
    int getCount()
    {
      return count;
    }
    
    Object getValue()
    {
      return value;
    }
    
    public int hashCode()
    {
      return value.hashCode();
    }
    
    void increment()
    {
      count += 1;
    }
    
    public String toString()
    {
      return StringUtils.repeat(value.toString(), count);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.time.DurationFormatUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */