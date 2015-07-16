import android.graphics.Bitmap;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.PostStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Mediabryo.SnapType;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ph
  extends pk
{
  private static final Integer LOCATION_DECIMAL_PLACES_PRECISION = Integer.valueOf(4);
  private static final String PATH = "/bq/post_story";
  private static final String TAG = "PostStorySnapTask";
  private static final String TASK_NAME = "PostStorySnapTask";
  private ain mLocationProvider;
  protected NetworkAnalytics mNetworkAnalytics;
  private ama mNetworkStatusManager;
  protected ph.a mPostStorySnapCallback;
  private byte[] mRawThumbnailData;
  protected boolean mRequestSuccessful = false;
  private final aki mSnapWomb;
  protected aji mSnapbryo;
  private final akk mStoryLibrary;
  protected final bgj mVideoMetadataFetcher;
  
  public ph(aji paramaji, ph.a parama)
  {
    this(paramaji, parama, ain.a(), ama.a(), akk.a(), aki.a(), new bgj());
  }
  
  private ph(aji paramaji, ph.a parama, ain paramain, ama paramama, akk paramakk, aki paramaki, bgj parambgj)
  {
    if (mSnapType != Mediabryo.SnapType.SNAP) {
      throw new IllegalArgumentException("Invalid snap type!");
    }
    mSnapbryo = paramaji;
    mPostStorySnapCallback = parama;
    mNetworkAnalytics = NetworkAnalytics.a();
    mLocationProvider = paramain;
    mNetworkStatusManager = paramama;
    mStoryLibrary = paramakk;
    mSnapWomb = paramaki;
    mVideoMetadataFetcher = parambgj;
    if (akr.t()) {
      mRawThumbnailData = a(paramaji);
    }
  }
  
  private static double a(double paramDouble)
  {
    double d = Math.pow(10.0D, LOCATION_DECIMAL_PLACES_PRECISION.intValue());
    return Math.round(paramDouble * d) / d;
  }
  
  public static void a(@chc Bundle paramBundle, @chc aji paramaji, @chd byte[] paramArrayOfByte1, @chd byte[] paramArrayOfByte2, @chd ain paramain)
  {
    paramBundle.putString("client_id", mClientId);
    paramBundle.putInt("type", paramaji.h());
    paramBundle.putString("time", String.valueOf(mTimerValueOrDuration));
    Object localObject2 = mCaptionText;
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = "";
    }
    paramBundle.putString("caption_text_display", (String)localObject1);
    if (paramArrayOfByte1 != null) {
      paramBundle.putByteArray("thumbnail_data", paramArrayOfByte1);
    }
    paramaji = (akg)mMediaMailingMetadata;
    paramBundle.putLong("story_timestamp", mTimeOfFirstAttempt);
    paramaji = mPostToStories;
    paramBundle.putBoolean("my_story", false);
    if (!paramaji.isEmpty())
    {
      paramArrayOfByte1 = new HashMap();
      localObject1 = paramaji.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ajy)((Iterator)localObject1).next();
        if ((localObject2 instanceof ajw))
        {
          paramBundle.putBoolean("my_story", true);
        }
        else
        {
          paramaji = mGeofence;
          if (paramaji != null) {}
          for (paramaji = mId;; paramaji = "")
          {
            paramArrayOfByte1.put(mStoryId, paramaji);
            break;
          }
        }
      }
      paramBundle.putString("shared_ids", aul.a().toJson(paramArrayOfByte1));
      if (!paramArrayOfByte1.isEmpty())
      {
        if ((akr.t()) && (paramArrayOfByte2 != null)) {
          paramBundle.putByteArray("raw_thumbnail_data", paramArrayOfByte2);
        }
        if (paramain != null)
        {
          paramaji = paramain.d();
          if (paramaji != null)
          {
            paramBundle.putString("lat", Double.toString(a(paramaji.getLatitude())));
            paramBundle.putString("long", Double.toString(a(paramaji.getLongitude())));
          }
        }
      }
    }
  }
  
  public static byte[] a(@chc aji paramaji)
  {
    paramaji = mRawImageBitmap;
    if (paramaji != null) {
      try
      {
        paramaji = avp.d(paramaji);
        return paramaji;
      }
      catch (OutOfMemoryError paramaji) {}
    }
    return null;
  }
  
  public static byte[] a(aji paramaji, bgj parambgj)
  {
    Object localObject = null;
    if ((paramaji.h() == 1) || (paramaji.h() == 2))
    {
      byte[] arrayOfByte = axo.MY_STORY_SNAP_THUMBNAIL_CACHE.a(mClientId);
      String str = axo.MY_SNAP_VIDEO_CACHE.b(mClientId);
      localObject = arrayOfByte;
      if (arrayOfByte == null)
      {
        localObject = arrayOfByte;
        if (str != null)
        {
          Bitmap localBitmap = parambgj.b(str);
          localObject = arrayOfByte;
          if (localBitmap != null)
          {
            localObject = avp.a(localBitmap, mCompositeImageBitmap);
            localBitmap.recycle();
          }
          mTimerValueOrDuration = (parambgj.a(str) / 1000.0D);
        }
      }
    }
    return (byte[])localObject;
  }
  
  protected static void d()
  {
    bbo.a().a(new bdn());
    akp.g().a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.MY_POSTED_STORYSNAPS, DbTable.DatabaseTable.MY_SNAP_IMAGE_FILES, DbTable.DatabaseTable.MY_SNAP_VIDEO_FILES, DbTable.DatabaseTable.FAILED_POST_SNAPBRYOS });
  }
  
  protected alp a(String... paramVarArgs)
  {
    paramVarArgs = pt.a(a(), b(), null);
    super.a(paramVarArgs);
    paramVarArgs = Timber.a(String.format("result json = %s and result = %s", new Object[] { mResultJson, paramVarArgs.toString() })).iterator();
    while (paramVarArgs.hasNext())
    {
      String str = (String)paramVarArgs.next();
      c();
    }
    if (mStatusCode == 202)
    {
      mRequestSuccessful = true;
      if (TextUtils.isEmpty(mResultJson)) {
        break label214;
      }
      try
      {
        paramVarArgs = (alp)aul.a().fromJson(mResultJson, alp.class);
        return paramVarArgs;
      }
      catch (JsonSyntaxException paramVarArgs)
      {
        mFailureMessage = (paramVarArgs.getMessage() + " in " + c() + ": " + mResultJson);
        throw new JsonSyntaxException(mFailureMessage);
      }
    }
    if (mStatusCode == 401)
    {
      m401Error = true;
      return null;
    }
    if (mStatusCode == 404) {
      m404Error = true;
    }
    label214:
    return null;
  }
  
  protected String a()
  {
    return "/bq/post_story";
  }
  
  protected final void a(alp paramalp)
  {
    super.c(paramalp);
    NetworkAnalytics localNetworkAnalytics = mNetworkAnalytics;
    String str1 = mSnapbryo.mClientId;
    int i = mStatusCode;
    long l1 = mReceivedBytes;
    String str2 = mReachability;
    long l2 = mElapsedTime;
    bjx localbjx;
    if (paramalp == null)
    {
      localbjx = null;
      localNetworkAnalytics.a("STORY_POST_DELAY", str1, i, l1, str2, localbjx, false);
      localNetworkAnalytics.a("SNAP_SENT_STORY_DUMMY", str1, "/bq/post_story", i, str2, l2);
      if (!mRequestSuccessful) {
        break label108;
      }
      b(paramalp);
    }
    for (;;)
    {
      d();
      return;
      localbjx = server_info;
      break;
      label108:
      if (m404Error) {
        f();
      } else if (paramalp == null) {
        a("Connection Lost", mStatusCode);
      } else {
        a(message, mStatusCode);
      }
    }
  }
  
  protected final void a(String paramString, int paramInt)
  {
    paramString = mSnapbryo.mMediaMailingMetadata;
    if (!mRetried)
    {
      if (!mNetworkStatusManager.d())
      {
        mSnapWomb.a(mSnapbryo, MediaMailingMetadata.PostStatus.FAILED);
        return;
      }
      mRetried = true;
      e();
      return;
    }
    mPostStorySnapCallback.b(mSnapbryo);
  }
  
  protected Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("username", akr.l());
    localBundle.putString("media_id", mSnapbryo.mClientId);
    po.a(localBundle, mSnapbryo);
    byte[] arrayOfByte = a(mSnapbryo, mVideoMetadataFetcher);
    a(localBundle, mSnapbryo, arrayOfByte, mRawThumbnailData, mLocationProvider);
    return localBundle;
  }
  
  protected final void b(alp paramalp)
  {
    mPostStorySnapCallback.a(mSnapbryo);
    if (json != null) {
      mStoryLibrary.a(new akl(json.story));
    }
    if (group_stories != null) {
      mStoryLibrary.c(group_stories);
    }
  }
  
  protected String c()
  {
    return "PostStorySnapTask";
  }
  
  protected void e()
  {
    new ph(mSnapbryo, mPostStorySnapCallback, mLocationProvider, mNetworkStatusManager, mStoryLibrary, mSnapWomb, mVideoMetadataFetcher).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
  }
  
  protected final void f()
  {
    new pi(mSnapbryo, mPostStorySnapCallback).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
  }
  
  public static abstract interface a
  {
    public abstract void a(aji paramaji);
    
    public abstract void b(aji paramaji);
  }
  
  public final class b
  {
    @SerializedName("story")
    @chd
    public bkh story;
  }
}

/* Location:
 * Qualified Name:     ph
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */