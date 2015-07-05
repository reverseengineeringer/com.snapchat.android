import com.snapchat.android.Timber;
import com.squareup.otto.Bus;

public final class zn
{
  private final Bus a;
  private final atx b;
  
  public zn()
  {
    this(ban.a(), new atx());
  }
  
  private zn(Bus paramBus, atx paramatx)
  {
    a = paramBus;
    b = paramatx;
  }
  
  public final void a(int paramInt)
  {
    Object localObject = atx.a(paramInt, new Object[0]);
    Timber.c("TutorialToolTipGenerator", "Showing tutorial tool tip: %s", new Object[] { localObject });
    localObject = new bbg(null, (CharSequence)localObject, -1275068416, -1, true, "TutorialToolTipGenerator");
    a.a(localObject);
  }
}

/* Location:
 * Qualified Name:     zn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */