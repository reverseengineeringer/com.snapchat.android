import com.snapchat.android.Timber;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;

public final class zm
  implements zj
{
  private final ajx a;
  private final zn b;
  private int c = 0;
  private boolean d = false;
  
  public zm()
  {
    this(new ajx(), new zn());
  }
  
  private zm(@cgb ajx paramajx, @cgb zn paramzn)
  {
    a = paramajx;
    b = paramzn;
    Timber.c("TapToSkipTutorial", "Existing values: hasTappedToSkip:%b", new Object[] { Boolean.valueOf(ajx.bB()) });
  }
  
  public final void a(@cgb aio paramaio)
  {
    c = 0;
    d = false;
  }
  
  public final void a(@cgb aje paramaje)
  {
    if (((paramaje instanceof ajr)) && (!d) && (!ajx.bB()) && (c > 5) && (!paramaje.Y()))
    {
      d = true;
      b.a(2131493527);
    }
  }
  
  public final void a(@cgb aje paramaje, @cgb aio paramaio)
  {
    c = 0;
  }
  
  public final void a(@cgb aje paramaje, @cgb SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt)
  {
    if (paramSnapViewSessionStopReason == SnapViewSessionStopReason.SKIP_REQUESTED)
    {
      ajx.y(true);
      return;
    }
    c += 1;
  }
}

/* Location:
 * Qualified Name:     zm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */