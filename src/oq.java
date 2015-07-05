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

public class oq
  extends ot
{
  private static final Integer LOCATION_DECIMAL_PLACES_PRECISION = Integer.valueOf(4);
  private static final String PATH = "/bq/post_story";
  private static final String TAG = "PostStorySnapTask";
  private static final String TASK_NAME = "PostStorySnapTask";
  private ahr mLocationProvider;
  protected NetworkAnalytics mNetworkAnalytics;
  private ale mNetworkStatusManager;
  protected oq.a mPostStorySnapCallback;
  private byte[] mRawThumbnailData;
  protected boolean mRequestSuccessful = false;
  private final ajn mSnapWomb;
  protected aim mSnapbryo;
  private final ajq mStoryLibrary;
  protected final bfj mVideoMetadataFetcher;
  
  public oq(aim paramaim, oq.a parama)
  {
    this(paramaim, parama, ahr.a(), ale.a(), ajq.a(), ajn.a(), new bfj());
  }
  
  private oq(aim paramaim, oq.a parama, ahr paramahr, ale paramale, ajq paramajq, ajn paramajn, bfj parambfj)
  {
    if (mSnapType != Mediabryo.SnapType.SNAP) {
      throw new IllegalArgumentException("Invalid snap type!");
    }
    mSnapbryo = paramaim;
    mPostStorySnapCallback = parama;
    mNetworkAnalytics = NetworkAnalytics.a();
    mLocationProvider = paramahr;
    mNetworkStatusManager = paramale;
    mStoryLibrary = paramajq;
    mSnapWomb = paramajn;
    mVideoMetadataFetcher = parambfj;
    if (ajx.t()) {
      mRawThumbnailData = a(paramaim);
    }
  }
  
  private static double a(double paramDouble)
  {
    double d = Math.pow(10.0D, LOCATION_DECIMAL_PLACES_PRECISION.intValue());
    return Math.round(paramDouble * d) / d;
  }
  
  public static void a(@cgb Bundle paramBundle, @cgb aim paramaim, @cgc byte[] paramArrayOfByte1, @cgc byte[] paramArrayOfByte2, @cgc ahr paramahr)
  {
    paramBundle.putString("client_id", mClientId);
    paramBundle.putInt("type", paramaim.h());
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
    paramaim = (ajk)mMediaMailingMetadata;
    paramBundle.putLong("story_timestamp", mTimeOfFirstAttempt);
    paramaim = mPostToStories;
    paramBundle.putBoolean("my_story", false);
    if (!paramaim.isEmpty())
    {
      paramArrayOfByte1 = new HashMap();
      localObject1 = paramaim.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ajc)((Iterator)localObject1).next();
        if ((localObject2 instanceof aja))
        {
          paramBundle.putBoolean("my_story", true);
        }
        else
        {
          paramaim = mGeofence;
          if (paramaim != null) {}
          for (paramaim = mId;; paramaim = "")
          {
            paramArrayOfByte1.put(mStoryId, paramaim);
            break;
          }
        }
      }
      paramBundle.putString("shared_ids", atn.a().toJson(paramArrayOfByte1));
      if (!paramArrayOfByte1.isEmpty())
      {
        if ((ajx.t()) && (paramArrayOfByte2 != null)) {
          paramBundle.putByteArray("raw_thumbnail_data", paramArrayOfByte2);
        }
        if (paramahr != null)
        {
          paramaim = paramahr.d();
          if (paramaim != null)
          {
            paramBundle.putString("lat", Double.toString(a(paramaim.getLatitude())));
            paramBundle.putString("long", Double.toString(a(paramaim.getLongitude())));
          }
        }
      }
    }
  }
  
  public static byte[] a(@cgb aim paramaim)
  {
    paramaim = mRawImageBitmap;
    if (paramaim != null) {
      try
      {
        paramaim = aur.d(paramaim);
        return paramaim;
      }
      catch (OutOfMemoryError paramaim)
      {
        Timber.a("PostStorySnapTask", paramaim);
      }
    }
    return null;
  }
  
  public static byte[] a(aim paramaim, bfj parambfj)
  {
    Object localObject = null;
    if ((paramaim.h() == 1) || (paramaim.h() == 2))
    {
      byte[] arrayOfByte = awq.MY_STORY_SNAP_THUMBNAIL_CACHE.a(mClientId);
      String str = awq.MY_SNAP_VIDEO_CACHE.b(mClientId);
      localObject = arrayOfByte;
      if (arrayOfByte == null)
      {
        localObject = arrayOfByte;
        if (str != null)
        {
          Bitmap localBitmap = parambfj.b(str);
          localObject = arrayOfByte;
          if (localBitmap != null)
          {
            localObject = aur.a(localBitmap, mCompositeImageBitmap);
            localBitmap.recycle();
          }
          mTimerValueOrDuration = (parambfj.a(str) / 1000.0D);
        }
      }
    }
    return (byte[])localObject;
  }
  
  protected static void d()
  {
    ban.a().a(new bcn());
    ajv.g().a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.MY_POSTED_STORYSNAPS, DbTable.DatabaseTable.MY_SNAP_IMAGE_FILES, DbTable.DatabaseTable.MY_SNAP_VIDEO_FILES, DbTable.DatabaseTable.FAILED_POST_SNAPBRYOS });
  }
  
  protected aku a(String... paramVarArgs)
  {
    paramVarArgs = pc.a(a(), b(), null);
    super.a(paramVarArgs);
    paramVarArgs = Timber.a(String.format("result json = %s and result = %s", new Object[] { mResultJson, paramVarArgs.toString() })).iterator();
    while (paramVarArgs.hasNext())
    {
      String str = (String)paramVarArgs.next();
      Timber.c("PostStorySnapTask", "%s: %s", new Object[] { c(), str });
    }
    if (mStatusCode == 202)
    {
      mRequestSuccessful = true;
      if (TextUtils.isEmpty(mResultJson)) {
        break label232;
      }
      try
      {
        paramVarArgs = (aku)atn.a().fromJson(mResultJson, aku.class);
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
    label232:
    return null;
  }
  
  protected String a()
  {
    return "/bq/post_story";
  }
  
  protected final void a(aku paramaku)
  {
    super.c(paramaku);
    NetworkAnalytics localNetworkAnalytics = mNetworkAnalytics;
    String str1 = mSnapbryo.mClientId;
    int i = mStatusCode;
    long l = mReceivedBytes;
    String str2 = mReachability;
    biw localbiw;
    if (paramaku == null)
    {
      localbiw = null;
      localNetworkAnalytics.a("STORY_POST_DELAY", str1, i, l, str2, localbiw, false);
      localNetworkAnalytics.a("SNAP_SENT_STORY_DUMMY", str1, "/bq/post_story", i, str2);
      if (!mRequestSuccessful) {
        break label100;
      }
      b(paramaku);
    }
    for (;;)
    {
      d();
      return;
      localbiw = server_info;
      break;
      label100:
      if (m404Error) {
        f();
      } else if (paramaku == null) {
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
    localBundle.putString("username", ajx.l());
    localBundle.putString("media_id", mSnapbryo.mClientId);
    ox.a(localBundle, mSnapbryo);
    byte[] arrayOfByte = a(mSnapbryo, mVideoMetadataFetcher);
    a(localBundle, mSnapbryo, arrayOfByte, mRawThumbnailData, mLocationProvider);
    return localBundle;
  }
  
  protected final void b(aku paramaku)
  {
    mPostStorySnapCallback.a(mSnapbryo);
    if (json != null) {
      mStoryLibrary.a(new ajr(json.story));
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
    new oq(mSnapbryo, mPostStorySnapCallback, mLocationProvider, mNetworkStatusManager, mStoryLibrary, mSnapWomb, mVideoMetadataFetcher).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
  }
  
  protected final void f()
  {
    new or(mSnapbryo, mPostStorySnapCallback).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
  }
  
  public static abstract interface a
  {
    public abstract void a(aim paramaim);
    
    public abstract void b(aim paramaim);
  }
  
  public final class b
  {
    @SerializedName("story")
    @cgc
    public bjg story;
  }
}

/* Location:
 * Qualified Name:     oq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */