import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.squareup.otto.Bus;
import java.util.LinkedList;

public final class aal
  implements aaj
{
  private final akr a;
  private final aan b;
  private final Bus c;
  private final LinkedList<Long> d = new LinkedList();
  private boolean e = false;
  
  public aal()
  {
    this(new akr(), new aan(), bbo.a());
  }
  
  private aal(@chc akr paramakr, @chc aan paramaan, @chc Bus paramBus)
  {
    a = paramakr;
    b = paramaan;
    c = paramBus;
    c.c(this);
    akr.bx();
    akr.bz();
  }
  
  public final void a(@chc ajk paramajk) {}
  
  public final void a(@chc aka paramaka, @chc ajk paramajk)
  {
    e = false;
    d.clear();
  }
  
  public final void a(@chc aka paramaka, @chc SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ABORT_REQUESTED) {
      akr.y(true);
    }
  }
  
  public final void d(@chc aka paramaka)
  {
    if (((paramaka instanceof akl)) && (!akr.bz()) && (!e) && (!paramaka.W())) {
      if ((d.size() != 3L) || (((Long)d.peekLast()).longValue() - ((Long)d.peekFirst()).longValue() > 1500L)) {
        break label97;
      }
    }
    label97:
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        e = true;
        b.a(2131493521);
      }
      return;
    }
  }
  
  @bpi
  public final void handleTapWhileViewingEvent(bfi parambfi)
  {
    if (d.size() >= 3L) {
      d.removeFirst();
    }
    d.add(Long.valueOf(eventTimeMilliseconds));
  }
}

/* Location:
 * Qualified Name:     aal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */