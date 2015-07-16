import java.util.Locale;

public abstract class avg
{
  public static int a(@chc String paramString)
  {
    int i = 0;
    String str = paramString;
    if (!paramString.isEmpty()) {
      str = paramString.substring(0, 1).toUpperCase(Locale.US);
    }
    if ((str.compareTo("A") < 0) || (str.compareTo("Z") > 0)) {
      i = 1;
    }
    return i;
  }
  
  public static boolean a(@chc String paramString1, String paramString2)
  {
    paramString1 = ats.a(paramString1);
    paramString2 = ats.a(paramString2);
    return paramString1.regionMatches(true, 0, paramString2, 0, paramString2.length());
  }
  
  public static boolean b(@chc String paramString1, String paramString2)
  {
    paramString1 = ats.a(paramString1);
    paramString2 = ats.a(paramString2);
    return paramString1.toLowerCase().contains(paramString2.toLowerCase());
  }
  
  public static boolean c(@chd String paramString1, @chd String paramString2)
  {
    if (paramString1 == paramString2) {
      return true;
    }
    if ((paramString1 == null) || (paramString2 == null) || (paramString1.length() != paramString2.length())) {
      return false;
    }
    return paramString1.equalsIgnoreCase(paramString2);
  }
}

/* Location:
 * Qualified Name:     avg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */