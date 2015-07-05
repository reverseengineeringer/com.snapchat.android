import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

public final class bma
{
  final String a;
  public final String b;
  public final blu c;
  public final bmb d;
  final Object e;
  volatile URL f;
  private volatile URI g;
  private volatile blj h;
  
  private bma(bma.a parama)
  {
    a = a;
    b = c;
    c = d.a();
    d = e;
    if (f != null) {}
    for (Object localObject = f;; localObject = this)
    {
      e = localObject;
      f = b;
      return;
    }
  }
  
  public final String a(String paramString)
  {
    return c.a(paramString);
  }
  
  public final URL a()
  {
    try
    {
      URL localURL = f;
      if (localURL != null) {
        return localURL;
      }
      localURL = new URL(a);
      f = localURL;
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      throw new RuntimeException("Malformed URL: " + a, localMalformedURLException);
    }
  }
  
  public final URI b()
  {
    try
    {
      URI localURI = g;
      if (localURI != null) {
        return localURI;
      }
      bmn.a();
      localURI = bmn.a(a());
      g = localURI;
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      throw new IOException(localURISyntaxException.getMessage());
    }
  }
  
  public final bma.a c()
  {
    return new bma.a(this, (byte)0);
  }
  
  public final blj d()
  {
    blj localblj = h;
    if (localblj != null) {
      return localblj;
    }
    localblj = blj.a(c);
    h = localblj;
    return localblj;
  }
  
  public final boolean e()
  {
    return a().getProtocol().equals("https");
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Request{method=").append(b).append(", url=").append(a).append(", tag=");
    if (e != this) {}
    for (Object localObject = e;; localObject = null) {
      return localObject + '}';
    }
  }
  
  public static final class a
  {
    String a;
    URL b;
    String c;
    public blu.a d;
    bmb e;
    Object f;
    
    public a()
    {
      c = "GET";
      d = new blu.a();
    }
    
    private a(bma parambma)
    {
      a = a;
      b = f;
      c = b;
      e = d;
      f = e;
      d = c.b();
    }
    
    public final a a(blj paramblj)
    {
      paramblj = paramblj.toString();
      if (paramblj.isEmpty()) {
        return b("Cache-Control");
      }
      return a("Cache-Control", paramblj);
    }
    
    public final a a(blu paramblu)
    {
      d = paramblu.b();
      return this;
    }
    
    public final a a(String paramString)
    {
      if (paramString == null) {
        throw new IllegalArgumentException("url == null");
      }
      a = paramString;
      b = null;
      return this;
    }
    
    public final a a(String paramString, bmb parambmb)
    {
      if ((paramString == null) || (paramString.length() == 0)) {
        throw new IllegalArgumentException("method == null || method.length() == 0");
      }
      if ((parambmb != null) && (!bmx.b(paramString))) {
        throw new IllegalArgumentException("method " + paramString + " must not have a request body.");
      }
      bmb localbmb = parambmb;
      if (parambmb == null)
      {
        localbmb = parambmb;
        if (bmx.b(paramString)) {
          localbmb = bmb.a(null, bmp.a);
        }
      }
      c = paramString;
      e = localbmb;
      return this;
    }
    
    public final a a(String paramString1, String paramString2)
    {
      d.b(paramString1, paramString2);
      return this;
    }
    
    public final a a(URL paramURL)
    {
      b = paramURL;
      a = paramURL.toString();
      return this;
    }
    
    public final bma a()
    {
      if (a == null) {
        throw new IllegalStateException("url == null");
      }
      return new bma(this, (byte)0);
    }
    
    public final a b(String paramString)
    {
      d.b(paramString);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     bma
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */