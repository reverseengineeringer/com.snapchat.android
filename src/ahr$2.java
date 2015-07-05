import android.location.LocationManager;
import com.snapchat.android.Timber;
import java.util.Iterator;
import java.util.List;

final class ahr$2
  implements Runnable
{
  ahr$2(ahr paramahr) {}
  
  public final void run()
  {
    ??? = a;
    bgp.b();
    Timber.h("LocationProvider", "Stop tracking!", new Object[0]);
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      ahp localahp = (ahp)localIterator.next();
      bgp.b();
      e = false;
      synchronized (c)
      {
        if (d)
        {
          boolean bool = a.equals("passive");
          if (bool) {}
        }
        try
        {
          b.removeUpdates(localahp);
          d = false;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          for (;;)
          {
            Timber.h("LocationListener", localIllegalArgumentException.getMessage(), new Object[0]);
            d = false;
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            Timber.h("LocationListener", localException.getMessage(), new Object[0]);
            d = false;
          }
        }
        finally
        {
          d = false;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     ahr.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */