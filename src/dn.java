import java.lang.reflect.Array;

@cd
public final class dn
{
  static final Object[] a = new Object[0];
  
  static Object a(Object paramObject, int paramInt)
  {
    if (paramObject == null) {
      throw new NullPointerException(20 + "at index " + paramInt);
    }
    return paramObject;
  }
  
  public static <T> T[] a(T[] paramArrayOfT, int paramInt)
  {
    return (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), paramInt);
  }
  
  static <T> T[] b(T[] paramArrayOfT, int paramInt)
  {
    Object[] arrayOfObject = a(paramArrayOfT, paramInt);
    System.arraycopy(paramArrayOfT, 0, arrayOfObject, 0, Math.min(paramArrayOfT.length, paramInt));
    return arrayOfObject;
  }
}

/* Location:
 * Qualified Name:     dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */