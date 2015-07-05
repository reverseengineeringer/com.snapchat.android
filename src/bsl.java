import java.net.MalformedURLException;
import java.net.URL;

public final class bsl
{
  private String a;
  private String b;
  
  public bsl(String paramString1, String paramString2)
  {
    paramString1.endsWith("/");
    paramString2.startsWith("/");
    a = paramString1;
    b = paramString2;
  }
  
  public final URL a()
  {
    try
    {
      URL localURL = new URL(a + b);
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      new StringBuilder("Invalid url: ").append(a).append(b);
      btd.b();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bsl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */