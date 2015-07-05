import android.os.SystemClock;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.Timber;
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

public final class op
{
  public static final String BROADCAST_SNAP_URL_PREFIX = "https://storage.googleapis.com/broadcasts/";
  public static final int DEFAULT_NUM_TO_LOAD = 3;
  private static final String TAG = "LoadSnapMediaTask";
  private final als.a mCallback = new als.a()
  {
    public final void a(als.b paramAnonymousb)
    {
      a(a, paramAnonymousb.a(), b);
    }
  };
  private final als mMediaDownloader = new als();
  private final AtomicInteger mNumExecutingLoadSnapMediaTask;
  private String mReachability;
  private final AtomicBoolean mShouldLogFirstSnap;
  private aje mSnap;
  private long mStartMillis;
  private ajv mUser;
  private final Provider<ajv> mUserProvider;
  
  public op(aje paramaje)
  {
    this(paramaje, new AtomicBoolean(false), new AtomicInteger(0), ajv.UNSAFE_USER_PROVIDER);
  }
  
  public op(aje paramaje, AtomicBoolean paramAtomicBoolean, AtomicInteger paramAtomicInteger, Provider<ajv> paramProvider)
  {
    mSnap = paramaje;
    mNumExecutingLoadSnapMediaTask = paramAtomicInteger;
    mShouldLogFirstSnap = paramAtomicBoolean;
    mUserProvider = paramProvider;
  }
  
  private static boolean a(aje paramaje)
  {
    if ((paramaje instanceof ain))
    {
      paramaje = mMediaUrl;
      if ((!TextUtils.isEmpty(paramaje)) && (paramaje.toLowerCase().startsWith("https://storage.googleapis.com/broadcasts/"))) {
        return true;
      }
    }
    return false;
  }
  
  @ccm
  public final void a()
  {
    localObject2 = null;
    mUser = ((ajv)mUserProvider.get());
    if (mUser == null)
    {
      a(null, false, null);
      return;
    }
    mSnap.m();
    ban.a().a(new LoadSnapMediaEvent(LoadSnapMediaEvent.LoadSnapMediaEventType.INITIATED));
    mStartMillis = SystemClock.elapsedRealtime();
    mReachability = bfp.b();
    if (mShouldLogFirstSnap.get()) {
      mNumExecutingLoadSnapMediaTask.getAndIncrement();
    }
    for (;;)
    {
      try
      {
        localObject1 = mSnap;
        if (!a((aje)localObject1)) {
          continue;
        }
        localObject1 = mMediaUrl;
        localObject3 = mSnap;
        if (!a((aje)localObject3)) {
          continue;
        }
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        Object localObject1;
        Timber.a("LoadSnapMediaTask", localNoSuchAlgorithmException);
        a(null, false, null);
        return;
        localObject2 = new op.a();
        id = ((aje)localObject3).d();
        continue;
        Object localObject3 = mMediaDownloader;
        aje localaje = mSnap;
        als.a locala = mCallback;
        ((als)localObject3).a(localaje, localNoSuchAlgorithmException, localObject2, awq.SNAP_RECEIVED_IMAGE_CACHE, "FEED", DownloadPriority.HIGH, DownloadPriority.BACKGROUND_HIGHEST, locala);
        return;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        continue;
      }
      if (!mSnap.ai()) {
        continue;
      }
      localObject3 = mMediaDownloader;
      localaje = mSnap;
      locala = mCallback;
      ((als)localObject3).a(localaje, (String)localObject1, localObject2, awq.SNAP_RECEIVED_VIDEO_CACHE, "FEED", DownloadPriority.HIGH, DownloadPriority.BACKGROUND_HIGHEST, locala);
      return;
      localObject1 = azm.b("/ph/blob") + "/ph/blob";
    }
  }
  
  @ccm
  protected final void a(uc paramuc, boolean paramBoolean, Exception paramException)
  {
    
    if ((paramuc != null) && (mResponseCode == 410))
    {
      Timber.b("LoadSnapMediaTask", "SNAP-LOG: MARKING snap from %s as viewed (HTTP-GONE) (%s)", new Object[] { mSnap.j(), mSnap.d() });
      mSnap.o();
      new ErrorMetric("SNAP_MEDIA_DOWNLOAD_410_HTTP_GONE").d();
    }
    for (;;)
    {
      ban.a().a(new LoadSnapMediaEvent(LoadSnapMediaEvent.LoadSnapMediaEventType.ENDED));
      return;
      if ((paramException instanceof aws))
      {
        ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493068));
        if (mSnap.z()) {}
      }
      else
      {
        do
        {
          mSnap.l();
          break;
          if ((paramBoolean) && (!mSnap.z()))
          {
            if (mShouldLogFirstSnap.getAndSet(false)) {
              new EasyMetric("FIRST_SNAP_DOWNLOAD").a("num_executing_snap_requests", Integer.valueOf(mNumExecutingLoadSnapMediaTask.getAndSet(0))).a("reachability", mReachability).a(SystemClock.elapsedRealtime() - mStartMillis).a(false);
            }
            mSnap.n();
            if (mSnap.ai())
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
        } while (!mSnap.z());
        ban.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493490));
      }
    }
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("id")
    String id;
    
    public a() {}
  }
}

/* Location:
 * Qualified Name:     op
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */