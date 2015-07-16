import android.os.Handler;
import com.addlive.service.AddLiveService;
import com.snapchat.android.livechat.AdlHelper;
import com.snapchat.android.livechat.AdlHelper.b;

final class aif$6
  implements Runnable
{
  aif$6(aif paramaif, boolean paramBoolean) {}
  
  public final void run()
  {
    aif localaif = b;
    boolean bool = a;
    switch (aif.8.a[i.ordinal()])
    {
    }
    do
    {
      do
      {
        return;
        p.removeCallbacks(f);
      } while (bool);
      localaif.f().disconnect(AdlHelper.a("disconnect"), h.a());
      localaif.i();
      i = AdlHelper.b.b;
      return;
      p.removeCallbacks(f);
    } while (!bool);
    if (f == null) {
      f = new aif.7(localaif);
    }
    p.removeCallbacks(f);
    p.postDelayed(f, 3000L);
  }
}

/* Location:
 * Qualified Name:     aif.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */