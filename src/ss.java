import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;
import javax.inject.Inject;

public final class ss
  extends sq
{
  private static final String TAG = "UnlinkCardTask";
  @Inject
  xr mCashCardManager;
  private ss.a mUnlinkSuccessListener;
  
  public ss(@cgb ss.a parama)
  {
    SnapchatApplication.b().c().a(this);
    mUnlinkSuccessListener = parama;
  }
  
  public final void a(@cgb uc paramuc)
  {
    Timber.c("UnlinkCardTask", "CASH-LOG: UnlinkCardTask finished with status code %d", new Object[] { Integer.valueOf(mResponseCode) });
    if (mResponseCode == 200)
    {
      ajx.aj();
      mCashCardManager.b();
      mUnlinkSuccessListener.a();
      return;
    }
    mUnlinkSuccessListener.a(mResponseCode);
  }
  
  public final Object b()
  {
    return null;
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.DELETE;
  }
  
  public final String e()
  {
    return "cash/card";
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(int paramInt);
  }
}

/* Location:
 * Qualified Name:     ss
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */