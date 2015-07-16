public abstract class bnl
  implements Runnable
{
  protected final String a;
  
  public bnl(String paramString, Object... paramVarArgs)
  {
    a = String.format(paramString, paramVarArgs);
  }
  
  public abstract void a();
  
  public final void run()
  {
    String str = Thread.currentThread().getName();
    Thread.currentThread().setName(a);
    try
    {
      a();
      return;
    }
    finally
    {
      Thread.currentThread().setName(str);
    }
  }
}

/* Location:
 * Qualified Name:     bnl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */