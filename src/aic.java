import com.snapchat.android.i18n.LocalePatterns;
import java.util.Locale;

public final class aic
{
  public static String a(@chc chh paramchh, @chd Locale paramLocale, boolean paramBoolean)
  {
    Locale localLocale = paramLocale;
    if (paramLocale == null) {
      localLocale = Locale.US;
    }
    if (localLocale.equals(Locale.US)) {
      return a(paramchh, paramBoolean);
    }
    try
    {
      paramLocale = LocalePatterns.valueOf(localLocale.toString());
      if (paramBoolean) {}
      for (paramLocale = paramLocale.getMonthDayYearPattern();; paramLocale = paramLocale.getMonthDayPattern()) {
        return ckw.a(paramLocale).a(paramchh);
      }
      return a(paramchh, paramBoolean);
    }
    catch (IllegalArgumentException paramLocale) {}
  }
  
  private static String a(@chc chh paramchh, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(new chh.a(paramchh, b.C()).a(Locale.US));
    localStringBuilder.append(" ");
    localStringBuilder.append(paramchh.g());
    int i = paramchh.g();
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
        localStringBuilder.append(paramchh.f());
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
 * Qualified Name:     aic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */