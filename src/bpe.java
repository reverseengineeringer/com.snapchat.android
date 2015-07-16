import java.lang.reflect.Method;

public final class bpe
{
  public final Object a;
  public final Method b;
  public boolean c = true;
  private final int d;
  
  bpe(Object paramObject, Method paramMethod)
  {
    if (paramObject == null) {
      throw new NullPointerException("EventHandler target cannot be null.");
    }
    if (paramMethod == null) {
      throw new NullPointerException("EventHandler method cannot be null.");
    }
    a = paramObject;
    b = paramMethod;
    paramMethod.setAccessible(true);
    d = ((paramMethod.hashCode() + 31) * 31 + paramObject.hashCode());
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (bpe)paramObject;
    } while ((b.equals(b)) && (a == a));
    return false;
  }
  
  public final int hashCode()
  {
    return d;
  }
  
  public final String toString()
  {
    return "[EventHandler " + b + "]";
  }
}

/* Location:
 * Qualified Name:     bpe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */