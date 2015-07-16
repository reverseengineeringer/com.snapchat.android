import javax.annotation.Nullable;

@cd
final class dz<E>
  extends dl<E>
{
  private final transient int b;
  private final transient int c;
  private final transient Object[] d;
  
  dz(Object[] paramArrayOfObject)
  {
    this(paramArrayOfObject, 0, paramArrayOfObject.length);
  }
  
  private dz(Object[] paramArrayOfObject, int paramInt1, int paramInt2)
  {
    b = paramInt1;
    c = paramInt2;
    d = paramArrayOfObject;
  }
  
  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    System.arraycopy(d, b, paramArrayOfObject, paramInt, c);
    return c + paramInt;
  }
  
  public final eg<E> a(int paramInt)
  {
    return ds.a(d, b, c, paramInt);
  }
  
  final dl<E> b(int paramInt1, int paramInt2)
  {
    return new dz(d, b + paramInt1, paramInt2 - paramInt1);
  }
  
  public final E get(int paramInt)
  {
    co.a(paramInt, c);
    return (E)d[(b + paramInt)];
  }
  
  public final int indexOf(@Nullable Object paramObject)
  {
    int j;
    if (paramObject == null)
    {
      j = -1;
      return j;
    }
    int i = 0;
    for (;;)
    {
      if (i >= c) {
        break label45;
      }
      j = i;
      if (d[(b + i)].equals(paramObject)) {
        break;
      }
      i += 1;
    }
    label45:
    return -1;
  }
  
  public final int lastIndexOf(@Nullable Object paramObject)
  {
    if (paramObject == null) {}
    for (;;)
    {
      return -1;
      int i = c - 1;
      while (i >= 0)
      {
        if (d[(b + i)].equals(paramObject)) {
          return i;
        }
        i -= 1;
      }
    }
  }
  
  public final int size()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     dz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */