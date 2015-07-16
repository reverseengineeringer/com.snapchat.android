import java.io.Serializable;

public final class chr
  extends cif
  implements cia, Serializable
{
  public final long a;
  
  public chr()
  {
    a = chk.a();
  }
  
  public chr(long paramLong)
  {
    a = paramLong;
  }
  
  public final chh a()
  {
    return new chh(a, cjd.M());
  }
  
  public final chr b()
  {
    return this;
  }
  
  public final long c()
  {
    return a;
  }
  
  public final chg d()
  {
    return cjd.L();
  }
  
  public final chu e()
  {
    return new chu(a, cjd.M());
  }
}

/* Location:
 * Qualified Name:     chr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */