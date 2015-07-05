import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ol
  extends ot
{
  private static final String STORY_ID_PARAM = "story_id";
  private static final String TAG = "DeleteStorySnapTask";
  private static final String TASK_NAME = "DeleteStorySnapTask";
  private final Context mContext;
  private boolean mRequestSuccessful;
  private final ajq mStoryLibrary;
  private ajr mStorySnap;
  private StorySnapLogbook mStorySnapLogbook;
  private final aop mStoryUsageAnalytics;
  
  public ol(StorySnapLogbook paramStorySnapLogbook, Context paramContext)
  {
    this(paramStorySnapLogbook, paramContext, ajq.a(), aop.a());
  }
  
  private ol(StorySnapLogbook paramStorySnapLogbook, Context paramContext, ajq paramajq, aop paramaop)
  {
    mStorySnapLogbook = paramStorySnapLogbook;
    mStorySnap = mStorySnap;
    mContext = paramContext;
    mStoryLibrary = paramajq;
    mStoryUsageAnalytics = paramaop;
  }
  
  protected final aku a(String... paramVarArgs)
  {
    paramVarArgs = pc.a(a(), b(), null);
    mResultJson = paramVarArgs.getString("resultData");
    mStatusCode = paramVarArgs.getInt("statusCode");
    paramVarArgs = Timber.a(String.format("result json = %s and result = %s", new Object[] { mResultJson, paramVarArgs.toString() })).iterator();
    while (paramVarArgs.hasNext()) {
      Timber.c("DeleteStorySnapTask", "%s: %s", new Object[] { "DeleteStorySnapTask", (String)paramVarArgs.next() });
    }
    if (mStatusCode == 204) {
      mRequestSuccessful = true;
    }
    return null;
  }
  
  protected final String a()
  {
    if (!TextUtils.equals(mStorySnapLogbook.mStoryId, "my_story_ads79sdf")) {
      return "/shared/delete_story";
    }
    return "/bq/delete_story";
  }
  
  public void a(aku paramaku)
  {
    if (mRequestSuccessful)
    {
      b(paramaku);
      return;
    }
    a(null, mStatusCode);
  }
  
  public void a(String paramString, int paramInt)
  {
    AlertDialogUtils.a(2131493491, mContext);
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("username", ajx.l());
    localBundle.putString("story_id", mStorySnap.d());
    if (!TextUtils.equals(mStorySnapLogbook.mStoryId, "my_story_ads79sdf")) {
      localBundle.putString("group_id", mStorySnapLogbook.mStoryId);
    }
    return localBundle;
  }
  
  public void b(aku paramaku)
  {
    paramaku = mStorySnapLogbook.mStorySnap;
    Object localObject = new lj();
    storyType = aop.c(paramaku);
    posterId = mUsername;
    storySnapId = paramaku.d();
    if (paramaku.aw()) {
      sponsor = paramaku.ax();
    }
    if (aop.a(paramaku)) {
      geoFence = "LOCAL";
    }
    storySnapId = paramaku.d();
    snapTime = Double.valueOf(paramaku.F());
    ScAnalyticsEventEngine.a((lt)localObject);
    paramaku = mStoryLibrary;
    localObject = mStorySnapLogbook;
    String str = mStoryId;
    StoryGroup localStoryGroup = (StoryGroup)mStories.get(str);
    localStoryGroup.h().remove(localObject);
    mMyPostedStorySnapLogbooksForDatabase.remove(localObject);
    if ((!(localStoryGroup instanceof ajb)) && (localStoryGroup.k() == 0)) {
      mStories.remove(str);
    }
    if (!paramaku.b((StorySnapLogbook)localObject))
    {
      str = mStorySnap.mClientId;
      localObject = mStorySnap.d();
      awq.MY_SNAP_IMAGE_CACHE.c(str);
      awq.MY_SNAP_VIDEO_CACHE.c(str);
      awq.MY_STORY_SNAP_THUMBNAIL_CACHE.c(str);
      ajq.d((String)localObject);
    }
    paramaku.j();
  }
  
  protected final String c()
  {
    return "DeleteStorySnapTask";
  }
}

/* Location:
 * Qualified Name:     ol
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */