import org.joda.convert.ToString;

public abstract class cif
  implements cia
{
  public chh a()
  {
    return new chh(c(), d().a());
  }
  
  public final boolean a(cia paramcia)
  {
    long l = chk.a(paramcia);
    return c() < l;
  }
  
  public chr b()
  {
    return new chr(c());
  }
  
  public chu e()
  {
    return new chu(c(), d().a());
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof cia)) {
        return false;
      }
      paramObject = (cia)paramObject;
    } while ((c() == ((cia)paramObject).c()) && (cki.a(d(), ((cia)paramObject).d())));
    return false;
  }
  
  public int hashCode()
  {
    return (int)(c() ^ c() >>> 32) + d().hashCode();
  }
  
  @ToString
  public String toString()
  {
    return cld.a.b().a(this);
  }
}

/* Location:
 * Qualified Name:     cif
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */