import java.util.TimerTask;

final class mx$1
  extends TimerTask
{
  mx$1(mx parammx) {}
  
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
 * Qualified Name:     mx.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */