final class cgi$a
  extends cgi
{
  private final byte b;
  private final transient cgn c;
  private final transient cgn d;
  
  cgi$a(String paramString, byte paramByte, cgn paramcgn1, cgn paramcgn2)
  {
    super(paramString);
    b = paramByte;
    c = paramcgn1;
    d = paramcgn2;
  }
  
  public final cgh a(cgf paramcgf)
  {
    paramcgf = cgj.a(paramcgf);
    switch (b)
    {
    default: 
      throw new InternalError();
    case 1: 
      return paramcgf.K();
    case 2: 
      return paramcgf.F();
    case 3: 
      return paramcgf.I();
    case 4: 
      return paramcgf.G();
    case 5: 
      return paramcgf.E();
    case 6: 
      return paramcgf.v();
    case 7: 
      return paramcgf.C();
    case 8: 
      return paramcgf.u();
    case 9: 
      return paramcgf.A();
    case 10: 
      return paramcgf.z();
    case 11: 
      return paramcgf.x();
    case 12: 
      return paramcgf.t();
    case 13: 
      return paramcgf.r();
    case 14: 
      return paramcgf.p();
    case 15: 
      return paramcgf.q();
    case 16: 
      return paramcgf.n();
    case 17: 
      return paramcgf.m();
    case 18: 
      return paramcgf.k();
    case 19: 
      return paramcgf.j();
    case 20: 
      return paramcgf.h();
    case 21: 
      return paramcgf.g();
    case 22: 
      return paramcgf.e();
    }
    return paramcgf.d();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof a)) {
        break;
      }
    } while (b == b);
    return false;
    return false;
  }
  
  public final int hashCode()
  {
    return 1 << b;
  }
  
  public final cgn x()
  {
    return c;
  }
  
  public final cgn y()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     cgi.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */