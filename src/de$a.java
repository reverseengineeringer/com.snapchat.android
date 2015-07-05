final class de$a
  extends de<E>
{
  final transient int b;
  final transient int c;
  
  de$a(de paramde, int paramInt1, int paramInt2)
  {
    b = paramInt1;
    c = paramInt2;
  }
  
  public final de<E> a(int paramInt1, int paramInt2)
  {
    ck.a(paramInt1, paramInt2, c);
    return d.a(b + paramInt1, b + paramInt2);
  }
  
  public final E get(int paramInt)
  {
    ck.a(paramInt, c);
    return (E)d.get(b + paramInt);
  }
  
  public final int size()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     de.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */