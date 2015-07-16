public final class bnd$a
{
  public bnb a;
  public bna b;
  public int c = -1;
  public String d;
  public bmu e;
  bmv.a f;
  public bne g;
  bnd h;
  bnd i;
  bnd j;
  
  public bnd$a()
  {
    f = new bmv.a();
  }
  
  private bnd$a(bnd parambnd)
  {
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f.b();
    g = g;
    h = h;
    i = i;
    j = j;
  }
  
  private static void a(String paramString, bnd parambnd)
  {
    if (g != null) {
      throw new IllegalArgumentException(paramString + ".body != null");
    }
    if (h != null) {
      throw new IllegalArgumentException(paramString + ".networkResponse != null");
    }
    if (i != null) {
      throw new IllegalArgumentException(paramString + ".cacheResponse != null");
    }
    if (j != null) {
      throw new IllegalArgumentException(paramString + ".priorResponse != null");
    }
  }
  
  public final a a(bmv parambmv)
  {
    f = parambmv.b();
    return this;
  }
  
  public final a a(bnd parambnd)
  {
    if (parambnd != null) {
      a("networkResponse", parambnd);
    }
    h = parambnd;
    return this;
  }
  
  public final a a(String paramString1, String paramString2)
  {
    f.b(paramString1, paramString2);
    return this;
  }
  
  public final bnd a()
  {
    if (a == null) {
      throw new IllegalStateException("request == null");
    }
    if (b == null) {
      throw new IllegalStateException("protocol == null");
    }
    if (c < 0) {
      throw new IllegalStateException("code < 0: " + c);
    }
    return new bnd(this, (byte)0);
  }
  
  public final a b(bnd parambnd)
  {
    if (parambnd != null) {
      a("cacheResponse", parambnd);
    }
    i = parambnd;
    return this;
  }
  
  public final a b(String paramString1, String paramString2)
  {
    f.a(paramString1, paramString2);
    return this;
  }
  
  public final a c(bnd parambnd)
  {
    if ((parambnd != null) && (g != null)) {
      throw new IllegalArgumentException("priorResponse.body != null");
    }
    j = parambnd;
    return this;
  }
}

/* Location:
 * Qualified Name:     bnd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */