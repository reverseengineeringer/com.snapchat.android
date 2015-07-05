final class bzs$a
  extends Thread
{
  public bzs$a()
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
        bzs localbzs = bzs.e();
        if (localbzs != null) {
          localbzs.a();
        }
      }
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     bzs.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */