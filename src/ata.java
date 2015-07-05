import android.content.Context;
import android.text.format.DateUtils;
import com.snapchat.android.SnapchatApplication;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

public final class ata
{
  private static java.text.DateFormat sTimeFormat = null;
  
  public static String a(long paramLong)
  {
    new bgl();
    cgg localcgg1 = new cgr(System.currentTimeMillis()).a(null);
    cgg localcgg2 = new cgr(paramLong).a(null);
    cgl localcgl1 = cgl.a(localcgg2, localcgg1);
    StringBuilder localStringBuilder = new StringBuilder();
    if (localcgl1 == cgl.a) {
      localStringBuilder.append(SnapchatApplication.b().getString(2131492993));
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if (localcgl1 == cgl.b)
      {
        localStringBuilder.append(SnapchatApplication.b().getString(2131492994));
      }
      else
      {
        cgl localcgl2 = cgl.h;
        int i;
        if (localcgl2 == null) {
          if (k < 0) {
            i = 1;
          }
        }
        for (;;)
        {
          if (i == 0) {
            break label191;
          }
          localStringBuilder.append(new cgg.a(localcgg2, b.t()).a(Locale.getDefault()));
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
        if (localcgg2.f() != localcgg1.f()) {
          localStringBuilder.append(ahf.a(localcgg2, Locale.getDefault(), true));
        } else {
          localStringBuilder.append(ahf.a(localcgg2, Locale.getDefault(), false));
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
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    localGregorianCalendar.setTimeInMillis(paramLong1);
    int i = localGregorianCalendar.get(6);
    int j = localGregorianCalendar.get(1);
    localGregorianCalendar.setTimeInMillis(paramLong2);
    int k = localGregorianCalendar.get(6);
    int m = localGregorianCalendar.get(1);
    return (i != k) || (j != m);
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
 * Qualified Name:     ata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */