import android.content.Context;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.discover.api2.SendDSnapTask.c;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.notification.AndroidNotificationManager;

public final class acw
  extends tw
  implements ui.b<String>
{
  private final String TAG = "SendDSnapWithMediaTask";
  private Context mContext = SnapchatApplication.b();
  private byte[] mData;
  private axp mDiscoverShareCacheWrapper;
  private final afv mDiscoverSharingUtils;
  private final AndroidNotificationManager mNotificationManager;
  private SendDSnapTask.c mSendSnapCallback;
  private final aki mSnapWomb;
  private aji mSnapbryo;
  
  public acw(@chc aji paramaji, @chc SendDSnapTask.c paramc)
  {
    this(paramaji, paramc, axp.a.a(), aki.a(), AndroidNotificationManager.a(), new afv());
  }
  
  private acw(@chc aji paramaji, @chc SendDSnapTask.c paramc, @chc axp paramaxp, @chc aki paramaki, @chc AndroidNotificationManager paramAndroidNotificationManager, @chc afv paramafv)
  {
    mSnapbryo = paramaji;
    mDiscoverShareCacheWrapper = paramaxp;
    mSendSnapCallback = paramc;
    mSnapWomb = paramaki;
    mNotificationManager = paramAndroidNotificationManager;
    mDiscoverSharingUtils = paramafv;
    registerCallback(String.class, this);
  }
  
  @cbr
  @chc
  public final us executeSynchronously()
  {
    mData = mDiscoverShareCacheWrapper.a(mSnapbryo);
    if (mData == null)
    {
      aki.a().a(mSnapbryo);
      afv.a(false, mSnapbryo.mClientId);
      us.a locala = new us.a(getUrl(), bgp.b());
      mCaughtException = new Exception("Snap media is no longer accessible");
      return locala.a();
    }
    return super.executeSynchronously();
  }
  
  protected final String getPath()
  {
    return "/ph/upload";
  }
  
  @uo
  public final class a
  {
    @SerializedName("data")
    ty data;
    @SerializedName("media_id")
    vc mMediaId;
    @SerializedName("req_token")
    vc mRequestToken;
    @SerializedName("timestamp")
    vc mTimestamp;
    @SerializedName("type")
    vc mType;
    @SerializedName("username")
    vc mUsername;
    
    public a(String paramString)
    {
      mTimestamp = new vc(paramString);
      mRequestToken = new vc(pj.a(paramString));
      mUsername = new vc(akr.l());
      mMediaId = new vc(amClientId);
      mType = new vc(Integer.toString(4));
      data = new ty(acw.b(acw.this));
    }
  }
  
  public static final class b
    extends Exception
  {}
}

/* Location:
 * Qualified Name:     acw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */