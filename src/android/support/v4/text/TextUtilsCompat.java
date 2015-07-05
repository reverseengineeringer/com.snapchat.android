package android.support.v4.text;

import java.util.Locale;
import q;
import r;

public final class TextUtilsCompat
{
  private static String ARAB_SCRIPT_SUBTAG = "Arab";
  private static String HEBR_SCRIPT_SUBTAG = "Hebr";
  public static final Locale ROOT = new Locale("", "");
  
  private static int getLayoutDirectionFromFirstChar(Locale paramLocale)
  {
    switch (Character.getDirectionality(paramLocale.getDisplayName(paramLocale).charAt(0)))
    {
    default: 
      return 0;
    }
    return 1;
  }
  
  public static int getLayoutDirectionFromLocale(@r Locale paramLocale)
  {
    int j = 1;
    if ((paramLocale != null) && (!paramLocale.equals(ROOT)))
    {
      String str = ICUCompat.getScript(ICUCompat.addLikelySubtags(paramLocale.toString()));
      int i;
      if (str == null)
      {
        i = j;
        switch (Character.getDirectionality(paramLocale.getDisplayName(paramLocale).charAt(0)))
        {
        default: 
          i = 0;
        }
      }
      do
      {
        do
        {
          return i;
          i = j;
        } while (str.equalsIgnoreCase(ARAB_SCRIPT_SUBTAG));
        i = j;
      } while (str.equalsIgnoreCase(HEBR_SCRIPT_SUBTAG));
    }
    return 0;
  }
  
  @q
  private static String htmlEncode(@q String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    if (i < paramString.length())
    {
      char c = paramString.charAt(i);
      switch (c)
      {
      default: 
        localStringBuilder.append(c);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("&lt;");
        continue;
        localStringBuilder.append("&gt;");
        continue;
        localStringBuilder.append("&amp;");
        continue;
        localStringBuilder.append("&#39;");
        continue;
        localStringBuilder.append("&quot;");
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.text.TextUtilsCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */