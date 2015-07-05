import android.content.Context;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.api2.SendDSnapTask.c;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.notification.AndroidNotificationManager;

public final class abw
  extends tg
  implements ts.b<String>
{
  private final String TAG = "SendDSnapWithMediaTask";
  private Context mContext = SnapchatApplication.b();
  private byte[] mData;
  private awr mDiscoverShareCacheWrapper;
  private final aev mDiscoverSharingUtils;
  private final AndroidNotificationManager mNotificationManager;
  private SendDSnapTask.c mSendSnapCallback;
  private final ajn mSnapWomb;
  private aim mSnapbryo;
  
  public abw(@cgb aim paramaim, @cgb SendDSnapTask.c paramc)
  {
    this(paramaim, paramc, awr.a.a(), ajn.a(), AndroidNotificationManager.a(), new aev());
  }
  
  private abw(@cgb aim paramaim, @cgb SendDSnapTask.c paramc, @cgb awr paramawr, @cgb ajn paramajn, @cgb AndroidNotificationManager paramAndroidNotificationManager, @cgb aev paramaev)
  {
    mSnapbryo = paramaim;
    mDiscoverShareCacheWrapper = paramawr;
    mSendSnapCallback = paramc;
    mSnapWomb = paramajn;
    mNotificationManager = paramAndroidNotificationManager;
    mDiscoverSharingUtils = paramaev;
    a(String.class, this);
  }
  
  protected final String d()
  {
    return "/ph/upload";
  }
  
  @caq
  @cgb
  public final uc i()
  {
    mData = mDiscoverShareCacheWrapper.a(mSnapbryo);
    if (mData == null)
    {
      ajn.a().a(mSnapbryo);
      Timber.f("SendDSnapWithMediaTask", "Snap media is no longer accessible :(", new Object[0]);
      aev.a(false, mSnapbryo.mClientId);
      uc.a locala = new uc.a(n_(), bfp.b());
      mCaughtException = new Exception("Snap media is no longer accessible");
      return locala.a();
    }
    return super.i();
  }
  
  @ty
  public final class a
  {
    @SerializedName("data")
    ti data;
    @SerializedName("media_id")
    ul mMediaId;
    @SerializedName("req_token")
    ul mRequestToken;
    @SerializedName("timestamp")
    ul mTimestamp;
    @SerializedName("type")
    ul mType;
    @SerializedName("username")
    ul mUsername;
    
    public a(String paramString)
    {
      mTimestamp = new ul(paramString);
      mRequestToken = new ul(os.a(paramString));
      mUsername = new ul(ajx.l());
      mMediaId = new ul(amClientId);
      mType = new ul(Integer.toString(4));
      data = new ti(abw.b(abw.this));
    }
  }
  
  public static final class b
    extends Exception
  {}
}

/* Location:
 * Qualified Name:     abw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */