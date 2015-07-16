import java.net.URL;

public final class boc
{
  public static String a(bna parambna)
  {
    if (parambna == bna.a) {
      return "HTTP/1.0";
    }
    return "HTTP/1.1";
  }
  
  public static String a(URL paramURL)
  {
    String str = paramURL.getFile();
    if (str == null) {
      paramURL = "/";
    }
    do
    {
      return paramURL;
      paramURL = str;
    } while (str.startsWith("/"));
    return "/" + str;
  }
}

/* Location:
 * Qualified Name:     boc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */