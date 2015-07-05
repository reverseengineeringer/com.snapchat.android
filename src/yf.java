import android.net.NetworkInfo;
import android.os.Handler;
import android.os.SystemClock;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.model.chat.ChatConversation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class yf
  implements ald
{
  private static yf f;
  public akc a;
  public final yq b;
  public Map<String, Handler> c;
  public boolean d;
  public int e = 0;
  private boolean g;
  
  private yf()
  {
    this(ale.a(), yq.a());
  }
  
  private yf(@cgb ale paramale, @cgb yq paramyq)
  {
    b = paramyq;
    c = new HashMap();
    paramale.a(this);
  }
  
  public static yf a()
  {
    try
    {
      if (f == null) {
        f = new yf();
      }
      yf localyf = f;
      return localyf;
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
  
  public final void a(@cgc NetworkInfo paramNetworkInfo)
  {
    Timber.g("ChatConnectionMonitor", "CHAT-LOG: ChatConnectionMonitor onConnectivityChanged %s", new Object[] { paramNetworkInfo });
    if ((paramNetworkInfo != null) && (paramNetworkInfo.isConnected()) && (g) && (a != null))
    {
      paramNetworkInfo = a.e().iterator();
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
 * Qualified Name:     yf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */