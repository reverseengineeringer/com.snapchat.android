@cd
final class dp<E>
  extends da<E>
{
  private final dc<E> b;
  private final de<? extends E> c;
  
  private dp(dc<E> paramdc, de<? extends E> paramde)
  {
    b = paramdc;
    c = paramde;
  }
  
  dp(dc<E> paramdc, Object[] paramArrayOfObject) {}
  
  @ce
  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    return c.a(paramArrayOfObject, paramInt);
  }
  
  public final dx<E> a(int paramInt)
  {
    return c.a(paramInt);
  }
  
  final dc<E> c()
  {
    return b;
  }
  
  public final E get(int paramInt)
  {
    return (E)c.get(paramInt);
  }
}

/* Location:
 * Qualified Name:     dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */