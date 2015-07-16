import javax.inject.Provider;

public final class bvr<T>
  implements Provider<T>
{
  private static final Object b;
  private final bvp<T> c;
  private volatile Object d = b;
  
  static
  {
    if (!bvr.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = new Object();
      return;
    }
  }
  
  private bvr(bvp<T> parambvp)
  {
    if ((!a) && (parambvp == null)) {
      throw new AssertionError();
    }
    c = parambvp;
  }
  
  public static <T> Provider<T> a(bvp<T> parambvp)
  {
    if (parambvp == null) {
      throw new NullPointerException();
    }
    return new bvr(parambvp);
  }
  
  public final T get()
  {
    Object localObject1 = d;
    if (localObject1 == b) {
      try
      {
        Object localObject2 = d;
        localObject1 = localObject2;
        if (localObject2 == b)
        {
          localObject1 = c.get();
          d = localObject1;
        }
        return (T)localObject1;
      }
      finally {}
    }
    return ?;
  }
}

/* Location:
 * Qualified Name:     bvr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */