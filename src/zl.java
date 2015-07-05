import com.snapchat.android.Timber;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.squareup.otto.Bus;
import java.util.LinkedList;

public final class zl
  implements zj
{
  private final ajx a;
  private final zn b;
  private final Bus c;
  private final LinkedList<Long> d = new LinkedList();
  private boolean e = false;
  
  public zl()
  {
    this(new ajx(), new zn(), ban.a());
  }
  
  private zl(@cgb ajx paramajx, @cgb zn paramzn, @cgb Bus paramBus)
  {
    a = paramajx;
    b = paramzn;
    c = paramBus;
    c.c(this);
    Timber.c("SwipeDownToExitTutorial", "Existing values: hasSeenSwipeDownTutorial:%b, hasSwipedDownInViewer:%b", new Object[] { Boolean.valueOf(ajx.bC()), Boolean.valueOf(ajx.bE()) });
  }
  
  public final void a(@cgb aio paramaio) {}
  
  public final void a(@cgb aje paramaje)
  {
    if (((paramaje instanceof ajr)) && (!ajx.bE()) && (!e) && (!paramaje.Y())) {
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
  
  public final void a(@cgb aje paramaje, @cgb aio paramaio)
  {
    e = false;
    d.clear();
  }
  
  public final void a(@cgb aje paramaje, @cgb SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.ABORT_REQUESTED) {
      ajx.z(true);
    }
  }
  
  @boh
  public final void handleTapWhileViewingEvent(bej parambej)
  {
    if (d.size() >= 3L) {
      d.removeFirst();
    }
    d.add(Long.valueOf(eventTimeMilliseconds));
  }
}

/* Location:
 * Qualified Name:     zl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */