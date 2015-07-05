import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import com.snapchat.android.Timber;
import java.util.PriorityQueue;

final class lv$1
  implements ComponentCallbacks2
{
  lv$1(lv paramlv) {}
  
  public final void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public final void onLowMemory()
  {
    Timber.b("ApplicationMemoryMonitor", "onLowMemory", new Object[0]);
    avq localavq = a.a;
    synchronized (mMutex)
    {
      mMonitor.a(-1);
      Timber.c("BitmapPool", "Clearing bitmap pool", new Object[0]);
      mBitmapCache.clear();
      apb.a(true);
      a.b.evictAll();
      return;
    }
  }
  
  public final void onTrimMemory(int paramInt)
  {
    String str;
    switch (paramInt)
    {
    default: 
      str = "UNKNOWN";
    }
    for (;;)
    {
      Timber.b("ApplicationMemoryMonitor", "onTrimMemory %s", new Object[] { str });
      switch (paramInt)
      {
      default: 
        return;
        str = "TRIM_MEMORY_BACKGROUND";
        continue;
        str = "TRIM_MEMORY_COMPLETE";
        continue;
        str = "TRIM_MEMORY_MODERATE";
        continue;
        str = "TRIM_MEMORY_RUNNING_CRITICAL";
        continue;
        str = "TRIM_MEMORY_RUNNING_LOW";
        continue;
        str = "TRIM_MEMORY_RUNNING_MODERATE";
        continue;
        str = "TRIM_MEMORY_UI_HIDDEN";
      }
    }
    a.a.a(1);
    return;
    a.a.a(2);
    a.b.evictAll();
    return;
    a.a.a(3);
    a.b.evictAll();
  }
}

/* Location:
 * Qualified Name:     lv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */