import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import java.util.PriorityQueue;

public final class mn
{
  final awo a;
  final afo b;
  protected final ComponentCallbacks2 c = new ComponentCallbacks2()
  {
    public final void onConfigurationChanged(Configuration paramAnonymousConfiguration) {}
    
    public final void onLowMemory()
    {
      awo localawo = a;
      synchronized (mMutex)
      {
        mMonitor.a(-1);
        mBitmapCache.clear();
        apx.a(true);
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
  
  public mn()
  {
    this(awo.a(), afo.a());
  }
  
  private mn(awo paramawo, afo paramafo)
  {
    a = paramawo;
    b = paramafo;
  }
  
  public final void a(Application paramApplication)
  {
    paramApplication.registerComponentCallbacks(c);
  }
}

/* Location:
 * Qualified Name:     mn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */