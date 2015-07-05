import java.io.Serializable;

public abstract class chi
  implements chc, Serializable, Comparable<chi>
{
  public volatile int k;
  
  public chi(int paramInt)
  {
    k = paramInt;
  }
  
  public abstract cgn a();
  
  public abstract cgu b();
  
  public final int c()
  {
    return k;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof chc)) {
        return false;
      }
      paramObject = (chc)paramObject;
    } while ((((chc)paramObject).b() == b()) && (((chc)paramObject).c() == k));
    return false;
  }
  
  public int hashCode()
  {
    return (k + 459) * 27 + a().hashCode();
  }
}

/* Location:
 * Qualified Name:     chi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */