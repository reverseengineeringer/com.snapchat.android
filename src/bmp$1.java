import java.util.concurrent.ThreadFactory;

final class bmp$1
  implements ThreadFactory
{
  bmp$1(String paramString) {}
  
  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, a);
    paramRunnable.setDaemon(b);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     bmp.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */