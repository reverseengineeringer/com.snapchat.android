public abstract class bss
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
      btd.a(localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     bss
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */