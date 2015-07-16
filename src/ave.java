import android.net.NetworkInfo;
import java.io.IOException;
import java.util.concurrent.Callable;

public final class ave
{
  private static final long DEFAULT_INIT_MILLIS = 500L;
  private static final long DEFAULT_MAX_MILLIS = 32000L;
  
  public final <T> Callable<T> a(final Callable<T> paramCallable)
  {
    new Callable()
    {
      public final T call()
      {
        long l = val$initMills;
        try
        {
          Object localObject = paramCallable.call();
          return (T)localObject;
        }
        catch (IOException localIOException) {}
        for (;;)
        {
          try
          {
            NetworkInfo localNetworkInfo = bgp.a();
            if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected())) {
              break label75;
            }
            i = 1;
            if ((i == 0) || (l > val$maxMills)) {
              throw localIOException;
            }
            Thread.sleep(l);
            l = 2L * l;
          }
          catch (InterruptedException localInterruptedException) {}
          break;
          label75:
          int i = 0;
        }
      }
    };
  }
}

/* Location:
 * Qualified Name:     ave
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */