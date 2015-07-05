import org.joda.convert.ToString;

public abstract class che
  implements cgz
{
  public cgg a()
  {
    return new cgg(c(), d().a());
  }
  
  public final boolean a(cgz paramcgz)
  {
    long l = cgj.a(paramcgz);
    return c() < l;
  }
  
  public cgq b()
  {
    return new cgq(c());
  }
  
  public cgt e()
  {
    return new cgt(c(), d().a());
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof cgz)) {
        return false;
      }
      paramObject = (cgz)paramObject;
    } while ((c() == ((cgz)paramObject).c()) && (cjh.a(d(), ((cgz)paramObject).d())));
    return false;
  }
  
  public int hashCode()
  {
    return (int)(c() ^ c() >>> 32) + d().hashCode();
  }
  
  @ToString
  public String toString()
  {
    return ckc.a.b().a(this);
  }
}

/* Location:
 * Qualified Name:     che
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */