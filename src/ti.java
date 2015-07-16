import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.api2.framework.HttpMethod;
import javax.inject.Inject;

public final class ti
  extends tg
{
  private static final String TAG = "UnlinkCardTask";
  @Inject
  yn mCashCardManager;
  private ti.a mUnlinkSuccessListener;
  
  public ti(@chc ti.a parama)
  {
    SnapchatApplication.b().c().a(this);
    mUnlinkSuccessListener = parama;
  }
  
  public final String a()
  {
    return "cash/card";
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.DELETE;
  }
  
  public final Object getRequestPayload()
  {
    return null;
  }
  
  public final void onResult(@chc us paramus)
  {
    int i = mResponseCode;
    if (mResponseCode == 200)
    {
      akr.ai();
      mCashCardManager.b();
      mUnlinkSuccessListener.a();
      return;
    }
    mUnlinkSuccessListener.a(mResponseCode);
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(int paramInt);
  }
}

/* Location:
 * Qualified Name:     ti
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */