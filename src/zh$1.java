import android.os.SystemClock;
import com.snapchat.android.Timber;
import java.util.Set;

final class zh$1
  extends zi
{
  zh$1(zh paramzh, ajr paramajr)
  {
    super(paramajr);
  }
  
  protected final void a(ajr paramajr)
  {
    zh localzh = a;
    bgp.a();
    e.remove(paramajr);
    if (e.size() == 0)
    {
      long l = SystemClock.elapsedRealtime() - f;
      Timber.c("StorySnapLoadBatch", "Batch load complete for %s, took %dms", new Object[] { localzh, Long.valueOf(l) });
      g.a(localzh, h, l);
      return;
    }
    Timber.c("StorySnapLoadBatch", "Batch load not complete for %s, waiting for %d more StorySnaps", new Object[] { localzh, Integer.valueOf(e.size()) });
  }
}

/* Location:
 * Qualified Name:     zh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */