import com.snapchat.android.Timber;
import java.util.Iterator;
import java.util.List;

final class ahr$1
  implements Runnable
{
  ahr$1(ahr paramahr) {}
  
  public final void run()
  {
    Object localObject = a;
    bgp.b();
    Timber.h("LocationProvider", "Start tracking!", new Object[0]);
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((ahp)localIterator.next()).b();
    }
    localObject = b;
    bgp.b();
    if (d == aho.a) {
      d = System.currentTimeMillis();
    }
  }
}

/* Location:
 * Qualified Name:     ahr.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */