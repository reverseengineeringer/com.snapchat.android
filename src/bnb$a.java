import java.net.URL;

public final class bnb$a
{
  String a;
  URL b;
  String c;
  public bmv.a d;
  bnc e;
  Object f;
  
  public bnb$a()
  {
    c = "GET";
    d = new bmv.a();
  }
  
  private bnb$a(bnb parambnb)
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

/* Location:
 * Qualified Name:     bnb.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */