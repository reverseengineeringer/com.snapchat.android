import java.util.Locale;

public abstract class aui
{
  public static int a(@cgb String paramString)
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
  
  public static boolean a(@cgb String paramString1, String paramString2)
  {
    paramString1 = ast.a(paramString1);
    paramString2 = ast.a(paramString2);
    return paramString1.regionMatches(true, 0, paramString2, 0, paramString2.length());
  }
  
  public static boolean b(@cgb String paramString1, String paramString2)
  {
    paramString1 = ast.a(paramString1);
    paramString2 = ast.a(paramString2);
    return paramString1.toLowerCase().contains(paramString2.toLowerCase());
  }
  
  public static boolean c(@cgc String paramString1, @cgc String paramString2)
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
 * Qualified Name:     aui
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */