import java.util.TimerTask;

final class mm$1
  extends TimerTask
{
  mm$1(mm parammm) {}
  
  public final void run()
  {
    synchronized (this$0.mMutex)
    {
      if (this$0.mIsComplete) {
        return;
      }
      this$0.b(null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     mm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */