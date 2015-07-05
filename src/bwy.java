public final class bwy
{
  public static String a(String paramString1, String paramString2, String paramString3)
  {
    String str = paramString1;
    if (paramString1 != null)
    {
      int i = paramString1.indexOf(paramString2, 0);
      for (;;)
      {
        str = paramString1;
        if (i < 0) {
          break;
        }
        paramString1 = new StringBuffer(paramString1.substring(0, i) + paramString1.substring(paramString2.length() + i));
        paramString1.insert(i, paramString3);
        paramString1 = paramString1.toString();
        i += paramString3.length();
        if (i < paramString1.length()) {
          i = paramString1.indexOf(paramString2, i);
        } else {
          i = -1;
        }
      }
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     bwy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */