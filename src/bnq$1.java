import java.util.concurrent.ThreadFactory;

final class bnq$1
  implements ThreadFactory
{
  bnq$1(String paramString) {}
  
  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, a);
    paramRunnable.setDaemon(b);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     bnq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */