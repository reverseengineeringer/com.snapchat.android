import android.net.NetworkInfo;
import android.os.Handler;
import android.os.SystemClock;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class zb
  implements alz
{
  private static zb f;
  public akx a;
  public final zm b;
  public Map<String, Handler> c;
  public boolean d;
  public int e = 0;
  private boolean g;
  
  private zb()
  {
    this(ama.a(), zm.a());
  }
  
  private zb(@chc ama paramama, @chc zm paramzm)
  {
    b = paramzm;
    c = new HashMap();
    paramama.a(this);
  }
  
  public static zb a()
  {
    try
    {
      if (f == null) {
        f = new zb();
      }
      zb localzb = f;
      return localzb;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (f != null)
      {
        Iterator localIterator = fc.values().iterator();
        while (localIterator.hasNext()) {
          ((Handler)localIterator.next()).removeCallbacksAndMessages(null);
        }
        f = null;
      }
    }
    finally {}
  }
  
  public final void a(@chd NetworkInfo paramNetworkInfo)
  {
    if ((paramNetworkInfo != null) && (paramNetworkInfo.isConnected()) && (g) && (a != null))
    {
      paramNetworkInfo = a.f().iterator();
      while (paramNetworkInfo.hasNext()) {
        ((ChatConversation)paramNetworkInfo.next()).a(3, null);
      }
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    g = paramBoolean;
    if (paramBoolean)
    {
      e = 0;
      return;
    }
    new EasyMetric("CHAT_SESSIONS_ESTABLISHED").a("count", Integer.valueOf(e));
  }
}

/* Location:
 * Qualified Name:     zb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */