import java.net.URL;

public final class bma$a
{
  String a;
  URL b;
  String c;
  public blu.a d;
  bmb e;
  Object f;
  
  public bma$a()
  {
    c = "GET";
    d = new blu.a();
  }
  
  private bma$a(bma parambma)
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

/* Location:
 * Qualified Name:     bma.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */