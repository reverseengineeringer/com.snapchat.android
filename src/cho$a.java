final class cho$a
  extends cho
{
  private final byte n;
  
  cho$a(String paramString, byte paramByte)
  {
    super(paramString);
    n = paramByte;
  }
  
  public final chn a(chg paramchg)
  {
    paramchg = chk.a(paramchg);
    switch (n)
    {
    default: 
      throw new InternalError();
    case 1: 
      return paramchg.J();
    case 2: 
      return paramchg.H();
    case 3: 
      return paramchg.y();
    case 4: 
      return paramchg.D();
    case 5: 
      return paramchg.B();
    case 6: 
      return paramchg.w();
    case 7: 
      return paramchg.s();
    case 8: 
      return paramchg.o();
    case 9: 
      return paramchg.l();
    case 10: 
      return paramchg.i();
    case 11: 
      return paramchg.f();
    }
    return paramchg.c();
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
 * Qualified Name:     cho.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */