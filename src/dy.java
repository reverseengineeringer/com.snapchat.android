@cd
final class dy<E>
  extends di<E>
{
  private final dj<E> b;
  private final dl<? extends E> c;
  
  private dy(dj<E> paramdj, dl<? extends E> paramdl)
  {
    b = paramdj;
    c = paramdl;
  }
  
  dy(dj<E> paramdj, Object[] paramArrayOfObject)
  {
    this(paramdj, dl.a(paramArrayOfObject));
  }
  
  @ce
  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    return c.a(paramArrayOfObject, paramInt);
  }
  
  public final eg<E> a(int paramInt)
  {
    return c.a(paramInt);
  }
  
  final dj<E> c()
  {
    return b;
  }
  
  public final E get(int paramInt)
  {
    return (E)c.get(paramInt);
  }
}

/* Location:
 * Qualified Name:     dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */