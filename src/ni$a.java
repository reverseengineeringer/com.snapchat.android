import java.util.TimerTask;

final class ni$a
  extends TimerTask
{
  private ni$a(ni paramni) {}
  
  public final void run()
  {
    synchronized (this$0.mMutex)
    {
      if (this$0.c()) {
        this$0.d(this$0.mNextPosition);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ni.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */