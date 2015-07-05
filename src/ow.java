import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.model.Mediabryo;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

public final class ow
  extends ox
{
  private static final String PATH = "/loq/double_post";
  private static final String TAG = "SendSnapAndPostStorySnapTask";
  private static final String TASK_NAME = "SendSnapAndPostStorySnapTask";
  private oq.a mPostStoryCallback;
  private byte[] mRawThumbnailData;
  private boolean mSnapRequestSuccessful = false;
  private boolean mStoryRequestSuccessful = false;
  private final bfj mVideoMetadataFetcher;
  
  public ow(aim paramaim, ox.a parama, oq.a parama1)
  {
    this(paramaim, parama, parama1, new bfj());
  }
  
  private ow(aim paramaim, ox.a parama, oq.a parama1, bfj parambfj)
  {
    super(paramaim, parama);
    mPostStoryCallback = parama1;
    mVideoMetadataFetcher = parambfj;
    if (ajx.t()) {
      mRawThumbnailData = oq.a(paramaim);
    }
  }
  
  protected final aku a(String... paramVarArgs)
  {
    paramVarArgs = pc.a("/loq/double_post", b(), null);
    super.a(paramVarArgs);
    paramVarArgs = Timber.a(String.format("result json = %s and result = %s", new Object[] { mResultJson, paramVarArgs.toString() })).iterator();
    while (paramVarArgs.hasNext()) {
      Timber.c("SendSnapAndPostStorySnapTask", "%s: %s", new Object[] { "SendSnapAndPostStorySnapTask", (String)paramVarArgs.next() });
    }
    if (mStatusCode == 202)
    {
      if (!TextUtils.isEmpty(mResultJson)) {
        try
        {
          paramVarArgs = (aku)atn.a().fromJson(mResultJson, aku.class);
          if (snap_response.success) {
            mSnapRequestSuccessful = true;
          }
          if (story_response.success) {
            mStoryRequestSuccessful = true;
          }
          return paramVarArgs;
        }
        catch (JsonSyntaxException paramVarArgs)
        {
          mFailureMessage = (paramVarArgs.getMessage() + " in SendSnapAndPostStorySnapTask: " + mResultJson);
          throw new JsonSyntaxException(mFailureMessage);
        }
      }
    }
    else
    {
      if (mStatusCode == 401)
      {
        m401Error = true;
        return null;
      }
      mFailureMessage = mContext.getResources().getString(2131493328);
    }
    return null;
  }
  
  protected final String a()
  {
    return "/loq/double_post";
  }
  
  protected final void a(aku paramaku)
  {
    super.c(paramaku);
    NetworkAnalytics localNetworkAnalytics = mNetworkAnalytics;
    String str1 = mSnapbryo.mClientId;
    int i = mStatusCode;
    long l = mReceivedBytes;
    String str2 = mReachability;
    Object localObject;
    if (paramaku == null)
    {
      localObject = null;
      localNetworkAnalytics.a("SNAP_SENT_DELAY", str1, i, l, str2, (biw)localObject, true);
      localNetworkAnalytics.a("STORY_POST_DELAY", str1, i, l, str2, (biw)localObject, true);
      localNetworkAnalytics.a("SNAP_SENT_SNAP_DUMMY", str1, "/loq/double_post", i, str2);
      if (!mStoryRequestSuccessful) {
        break label263;
      }
      mPostStoryCallback.a(mSnapbryo);
      if (story_response != null)
      {
        localObject = story_response;
        if ((json != null) && (json.story != null)) {
          ajq.a().a(new ajr(json.story));
        }
        if (group_stories != null) {
          ajq.a().c(group_stories);
        }
      }
    }
    for (;;)
    {
      ban.a().a(new bcn());
      ajv.g().a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.MY_POSTED_STORYSNAPS, DbTable.DatabaseTable.MY_SNAP_IMAGE_FILES, DbTable.DatabaseTable.MY_SNAP_VIDEO_FILES, DbTable.DatabaseTable.FAILED_POST_SNAPBRYOS, DbTable.DatabaseTable.SENT_SNAPS, DbTable.DatabaseTable.FAILED_SEND_SNAPBRYOS });
      if (!mSnapRequestSuccessful) {
        break label279;
      }
      super.b(paramaku);
      return;
      localObject = server_info;
      break;
      label263:
      mPostStoryCallback.b(mSnapbryo);
    }
    label279:
    super.a("Failed send snap task", mStatusCode);
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = super.b();
    byte[] arrayOfByte = oq.a(mSnapbryo, mVideoMetadataFetcher);
    oq.a(localBundle, mSnapbryo, arrayOfByte, mRawThumbnailData, ahr.a());
    return localBundle;
  }
  
  protected final String c()
  {
    return "SendSnapAndPostStorySnapTask";
  }
}

/* Location:
 * Qualified Name:     ow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */