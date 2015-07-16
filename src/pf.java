import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.StoryGroup;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class pf
  extends ul
  implements ui.b<pf.a>
{
  public static final String PATH = "/shared/description";
  private static final String TASK_NAME = "GetSharedStoryDescriptionTask";
  String mSharedStoryId;
  private final Handler mUiHandler;
  
  public pf(String paramString)
  {
    this(paramString, new Handler(Looper.getMainLooper()));
  }
  
  private pf(String paramString, Handler paramHandler)
  {
    mSharedStoryId = paramString;
    mUiHandler = paramHandler;
    registerCallback(pf.a.class, this);
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.GET;
  }
  
  public final Object getRequestPayload()
  {
    return null;
  }
  
  public final String getUrl()
  {
    return bal.b("/shared/description") + "/shared/description?shared_id=" + mSharedStoryId + "&ln=" + Locale.getDefault().getLanguage();
  }
  
  public static class a
  {
    @SerializedName("FRIEND")
    public String mFriend;
    @SerializedName("LOCAL_POST_BODY")
    public String mLocalPostBody;
    @SerializedName("LOCAL_POST_TITLE")
    public String mLocalPostTitle;
    @SerializedName("LOCAL_VIEW_BODY")
    public String mLocalViewBody;
    @SerializedName("LOCAL_VIEW_TITLE")
    public String mLocalViewTitle;
    @SerializedName("OUR_SHARED_STORY")
    public String mOurSharedStory;
  }
}

/* Location:
 * Qualified Name:     pf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */