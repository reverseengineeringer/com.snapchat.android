import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class of
{
  public static final String ACTIONS_PARAM = "actions";
  public static final String BEST_FRIENDS_PARAM = "best_friends";
  public static final String EXIT_REASON_PARAM = "exit_reason";
  public static final String FILTERS_ENABLED_PARAM = "filtersEnabled";
  public static final String JUST_ADDED_PARAM = "just_added";
  public static final String ORIENTATION_PARAM = "orientation";
  public static final String OTHER_FRIENDS_PARAM = "other_friends";
  public static final String PREPARE_SNAP_EVENT = "PREPARE_SNAP";
  public static final String RECENT_FRIENDS_PARAM = "recent_friends";
  public static final String SEARCHED_FRIENDS_PARAM = "searched_friends";
  public static final String SELECT_FRIEND_EVENT = "SELECT_FRIEND";
  public static final String SESSION_NUMBER_PARAM = "session_number";
  public static final String SNAP_CAPTURE_EVENT = "SNAP_CAPTURED_TO_PREVIEW";
  public static final String SNAP_MEDIA_CACHE_EVENT = "SNAP_MEDIA_CACHE";
  public static final String STORIES_PARAM = "stories";
  public static final String SUCCESS_PARAM = "success";
  public static final String TYPE_PARAM = "type";
  private static final of sInstance = new of();
  private final EasyMetric.EasyMetricFactory mMetricFactory;
  public final Map<String, EasyMetric> mMetricMap = new ConcurrentHashMap();
  public int mNumBestFriends;
  public int mNumJustAddedFriends;
  public int mNumOtherFriends;
  public int mNumRecentFriends;
  public int mNumSearchedFriends;
  public int mNumSelectFriendSession;
  public int mNumStories;
  public int mNumTotalActions;
  public EasyMetric mPrepareSnapMetric;
  public EasyMetric mSelectFriendMetric;
  public EasyMetric mSnapCaptureMetric;
  
  private of()
  {
    this(new EasyMetric.EasyMetricFactory());
  }
  
  private of(EasyMetric.EasyMetricFactory paramEasyMetricFactory)
  {
    mMetricFactory = paramEasyMetricFactory;
  }
  
  public static of a()
  {
    return sInstance;
  }
  
  public static String b(boolean paramBoolean)
  {
    if (paramBoolean) {
      return "video";
    }
    return "image";
  }
  
  public final void a(String paramString)
  {
    if (mSelectFriendMetric != null)
    {
      mSelectFriendMetric.a("exit_reason", paramString).a("session_number", Integer.valueOf(mNumSelectFriendSession)).a("actions", Integer.valueOf(mNumTotalActions)).a("stories", Integer.valueOf(mNumStories)).a("just_added", Integer.valueOf(mNumJustAddedFriends)).a("recent_friends", Integer.valueOf(mNumRecentFriends)).a("best_friends", Integer.valueOf(mNumBestFriends)).a("other_friends", Integer.valueOf(mNumOtherFriends)).a("searched_friends", Integer.valueOf(mNumSearchedFriends)).b(false);
      mSelectFriendMetric = null;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    boolean bool = akr.aa();
    mSnapCaptureMetric = EasyMetric.EasyMetricFactory.b("SNAP_CAPTURED_TO_PREVIEW").a("type", b(paramBoolean)).a("filtersEnabled", Boolean.valueOf(bool)).b();
  }
  
  public final void b()
  {
    mNumSelectFriendSession = 0;
    c();
  }
  
  public final void c()
  {
    mNumTotalActions = 0;
    mNumStories = 0;
    mNumJustAddedFriends = 0;
    mNumRecentFriends = 0;
    mNumBestFriends = 0;
    mNumOtherFriends = 0;
    mNumSearchedFriends = 0;
  }
  
  public final void d()
  {
    a("back_to_preview");
    c();
  }
}

/* Location:
 * Qualified Name:     of
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */