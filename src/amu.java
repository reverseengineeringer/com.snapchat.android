import android.view.ViewStub;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.ui.InAppPromptFlipper;
import com.snapchat.android.ui.InAppPromptView;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

public final class amu
  implements zq
{
  public static final Set<AndroidNotificationManager.Type> g = dr.a(AndroidNotificationManager.Type.SNAP, AndroidNotificationManager.Type.CHAT, AndroidNotificationManager.Type.ADDFRIEND, AndroidNotificationManager.Type.REPLAY, AndroidNotificationManager.Type.TYPING, AndroidNotificationManager.Type.SCREENSHOT, new AndroidNotificationManager.Type[] { AndroidNotificationManager.Type.CHAT_SCREENSHOT, AndroidNotificationManager.Type.CASH });
  public static final Set<AndroidNotificationManager.Type> h = dr.a(AndroidNotificationManager.Type.SNAP, AndroidNotificationManager.Type.CHAT, AndroidNotificationManager.Type.REPLAY, AndroidNotificationManager.Type.TYPING, AndroidNotificationManager.Type.SCREENSHOT, AndroidNotificationManager.Type.CHAT_SCREENSHOT, new AndroidNotificationManager.Type[] { AndroidNotificationManager.Type.CASH });
  public InAppPromptFlipper a;
  protected boolean b = false;
  public final List<amu.a> c;
  public final AtomicLong d;
  public final Map<String, Long> e;
  public final Map<String, Long> f;
  private boolean i = false;
  private final bhk j;
  private final Bus k;
  
  private amu()
  {
    this(new LinkedList(), new AtomicLong(0L), new bhk(), new ConcurrentHashMap(), new ConcurrentHashMap(), bbo.a());
  }
  
  private amu(List<amu.a> paramList, AtomicLong paramAtomicLong, bhk parambhk, Map<String, Long> paramMap1, Map<String, Long> paramMap2, Bus paramBus)
  {
    c = paramList;
    d = paramAtomicLong;
    j = parambhk;
    e = paramMap1;
    f = paramMap2;
    k = paramBus;
  }
  
  private amu.a a(amt paramamt)
  {
    synchronized (c)
    {
      localIterator = c.iterator();
      while (localIterator.hasNext()) {
        if (paramamt.b((amu.a)localIterator.next())) {
          localIterator.remove();
        }
      }
    }
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      amu.a locala = (amu.a)localIterator.next();
      if (paramamt.a(locala)) {
        return locala;
      }
    }
    return null;
  }
  
  public static amu a()
  {
    int m = amu.b.a;
    return amu.b.a();
  }
  
  public final void a(@chc ajk paramajk)
  {
    b = false;
    k.a(new bdb());
  }
  
  public final void a(@chc aka paramaka, @chc ajk paramajk)
  {
    b = true;
  }
  
  public final void a(@chc aka paramaka, @chc SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt) {}
  
  public final void a(amt arg1, ViewStub paramViewStub)
  {
    
    if (??? == null) {}
    do
    {
      do
      {
        return;
      } while ((i) || (b));
      ??? = a(???);
    } while (??? == null);
    String str = a;
    c.name();
    str = d;
    a(paramViewStub);
    i = true;
    ((InAppPromptView)a.findViewById(2131362395)).set(???);
    a.a();
    long l = e;
    synchronized (c)
    {
      paramViewStub = c.iterator();
      while (paramViewStub.hasNext()) {
        if (nexte == l) {
          paramViewStub.remove();
        }
      }
      a.postDelayed(new Runnable()
      {
        public final void run()
        {
          b();
          amu.a(amu.this).a(new bdb());
        }
      }, 2500L);
      return;
    }
  }
  
  public final void a(ViewStub paramViewStub)
  {
    if (a != null) {
      return;
    }
    a = ((InAppPromptFlipper)paramViewStub.inflate());
  }
  
  public final void b()
  {
    
    if (!i) {
      return;
    }
    a.b();
    i = false;
  }
  
  public final void d(@chc aka paramaka) {}
  
  public static final class a
  {
    @chc
    public final String a;
    @chc
    public final String b;
    @chc
    public final AndroidNotificationManager.Type c;
    @r
    public String d;
    public final long e;
    
    public a(@chc String paramString1, @chc String paramString2, @chc AndroidNotificationManager.Type paramType, long paramLong, @r String paramString3)
    {
      a = paramString1;
      b = paramString2;
      c = paramType;
      e = paramLong;
      d = paramString3;
    }
  }
  
  static enum b
  {
    private static amu b = new amu((byte)0);
  }
}

/* Location:
 * Qualified Name:     amu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */