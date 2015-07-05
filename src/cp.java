@cc
@cd
public abstract class cp
{
  private static final cp a = new cp()
  {
    public final long a()
    {
      return System.nanoTime();
    }
  };
  
  public static cp b()
  {
    return a;
  }
  
  public abstract long a();
}

/* Location:
 * Qualified Name:     cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */