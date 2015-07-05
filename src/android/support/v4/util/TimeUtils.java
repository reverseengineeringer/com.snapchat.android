package android.support.v4.util;

import java.io.PrintWriter;

public final class TimeUtils
{
  public static final int HUNDRED_DAY_FIELD_LEN = 19;
  private static final int SECONDS_PER_DAY = 86400;
  private static final int SECONDS_PER_HOUR = 3600;
  private static final int SECONDS_PER_MINUTE = 60;
  private static char[] sFormatStr = new char[24];
  private static final Object sFormatSync = new Object();
  
  private static int accumField(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    if ((paramInt1 > 99) || ((paramBoolean) && (paramInt3 >= 3))) {
      return paramInt2 + 3;
    }
    if ((paramInt1 > 9) || ((paramBoolean) && (paramInt3 >= 2))) {
      return paramInt2 + 2;
    }
    if ((paramBoolean) || (paramInt1 > 0)) {
      return paramInt2 + 1;
    }
    return 0;
  }
  
  public static void formatDuration(long paramLong1, long paramLong2, PrintWriter paramPrintWriter)
  {
    if (paramLong1 == 0L)
    {
      paramPrintWriter.print("--");
      return;
    }
    formatDuration$112769eb(paramLong1 - paramLong2, paramPrintWriter);
  }
  
  public static void formatDuration(long paramLong, PrintWriter paramPrintWriter)
  {
    formatDuration$112769eb(paramLong, paramPrintWriter);
  }
  
  private static void formatDuration(long paramLong, StringBuilder paramStringBuilder)
  {
    synchronized (sFormatSync)
    {
      int i = formatDurationLocked$25666e7(paramLong);
      paramStringBuilder.append(sFormatStr, 0, i);
      return;
    }
  }
  
  private static void formatDuration$112769eb(long paramLong, PrintWriter paramPrintWriter)
  {
    synchronized (sFormatSync)
    {
      int i = formatDurationLocked$25666e7(paramLong);
      paramPrintWriter.print(new String(sFormatStr, 0, i));
      return;
    }
  }
  
  private static int formatDurationLocked$25666e7(long paramLong)
  {
    boolean bool2 = false;
    if (sFormatStr.length < 0) {
      sFormatStr = new char[0];
    }
    char[] arrayOfChar = sFormatStr;
    if (paramLong == 0L)
    {
      arrayOfChar[0] = '0';
      return 1;
    }
    int i;
    int i1;
    int j;
    int k;
    if (paramLong > 0L)
    {
      i = 43;
      i1 = (int)(paramLong % 1000L);
      j = (int)Math.floor(paramLong / 1000L);
      if (j <= 86400) {
        break label271;
      }
      k = j / 86400;
      j -= 86400 * k;
    }
    for (;;)
    {
      int m;
      if (j > 3600)
      {
        m = j / 3600;
        j -= m * 3600;
      }
      for (;;)
      {
        int n;
        if (j > 60)
        {
          n = j / 60;
          j -= n * 60;
        }
        for (;;)
        {
          arrayOfChar[0] = i;
          k = printField$6419d3d2(arrayOfChar, k, 'd', 1, false);
          if (k != 1)
          {
            bool1 = true;
            label153:
            k = printField$6419d3d2(arrayOfChar, m, 'h', k, bool1);
            if (k == 1) {
              break label253;
            }
          }
          label253:
          for (boolean bool1 = true;; bool1 = false)
          {
            k = printField$6419d3d2(arrayOfChar, n, 'm', k, bool1);
            bool1 = bool2;
            if (k != 1) {
              bool1 = true;
            }
            j = printField$6419d3d2(arrayOfChar, i1, 'm', printField$6419d3d2(arrayOfChar, j, 's', k, bool1), true);
            arrayOfChar[j] = 's';
            return j + 1;
            i = 45;
            paramLong = -paramLong;
            break;
            bool1 = false;
            break label153;
          }
          n = 0;
        }
        m = 0;
      }
      label271:
      k = 0;
    }
  }
  
  private static int printField$6419d3d2(char[] paramArrayOfChar, int paramInt1, char paramChar, int paramInt2, boolean paramBoolean)
  {
    int i;
    int j;
    if (!paramBoolean)
    {
      i = paramInt2;
      if (paramInt1 <= 0) {}
    }
    else
    {
      if (paramInt1 <= 99) {
        break label120;
      }
      j = paramInt1 / 100;
      paramArrayOfChar[paramInt2] = ((char)(j + 48));
      i = paramInt2 + 1;
      paramInt1 -= j * 100;
    }
    for (;;)
    {
      int k;
      if (paramInt1 <= 9)
      {
        k = i;
        j = paramInt1;
        if (paramInt2 == i) {}
      }
      else
      {
        paramInt2 = paramInt1 / 10;
        paramArrayOfChar[i] = ((char)(paramInt2 + 48));
        k = i + 1;
        j = paramInt1 - paramInt2 * 10;
      }
      paramArrayOfChar[k] = ((char)(j + 48));
      paramInt1 = k + 1;
      paramArrayOfChar[paramInt1] = paramChar;
      i = paramInt1 + 1;
      return i;
      label120:
      i = paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.util.TimeUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */