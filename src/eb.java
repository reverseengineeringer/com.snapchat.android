@cd
final class eb<E>
  extends dr<E>
{
  @cf
  final transient Object[] a;
  private final Object[] b;
  private final transient int c;
  private final transient int d;
  
  eb(Object[] paramArrayOfObject1, int paramInt1, Object[] paramArrayOfObject2, int paramInt2)
  {
    b = paramArrayOfObject1;
    a = paramArrayOfObject2;
    c = paramInt2;
    d = paramInt1;
  }
  
  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    System.arraycopy(b, 0, paramArrayOfObject, paramInt, b.length);
    return b.length + paramInt;
  }
  
  public final ef<E> a()
  {
    return ds.a(b);
  }
  
  final boolean c()
  {
    return true;
  }
  
  public final boolean contains(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    int i = dh.a(paramObject.hashCode());
    for (;;)
    {
      Object localObject = a[(c & i)];
      if (localObject == null) {
        return false;
      }
      if (localObject.equals(paramObject)) {
        return true;
      }
      i += 1;
    }
  }
  
  final dl<E> d()
  {
    return new dy(this, b);
  }
  
  public final int hashCode()
  {
    return d;
  }
  
  public final int size()
  {
    return b.length;
  }
}

/* Location:
 * Qualified Name:     eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */