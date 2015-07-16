import android.net.NetworkInfo;
import java.io.IOException;
import java.util.concurrent.Callable;

final class ave$1
  implements Callable<T>
{
  ave$1(ave paramave, Callable paramCallable) {}
  
  public final T call()
  {
    long l = val$initMills;
    try
    {
      Object localObject = val$callable.call();
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
}

/* Location:
 * Qualified Name:     ave.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */