final class chj$a
  extends chj
{
  private final byte b;
  private final transient cho c;
  private final transient cho d;
  
  chj$a(String paramString, byte paramByte, cho paramcho1, cho paramcho2)
  {
    super(paramString);
    b = paramByte;
    c = paramcho1;
    d = paramcho2;
  }
  
  public final chi a(chg paramchg)
  {
    paramchg = chk.a(paramchg);
    switch (b)
    {
    default: 
      throw new InternalError();
    case 1: 
      return paramchg.K();
    case 2: 
      return paramchg.F();
    case 3: 
      return paramchg.I();
    case 4: 
      return paramchg.G();
    case 5: 
      return paramchg.E();
    case 6: 
      return paramchg.v();
    case 7: 
      return paramchg.C();
    case 8: 
      return paramchg.u();
    case 9: 
      return paramchg.A();
    case 10: 
      return paramchg.z();
    case 11: 
      return paramchg.x();
    case 12: 
      return paramchg.t();
    case 13: 
      return paramchg.r();
    case 14: 
      return paramchg.p();
    case 15: 
      return paramchg.q();
    case 16: 
      return paramchg.n();
    case 17: 
      return paramchg.m();
    case 18: 
      return paramchg.k();
    case 19: 
      return paramchg.j();
    case 20: 
      return paramchg.h();
    case 21: 
      return paramchg.g();
    case 22: 
      return paramchg.e();
    }
    return paramchg.d();
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
  
  public final cho x()
  {
    return c;
  }
  
  public final cho y()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     chj.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */