import javax.inject.Provider;

public final class buq<T>
  implements Provider<T>
{
  private static final Object b;
  private final buo<T> c;
  private volatile Object d = b;
  
  static
  {
    if (!buq.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = new Object();
      return;
    }
  }
  
  private buq(buo<T> parambuo)
  {
    if ((!a) && (parambuo == null)) {
      throw new AssertionError();
    }
    c = parambuo;
  }
  
  public static <T> Provider<T> a(buo<T> parambuo)
  {
    if (parambuo == null) {
      throw new NullPointerException();
    }
    return new buq(parambuo);
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
 * Qualified Name:     buq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */