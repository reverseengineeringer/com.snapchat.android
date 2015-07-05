import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.squareup.otto.Bus;

public final class qa
  extends th
  implements ajv.b, ts.b<bjf>
{
  public static final String PATH = "/bq/stories";
  private static final String TAG = "SyncStoryTask";
  private final Bus mBus;
  private final String mChecksum;
  private biw mServerInfoResponse;
  private final ajx mUserPrefs;
  
  public qa()
  {
    this(ban.a(), ajx.a());
  }
  
  private qa(Bus paramBus, ajx paramajx)
  {
    mBus = paramBus;
    mUserPrefs = paramajx;
    mChecksum = ajx.az();
    a(bjf.class, this);
  }
  
  public final void D_()
  {
    if ((mServerInfoResponse != null) && (mServerInfoResponse.e() == biw.a.NOT_EQUAL))
    {
      if (TextUtils.equals(mChecksum, ajx.az())) {
        ajx.k(mServerInfoResponse.b());
      }
    }
    else {
      return;
    }
    new qa().f();
  }
  
  protected final String d()
  {
    return "/bq/stories";
  }
  
  public final void f()
  {
    mBus.a(new bei());
    super.f();
  }
  
  @tn
  public static final class a
    extends pl
  {
    @SerializedName("checksum")
    String mChecksum;
    @SerializedName("features_map")
    String mFeatureMap;
  }
}

/* Location:
 * Qualified Name:     qa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */