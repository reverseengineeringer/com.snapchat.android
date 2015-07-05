import com.snapchat.android.Timber;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.squareup.otto.Bus;

final class arg$2
  implements yy
{
  arg$2(arg paramarg) {}
  
  public final void a(long paramLong)
  {
    a.a(paramLong);
  }
  
  public final void a(aje arg1)
  {
    synchronized (a.k)
    {
      Timber.c("MediaSnapViewSession", "SNAP-VIEW: timer finished for %s (active=%b)", new Object[] { a.c, Boolean.valueOf(a.f()) });
      a.f.a(new bek(a.c instanceof ajr));
      a.a(SnapViewSessionStopReason.TIMER_EXPIRED);
      return;
    }
  }
  
  public final void b(aje paramaje) {}
}

/* Location:
 * Qualified Name:     arg.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */