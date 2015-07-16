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

public class pc
  extends pk
{
  private static final String STORY_ID_PARAM = "story_id";
  private static final String TAG = "DeleteStorySnapTask";
  private static final String TASK_NAME = "DeleteStorySnapTask";
  private final Context mContext;
  private boolean mRequestSuccessful;
  private final akk mStoryLibrary;
  private akl mStorySnap;
  private StorySnapLogbook mStorySnapLogbook;
  private final apl mStoryUsageAnalytics;
  
  public pc(StorySnapLogbook paramStorySnapLogbook, Context paramContext)
  {
    this(paramStorySnapLogbook, paramContext, akk.a(), apl.a());
  }
  
  private pc(StorySnapLogbook paramStorySnapLogbook, Context paramContext, akk paramakk, apl paramapl)
  {
    mStorySnapLogbook = paramStorySnapLogbook;
    mStorySnap = mStorySnap;
    mContext = paramContext;
    mStoryLibrary = paramakk;
    mStoryUsageAnalytics = paramapl;
  }
  
  protected final alp a(String... paramVarArgs)
  {
    paramVarArgs = pt.a(a(), b(), null);
    mResultJson = paramVarArgs.getString("resultData");
    mStatusCode = paramVarArgs.getInt("statusCode");
    paramVarArgs = Timber.a(String.format("result json = %s and result = %s", new Object[] { mResultJson, paramVarArgs.toString() })).iterator();
    while (paramVarArgs.hasNext()) {
      String str = (String)paramVarArgs.next();
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
  
  public void a(alp paramalp)
  {
    if (mRequestSuccessful)
    {
      b(paramalp);
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
    localBundle.putString("username", akr.l());
    localBundle.putString("story_id", mStorySnap.d());
    if (!TextUtils.equals(mStorySnapLogbook.mStoryId, "my_story_ads79sdf")) {
      localBundle.putString("group_id", mStorySnapLogbook.mStoryId);
    }
    return localBundle;
  }
  
  public void b(alp paramalp)
  {
    paramalp = mStorySnapLogbook.mStorySnap;
    Object localObject = new mb();
    storyType = apl.c(paramalp);
    posterId = mUsername;
    storySnapId = paramalp.d();
    if (apl.a(paramalp)) {
      geoFence = "LOCAL";
    }
    storySnapId = paramalp.d();
    snapTime = Double.valueOf(paramalp.G());
    ScAnalyticsEventEngine.a((ml)localObject);
    paramalp = mStoryLibrary;
    localObject = mStorySnapLogbook;
    String str = mStoryId;
    StoryGroup localStoryGroup = (StoryGroup)mStories.get(str);
    localStoryGroup.h().remove(localObject);
    mMyPostedStorySnapLogbooksForDatabase.remove(localObject);
    if ((!(localStoryGroup instanceof ajx)) && (localStoryGroup.k() == 0)) {
      mStories.remove(str);
    }
    if (!paramalp.b((StorySnapLogbook)localObject))
    {
      str = mStorySnap.mClientId;
      localObject = mStorySnap.d();
      axo.MY_SNAP_IMAGE_CACHE.c(str);
      axo.MY_SNAP_VIDEO_CACHE.c(str);
      axo.MY_STORY_SNAP_THUMBNAIL_CACHE.c(str);
      akk.d((String)localObject);
    }
    paramalp.j();
  }
  
  protected final String c()
  {
    return "DeleteStorySnapTask";
  }
}

/* Location:
 * Qualified Name:     pc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */