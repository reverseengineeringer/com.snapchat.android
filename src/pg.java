import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent;
import com.snapchat.android.util.eventbus.LoadSnapMediaEvent.LoadSnapMediaEventType;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Provider;

public final class pg
{
  public static final String BROADCAST_SNAP_URL_PREFIX = "https://storage.googleapis.com/broadcasts/";
  public static final int DEFAULT_NUM_TO_LOAD = 3;
  private static final String TAG = "LoadSnapMediaTask";
  private final amp.a mCallback = new amp.a()
  {
    public final void a(amp.b paramAnonymousb)
    {
      a(a, paramAnonymousb.a(), b);
    }
  };
  private final amp mMediaDownloader = new amp();
  private final AtomicInteger mNumExecutingLoadSnapMediaTask;
  private String mReachability;
  private final AtomicBoolean mShouldLogFirstSnap;
  private aka mSnap;
  private long mStartMillis;
  private akp mUser;
  private final Provider<akp> mUserProvider;
  
  public pg(aka paramaka)
  {
    this(paramaka, new AtomicBoolean(false), new AtomicInteger(0), akp.UNSAFE_USER_PROVIDER);
  }
  
  public pg(aka paramaka, AtomicBoolean paramAtomicBoolean, AtomicInteger paramAtomicInteger, Provider<akp> paramProvider)
  {
    mSnap = paramaka;
    mNumExecutingLoadSnapMediaTask = paramAtomicInteger;
    mShouldLogFirstSnap = paramAtomicBoolean;
    mUserProvider = paramProvider;
  }
  
  private static boolean a(aka paramaka)
  {
    if ((paramaka instanceof ajj))
    {
      paramaka = mMediaUrl;
      if ((!TextUtils.isEmpty(paramaka)) && (paramaka.toLowerCase().startsWith("https://storage.googleapis.com/broadcasts/"))) {
        return true;
      }
    }
    return false;
  }
  
  @cdn
  public final void a()
  {
    localObject2 = null;
    mUser = ((akp)mUserProvider.get());
    if (mUser == null)
    {
      a(null, false, null);
      return;
    }
    mSnap.m();
    bbo.a().a(new LoadSnapMediaEvent(LoadSnapMediaEvent.LoadSnapMediaEventType.INITIATED));
    mStartMillis = SystemClock.elapsedRealtime();
    mReachability = bgp.b();
    if (mShouldLogFirstSnap.get()) {
      mNumExecutingLoadSnapMediaTask.getAndIncrement();
    }
    for (;;)
    {
      try
      {
        localObject1 = mSnap;
        if (!a((aka)localObject1)) {
          continue;
        }
        localObject1 = mMediaUrl;
        localObject3 = mSnap;
        if (!a((aka)localObject3)) {
          continue;
        }
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        Object localObject1;
        a(null, false, null);
        return;
        localObject2 = new pg.a();
        id = ((aka)localObject3).d();
        continue;
        Object localObject3 = mMediaDownloader;
        aka localaka = mSnap;
        amp.a locala = mCallback;
        ((amp)localObject3).a(localaka, localNoSuchAlgorithmException, localObject2, axo.SNAP_RECEIVED_IMAGE_CACHE, "FEED", DownloadPriority.HIGH, DownloadPriority.BACKGROUND_HIGHEST, locala);
        return;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        continue;
      }
      if (!mSnap.ag()) {
        continue;
      }
      localObject3 = mMediaDownloader;
      localaka = mSnap;
      locala = mCallback;
      ((amp)localObject3).a(localaka, (String)localObject1, localObject2, axo.SNAP_RECEIVED_VIDEO_CACHE, "FEED", DownloadPriority.HIGH, DownloadPriority.BACKGROUND_HIGHEST, locala);
      return;
      localObject1 = bal.b("/ph/blob") + "/ph/blob";
    }
  }
  
  @cdn
  protected final void a(us paramus, boolean paramBoolean, Exception paramException)
  {
    
    if ((paramus != null) && (mResponseCode == 410))
    {
      mSnap.j();
      mSnap.d();
      mSnap.o();
      new ErrorMetric("SNAP_MEDIA_DOWNLOAD_410_HTTP_GONE").e();
    }
    for (;;)
    {
      bbo.a().a(new LoadSnapMediaEvent(LoadSnapMediaEvent.LoadSnapMediaEventType.ENDED));
      return;
      if ((paramException instanceof axq))
      {
        bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493068));
        if (mSnap.A()) {}
      }
      else
      {
        do
        {
          mSnap.l();
          break;
          if ((paramBoolean) && (!mSnap.A()))
          {
            if (mShouldLogFirstSnap.getAndSet(false)) {
              new EasyMetric("FIRST_SNAP_DOWNLOAD").a("num_executing_snap_requests", Integer.valueOf(mNumExecutingLoadSnapMediaTask.getAndSet(0))).a("reachability", mReachability).a(SystemClock.elapsedRealtime() - mStartMillis).a(false);
            }
            mSnap.n();
            if (mSnap.ag())
            {
              mUser.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.CONVERSATION, DbTable.DatabaseTable.RECEIVED_SNAP_VIDEO_FILES });
              break;
            }
            mUser.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.CONVERSATION, DbTable.DatabaseTable.RECEIVED_SNAP_IMAGE_FILES });
            break;
          }
          if (paramBoolean) {
            break;
          }
        } while (!mSnap.A());
        bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493490));
      }
    }
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("id")
    String id;
    
    public a() {}
  }
}

/* Location:
 * Qualified Name:     pg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */