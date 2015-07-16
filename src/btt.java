public abstract class btt
  implements Runnable
{
  public abstract void a();
  
  public final void run()
  {
    try
    {
      a();
      return;
    }
    catch (ThreadDeath localThreadDeath)
    {
      throw localThreadDeath;
    }
    catch (Throwable localThrowable)
    {
      bue.a(localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     btt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */