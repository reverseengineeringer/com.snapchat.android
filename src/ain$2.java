import android.location.LocationManager;
import java.util.Iterator;
import java.util.List;

final class ain$2
  implements Runnable
{
  ain$2(ain paramain) {}
  
  public final void run()
  {
    ??? = a;
    bhp.b();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      ail localail = (ail)localIterator.next();
      bhp.b();
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
          b.removeUpdates(localail);
          d = false;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          for (;;)
          {
            localIllegalArgumentException.getMessage();
            d = false;
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.getMessage();
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
 * Qualified Name:     ain.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */