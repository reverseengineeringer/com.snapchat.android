final class cgn$a
  extends cgn
{
  private final byte n;
  
  cgn$a(String paramString, byte paramByte)
  {
    super(paramString);
    n = paramByte;
  }
  
  public final cgm a(cgf paramcgf)
  {
    paramcgf = cgj.a(paramcgf);
    switch (n)
    {
    default: 
      throw new InternalError();
    case 1: 
      return paramcgf.J();
    case 2: 
      return paramcgf.H();
    case 3: 
      return paramcgf.y();
    case 4: 
      return paramcgf.D();
    case 5: 
      return paramcgf.B();
    case 6: 
      return paramcgf.w();
    case 7: 
      return paramcgf.s();
    case 8: 
      return paramcgf.o();
    case 9: 
      return paramcgf.l();
    case 10: 
      return paramcgf.i();
    case 11: 
      return paramcgf.f();
    }
    return paramcgf.c();
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
    } while (n == n);
    return false;
    return false;
  }
  
  public final int hashCode()
  {
    return 1 << n;
  }
}

/* Location:
 * Qualified Name:     cgn.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */