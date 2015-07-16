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

public final class pn
  extends po
{
  private static final String PATH = "/loq/double_post";
  private static final String TAG = "SendSnapAndPostStorySnapTask";
  private static final String TASK_NAME = "SendSnapAndPostStorySnapTask";
  private ph.a mPostStoryCallback;
  private byte[] mRawThumbnailData;
  private boolean mSnapRequestSuccessful = false;
  private boolean mStoryRequestSuccessful = false;
  private final bgj mVideoMetadataFetcher;
  
  public pn(aji paramaji, po.a parama, ph.a parama1)
  {
    this(paramaji, parama, parama1, new bgj());
  }
  
  private pn(aji paramaji, po.a parama, ph.a parama1, bgj parambgj)
  {
    super(paramaji, parama);
    mPostStoryCallback = parama1;
    mVideoMetadataFetcher = parambgj;
    if (akr.t()) {
      mRawThumbnailData = ph.a(paramaji);
    }
  }
  
  protected final alp a(String... paramVarArgs)
  {
    paramVarArgs = pt.a("/loq/double_post", b(), null);
    super.a(paramVarArgs);
    paramVarArgs = Timber.a(String.format("result json = %s and result = %s", new Object[] { mResultJson, paramVarArgs.toString() })).iterator();
    while (paramVarArgs.hasNext()) {
      String str = (String)paramVarArgs.next();
    }
    if (mStatusCode == 202)
    {
      if (!TextUtils.isEmpty(mResultJson)) {
        try
        {
          paramVarArgs = (alp)aul.a().fromJson(mResultJson, alp.class);
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
  
  protected final void a(alp paramalp)
  {
    super.c(paramalp);
    NetworkAnalytics localNetworkAnalytics = mNetworkAnalytics;
    String str1 = mSnapbryo.mClientId;
    int i = mStatusCode;
    long l1 = mReceivedBytes;
    String str2 = mReachability;
    long l2 = mElapsedTime;
    Object localObject;
    if (paramalp == null)
    {
      localObject = null;
      localNetworkAnalytics.a("SNAP_SENT_DELAY", str1, i, l1, str2, (bjx)localObject, true);
      localNetworkAnalytics.a("STORY_POST_DELAY", str1, i, l1, str2, (bjx)localObject, true);
      localNetworkAnalytics.a("SNAP_SENT_SNAP_DUMMY", str1, "/loq/double_post", i, str2, l2);
      if (!mStoryRequestSuccessful) {
        break label271;
      }
      mPostStoryCallback.a(mSnapbryo);
      if (story_response != null)
      {
        localObject = story_response;
        if ((json != null) && (json.story != null)) {
          akk.a().a(new akl(json.story));
        }
        if (group_stories != null) {
          akk.a().c(group_stories);
        }
      }
    }
    for (;;)
    {
      bbo.a().a(new bdn());
      akp.g().a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.MY_POSTED_STORYSNAPS, DbTable.DatabaseTable.MY_SNAP_IMAGE_FILES, DbTable.DatabaseTable.MY_SNAP_VIDEO_FILES, DbTable.DatabaseTable.FAILED_POST_SNAPBRYOS, DbTable.DatabaseTable.SENT_SNAPS, DbTable.DatabaseTable.FAILED_SEND_SNAPBRYOS });
      if (!mSnapRequestSuccessful) {
        break label287;
      }
      super.b(paramalp);
      return;
      localObject = server_info;
      break;
      label271:
      mPostStoryCallback.b(mSnapbryo);
    }
    label287:
    super.a("Failed send snap task", mStatusCode);
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = super.b();
    byte[] arrayOfByte = ph.a(mSnapbryo, mVideoMetadataFetcher);
    ph.a(localBundle, mSnapbryo, arrayOfByte, mRawThumbnailData, ain.a());
    return localBundle;
  }
  
  protected final String c()
  {
    return "SendSnapAndPostStorySnapTask";
  }
}

/* Location:
 * Qualified Name:     pn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */