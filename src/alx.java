import android.view.ViewStub;
import com.snapchat.android.Timber;
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

public final class alx
  implements yu
{
  public static final Set<AndroidNotificationManager.Type> g = di.a(AndroidNotificationManager.Type.SNAP, AndroidNotificationManager.Type.CHAT, AndroidNotificationManager.Type.ADDFRIEND, AndroidNotificationManager.Type.REPLAY, AndroidNotificationManager.Type.TYPING, AndroidNotificationManager.Type.SCREENSHOT, new AndroidNotificationManager.Type[] { AndroidNotificationManager.Type.CHAT_SCREENSHOT, AndroidNotificationManager.Type.CASH });
  public static final Set<AndroidNotificationManager.Type> h = di.a(AndroidNotificationManager.Type.SNAP, AndroidNotificationManager.Type.CHAT, AndroidNotificationManager.Type.REPLAY, AndroidNotificationManager.Type.TYPING, AndroidNotificationManager.Type.SCREENSHOT, AndroidNotificationManager.Type.CHAT_SCREENSHOT, new AndroidNotificationManager.Type[] { AndroidNotificationManager.Type.CASH });
  public InAppPromptFlipper a;
  protected boolean b = false;
  public final List<alx.a> c;
  public final AtomicLong d;
  public final Map<String, Long> e;
  public final Map<String, Long> f;
  private boolean i = false;
  private final bgk j;
  private final Bus k;
  
  private alx()
  {
    this(new LinkedList(), new AtomicLong(0L), new bgk(), new ConcurrentHashMap(), new ConcurrentHashMap(), ban.a());
  }
  
  private alx(List<alx.a> paramList, AtomicLong paramAtomicLong, bgk parambgk, Map<String, Long> paramMap1, Map<String, Long> paramMap2, Bus paramBus)
  {
    c = paramList;
    d = paramAtomicLong;
    j = parambgk;
    e = paramMap1;
    f = paramMap2;
    k = paramBus;
  }
  
  private alx.a a(alw paramalw)
  {
    synchronized (c)
    {
      localIterator = c.iterator();
      while (localIterator.hasNext()) {
        if (paramalw.b((alx.a)localIterator.next())) {
          localIterator.remove();
        }
      }
    }
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      alx.a locala = (alx.a)localIterator.next();
      if (paramalw.a(locala)) {
        return locala;
      }
    }
    return null;
  }
  
  public static alx a()
  {
    int m = alx.b.a;
    return alx.b.a();
  }
  
  public final void a(@cgb aio paramaio)
  {
    b = false;
    k.a(new bcb());
  }
  
  public final void a(@cgb aje paramaje) {}
  
  public final void a(@cgb aje paramaje, @cgb aio paramaio)
  {
    b = true;
  }
  
  public final void a(@cgb aje paramaje, @cgb SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt) {}
  
  public final void a(alw arg1, ViewStub paramViewStub)
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
    Timber.b("InAppNotificationPresenter", "displayInAppNotification sender:%s type:%s snapId:%s", new Object[] { a, c.name(), d });
    a(paramViewStub);
    i = true;
    ((InAppPromptView)a.findViewById(2131362397)).set(???);
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
          alx.a(alx.this).a(new bcb());
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
  
  public static final class a
  {
    @cgb
    public final String a;
    @cgb
    public final String b;
    @cgb
    public final AndroidNotificationManager.Type c;
    @r
    public String d;
    public final long e;
    
    public a(@cgb String paramString1, @cgb String paramString2, @cgb AndroidNotificationManager.Type paramType, long paramLong, @r String paramString3)
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
    private static alx b = new alx((byte)0);
  }
}

/* Location:
 * Qualified Name:     alx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */