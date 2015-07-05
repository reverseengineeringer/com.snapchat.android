public final class bte
  extends Thread
{
  public bte(Runnable paramRunnable)
  {
    super(new bso(paramRunnable));
  }
  
  public bte(Runnable paramRunnable, String paramString)
  {
    super(new bso(paramRunnable), paramString);
  }
}

/* Location:
 * Qualified Name:     bte
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */