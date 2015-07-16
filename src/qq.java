import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.squareup.otto.Bus;

public final class qq
  extends tx
  implements akp.b, ui.b<bkg>
{
  public static final String PATH = "/bq/stories";
  private static final String TAG = "SyncStoryTask";
  private final Bus mBus;
  private final String mChecksum;
  private bjx mServerInfoResponse;
  private final akr mUserPrefs;
  
  public qq()
  {
    this(bbo.a(), akr.a());
  }
  
  private qq(Bus paramBus, akr paramakr)
  {
    mBus = paramBus;
    mUserPrefs = paramakr;
    mChecksum = akr.ay();
    registerCallback(bkg.class, this);
  }
  
  public final void D_()
  {
    if ((mServerInfoResponse != null) && (mServerInfoResponse.e() == bjx.a.NOT_EQUAL))
    {
      if (TextUtils.equals(mChecksum, akr.ay())) {
        akr.k(mServerInfoResponse.b());
      }
    }
    else {
      return;
    }
    new qq().execute();
  }
  
  public final void execute()
  {
    mBus.a(new bfh());
    super.execute();
  }
  
  protected final String getPath()
  {
    return "/bq/stories";
  }
  
  @ud
  public static final class a
    extends qc
  {
    @SerializedName("checksum")
    String mChecksum;
    @SerializedName("features_map")
    String mFeatureMap;
  }
}

/* Location:
 * Qualified Name:     qq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */