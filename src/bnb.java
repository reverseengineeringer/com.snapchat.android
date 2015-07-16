import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

public final class bnb
{
  public final String a;
  public final String b;
  public final bmv c;
  public final bnc d;
  final Object e;
  volatile URL f;
  private volatile URI g;
  private volatile bmk h;
  
  private bnb(bnb.a parama)
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
      bno.a();
      localURI = bno.a(a());
      g = localURI;
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      throw new IOException(localURISyntaxException.getMessage());
    }
  }
  
  public final bnb.a c()
  {
    return new bnb.a(this, (byte)0);
  }
  
  public final bmk d()
  {
    bmk localbmk = h;
    if (localbmk != null) {
      return localbmk;
    }
    localbmk = bmk.a(c);
    h = localbmk;
    return localbmk;
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
    public bmv.a d;
    bnc e;
    Object f;
    
    public a()
    {
      c = "GET";
      d = new bmv.a();
    }
    
    private a(bnb parambnb)
    {
      a = a;
      b = f;
      c = b;
      e = d;
      f = e;
      d = c.b();
    }
    
    public final a a(bmk parambmk)
    {
      parambmk = parambmk.toString();
      if (parambmk.isEmpty()) {
        return b("Cache-Control");
      }
      return a("Cache-Control", parambmk);
    }
    
    public final a a(bmv parambmv)
    {
      d = parambmv.b();
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
    
    public final a a(String paramString, bnc parambnc)
    {
      if ((paramString == null) || (paramString.length() == 0)) {
        throw new IllegalArgumentException("method == null || method.length() == 0");
      }
      if ((parambnc != null) && (!bny.b(paramString))) {
        throw new IllegalArgumentException("method " + paramString + " must not have a request body.");
      }
      bnc localbnc = parambnc;
      if (parambnc == null)
      {
        localbnc = parambnc;
        if (bny.b(paramString)) {
          localbnc = bnc.a(null, bnq.a);
        }
      }
      c = paramString;
      e = localbnc;
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
    
    public final bnb a()
    {
      if (a == null) {
        throw new IllegalStateException("url == null");
      }
      return new bnb(this, (byte)0);
    }
    
    public final a b(String paramString)
    {
      d.b(paramString);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     bnb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */