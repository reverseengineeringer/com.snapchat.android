import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import java.util.PriorityQueue;

final class mn$1
  implements ComponentCallbacks2
{
  mn$1(mn parammn) {}
  
  public final void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public final void onLowMemory()
  {
    awo localawo = a.a;
    synchronized (mMutex)
    {
      mMonitor.a(-1);
      mBitmapCache.clear();
      apx.a(true);
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
 * Qualified Name:     mn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */