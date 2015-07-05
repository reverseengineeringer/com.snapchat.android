import android.os.Handler;
import com.addlive.service.AddLiveService;
import com.snapchat.android.Timber;

final class ahj$6
  implements Runnable
{
  ahj$6(ahj paramahj, boolean paramBoolean) {}
  
  public final void run()
  {
    ahj localahj = b;
    boolean bool = a;
    Timber.c("livechat", "Got change in reachability connected? ->  " + bool, new Object[0]);
    switch (ahj.8.a[i.ordinal()])
    {
    }
    do
    {
      do
      {
        return;
        o.removeCallbacks(f);
      } while (bool);
      localahj.e().disconnect(ahh.a("disconnect"), h.a());
      localahj.h();
      i = ahh.b.b;
      return;
      o.removeCallbacks(f);
    } while (!bool);
    if (f == null) {
      f = new ahj.7(localahj);
    }
    o.removeCallbacks(f);
    o.postDelayed(f, 3000L);
  }
}

/* Location:
 * Qualified Name:     ahj.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */