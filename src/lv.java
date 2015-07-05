import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import com.snapchat.android.Timber;
import java.util.PriorityQueue;

public final class lv
{
  final avq a;
  final aeo b;
  protected final ComponentCallbacks2 c = new ComponentCallbacks2()
  {
    public final void onConfigurationChanged(Configuration paramAnonymousConfiguration) {}
    
    public final void onLowMemory()
    {
      Timber.b("ApplicationMemoryMonitor", "onLowMemory", new Object[0]);
      avq localavq = a;
      synchronized (mMutex)
      {
        mMonitor.a(-1);
        Timber.c("BitmapPool", "Clearing bitmap pool", new Object[0]);
        mBitmapCache.clear();
        apb.a(true);
        b.evictAll();
        return;
      }
    }
    
    public final void onTrimMemory(int paramAnonymousInt)
    {
      String str;
      switch (paramAnonymousInt)
      {
      default: 
        str = "UNKNOWN";
      }
      for (;;)
      {
        Timber.b("ApplicationMemoryMonitor", "onTrimMemory %s", new Object[] { str });
        switch (paramAnonymousInt)
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
      a.a(1);
      return;
      a.a(2);
      b.evictAll();
      return;
      a.a(3);
      b.evictAll();
    }
  };
  
  public lv()
  {
    this(avq.a(), aeo.a());
  }
  
  private lv(avq paramavq, aeo paramaeo)
  {
    a = paramavq;
    b = paramaeo;
  }
  
  public final void a(Application paramApplication)
  {
    paramApplication.registerComponentCallbacks(c);
  }
}

/* Location:
 * Qualified Name:     lv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */