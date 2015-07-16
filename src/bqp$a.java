import android.os.Process;

final class bqp$a
  extends Thread
{
  public bqp$a(Runnable paramRunnable)
  {
    super(paramRunnable);
  }
  
  public final void run()
  {
    Process.setThreadPriority(10);
    super.run();
  }
}

/* Location:
 * Qualified Name:     bqp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */