final class cat$a
  extends Thread
{
  public cat$a()
  {
    super("Okio Watchdog");
    setDaemon(true);
  }
  
  public final void run()
  {
    try
    {
      for (;;)
      {
        cat localcat = cat.e();
        if (localcat != null) {
          localcat.a();
        }
      }
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     cat.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */