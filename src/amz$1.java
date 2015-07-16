import com.snapchat.android.util.eventbus.SnapMessageFeedRefreshedEvent;
import com.squareup.otto.Bus;

final class amz$1
  implements Runnable
{
  amz$1(amz paramamz, us paramus, bhx parambhx) {}
  
  public final void run()
  {
    if ((a.d()) && (b != null))
    {
      c.a(b);
      return;
    }
    amz localamz = c;
    us localus = a;
    bhp.b();
    new StringBuilder("onFailure - ").append(mResponseCode).append(": ").append(mResponseMessage);
    bbo.a().a(new SnapMessageFeedRefreshedEvent(g, mResponseCode));
    bbo.a().a(new bfn(false));
    bbo.a().a(new bfg(g));
  }
}

/* Location:
 * Qualified Name:     amz.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */