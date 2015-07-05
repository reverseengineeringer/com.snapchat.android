import java.util.Iterator;

@cd
public abstract class dw<E>
  implements Iterator<E>
{
  @Deprecated
  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     dw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */