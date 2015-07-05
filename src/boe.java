import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class boe
{
  public final Object a;
  public boolean b = true;
  private final Method c;
  private final int d;
  
  boe(Object paramObject, Method paramMethod)
  {
    if (paramObject == null) {
      throw new NullPointerException("EventProducer target cannot be null.");
    }
    if (paramMethod == null) {
      throw new NullPointerException("EventProducer method cannot be null.");
    }
    a = paramObject;
    c = paramMethod;
    paramMethod.setAccessible(true);
    d = ((paramMethod.hashCode() + 31) * 31 + paramObject.hashCode());
  }
  
  public final Object a()
  {
    if (!b) {
      throw new IllegalStateException(toString() + " has been invalidated and can no longer produce events.");
    }
    try
    {
      Object localObject = c.invoke(a, new Object[0]);
      return localObject;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((localInvocationTargetException.getCause() instanceof Error)) {
        throw ((Error)localInvocationTargetException.getCause());
      }
      throw localInvocationTargetException;
    }
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
      paramObject = (boe)paramObject;
    } while ((c.equals(c)) && (a == a));
    return false;
  }
  
  public final int hashCode()
  {
    return d;
  }
  
  public final String toString()
  {
    return "[EventProducer " + c + "]";
  }
}

/* Location:
 * Qualified Name:     boe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */