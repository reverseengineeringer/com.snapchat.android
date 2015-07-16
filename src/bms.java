import java.io.UnsupportedEncodingException;

public final class bms
{
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = cau.a(a":"getBytes"ISO-8859-1"c);
      paramString1 = "Basic " + paramString1;
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new AssertionError();
    }
  }
}

/* Location:
 * Qualified Name:     bms
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */