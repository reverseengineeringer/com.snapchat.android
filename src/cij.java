import java.io.Serializable;

public abstract class cij
  implements cid, Serializable, Comparable<cij>
{
  public volatile int k;
  
  public cij(int paramInt)
  {
    k = paramInt;
  }
  
  public abstract cho a();
  
  public abstract chv b();
  
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
      if (!(paramObject instanceof cid)) {
        return false;
      }
      paramObject = (cid)paramObject;
    } while ((((cid)paramObject).b() == b()) && (((cid)paramObject).c() == k));
    return false;
  }
  
  public int hashCode()
  {
    return (k + 459) * 27 + a().hashCode();
  }
}

/* Location:
 * Qualified Name:     cij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */