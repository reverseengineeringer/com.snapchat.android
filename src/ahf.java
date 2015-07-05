import com.snapchat.android.i18n.LocalePatterns;
import java.util.Locale;

public final class ahf
{
  public static String a(@cgb cgg paramcgg, @cgc Locale paramLocale, boolean paramBoolean)
  {
    Locale localLocale = paramLocale;
    if (paramLocale == null) {
      localLocale = Locale.US;
    }
    if (localLocale.equals(Locale.US)) {
      return a(paramcgg, paramBoolean);
    }
    try
    {
      paramLocale = LocalePatterns.valueOf(localLocale.toString());
      if (paramBoolean) {}
      for (paramLocale = paramLocale.getMonthDayYearPattern();; paramLocale = paramLocale.getMonthDayPattern()) {
        return cjv.a(paramLocale).a(paramcgg);
      }
      return a(paramcgg, paramBoolean);
    }
    catch (IllegalArgumentException paramLocale) {}
  }
  
  private static String a(@cgb cgg paramcgg, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(new cgg.a(paramcgg, b.C()).a(Locale.US));
    localStringBuilder.append(" ");
    localStringBuilder.append(paramcgg.g());
    int i = paramcgg.g();
    String str;
    if (i < 20) {
      switch (i)
      {
      default: 
        str = "th";
      }
    }
    for (;;)
    {
      localStringBuilder.append(str);
      if (paramBoolean)
      {
        localStringBuilder.append(", ");
        localStringBuilder.append(paramcgg.f());
      }
      return localStringBuilder.toString();
      i %= 10;
      break;
      str = "st";
      continue;
      str = "nd";
      continue;
      str = "rd";
    }
  }
}

/* Location:
 * Qualified Name:     ahf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */