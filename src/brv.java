public final class brv
{
  public static final brv a = new brv();
  private volatile int b = 1;
  private final long c = System.currentTimeMillis();
  
  private int b()
  {
    try
    {
      int i = b;
      b = (i + 1);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final String a()
  {
    return "1." + c + "." + b();
  }
}

/* Location:
 * Qualified Name:     brv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */