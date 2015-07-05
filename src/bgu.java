import android.os.Process;

public final class bgu
  implements Runnable
{
  final Runnable a;
  final int b;
  
  public bgu(Runnable paramRunnable, int paramInt)
  {
    a = paramRunnable;
    b = paramInt;
  }
  
  public final void run()
  {
    Process.setThreadPriority(b);
    a.run();
  }
}

/* Location:
 * Qualified Name:     bgu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */