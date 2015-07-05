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

public final class oo
  extends tv
  implements ts.b<oo.a>
{
  public static final String PATH = "/shared/description";
  private static final String TASK_NAME = "GetSharedStoryDescriptionTask";
  String mSharedStoryId;
  private final Handler mUiHandler;
  
  public oo(String paramString)
  {
    this(paramString, new Handler(Looper.getMainLooper()));
  }
  
  private oo(String paramString, Handler paramHandler)
  {
    mSharedStoryId = paramString;
    mUiHandler = paramHandler;
    a(oo.a.class, this);
  }
  
  public final Object b()
  {
    return null;
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.GET;
  }
  
  public final String n_()
  {
    return azm.b("/shared/description") + "/shared/description?shared_id=" + mSharedStoryId + "&ln=" + Locale.getDefault().getLanguage();
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
 * Qualified Name:     oo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */