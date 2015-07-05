import com.snapchat.android.Timber;

final class tg$1
  implements Runnable
{
  tg$1(tg paramtg) {}
  
  public final void run()
  {
    Timber.b("BaseRetriableScRequestTask", "NETWORK-LOG: %s is executing for %d attempt", new Object[] { getClass().getSimpleName(), Integer.valueOf(this$0.mCurrentRetryAttempt) });
    this$0.f();
  }
}

/* Location:
 * Qualified Name:     tg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */