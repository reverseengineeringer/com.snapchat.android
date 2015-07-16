import android.content.Context;
import android.text.format.DateUtils;
import com.snapchat.android.SnapchatApplication;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

public final class atz
{
  private static final long MILLISECONDS_IN_ONE_DAY = TimeUnit.DAYS.toMillis(1L);
  private static java.text.DateFormat sTimeFormat = null;
  
  public static String a(long paramLong)
  {
    new bhl();
    chh localchh1 = new chs(System.currentTimeMillis()).a(null);
    chh localchh2 = new chs(paramLong).a(null);
    chm localchm1 = chm.a(localchh2, localchh1);
    StringBuilder localStringBuilder = new StringBuilder();
    if (localchm1 == chm.a) {
      localStringBuilder.append(SnapchatApplication.b().getString(2131492993));
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if (localchm1 == chm.b)
      {
        localStringBuilder.append(SnapchatApplication.b().getString(2131492994));
      }
      else
      {
        chm localchm2 = chm.h;
        int i;
        if (localchm2 == null) {
          if (k < 0) {
            i = 1;
          }
        }
        for (;;)
        {
          if (i == 0) {
            break label191;
          }
          localStringBuilder.append(new chh.a(localchh2, b.t()).a(Locale.getDefault()));
          break;
          i = 0;
          continue;
          if (k < k) {
            i = 1;
          } else {
            i = 0;
          }
        }
        label191:
        if (localchh2.f() != localchh1.f()) {
          localStringBuilder.append(aic.a(localchh2, Locale.getDefault(), true));
        } else {
          localStringBuilder.append(aic.a(localchh2, Locale.getDefault(), false));
        }
      }
    }
  }
  
  public static String a(Context paramContext, long paramLong)
  {
    if (sTimeFormat == null) {
      sTimeFormat = android.text.format.DateFormat.getTimeFormat(paramContext);
    }
    paramContext = sTimeFormat;
    paramContext.setTimeZone(TimeZone.getDefault());
    long l = paramLong;
    if (paramLong == 0L) {
      l = System.currentTimeMillis();
    }
    return paramContext.format(new Date(l));
  }
  
  public static void a(Calendar paramCalendar)
  {
    paramCalendar.set(11, 0);
    paramCalendar.set(12, 0);
    paramCalendar.set(13, 0);
    paramCalendar.set(14, 0);
  }
  
  public static boolean a(long paramLong1, long paramLong2)
  {
    if (Math.abs(paramLong2 - paramLong1) > MILLISECONDS_IN_ONE_DAY) {}
    TimeZone localTimeZone;
    do
    {
      return true;
      localTimeZone = TimeZone.getDefault();
    } while ((localTimeZone.getOffset(paramLong2) + paramLong2) / MILLISECONDS_IN_ONE_DAY != (localTimeZone.getOffset(paramLong1) + paramLong1) / MILLISECONDS_IN_ONE_DAY);
    return false;
  }
  
  public static String b(Context paramContext, long paramLong)
  {
    Long localLong = Long.valueOf(new Date().getTime());
    String str = DateUtils.getRelativeTimeSpanString(paramLong, localLong.longValue(), 60000L).toString();
    long l = Math.abs(localLong.longValue() - paramLong);
    if (l < 60000L) {
      paramContext = paramContext.getString(2131493208);
    }
    do
    {
      return paramContext;
      paramContext = str;
    } while (l <= 86400000L);
    return a(paramLong);
  }
}

/* Location:
 * Qualified Name:     atz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */