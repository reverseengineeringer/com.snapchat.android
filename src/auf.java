import android.content.Context;
import android.content.res.Resources;
import android.os.Message;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;

public class auf
  extends apw
{
  public AnalyticsEvents.AnalyticsContext mAnalyticsContext = AnalyticsEvents.AnalyticsContext.MY_FRIENDS_POPUP;
  private Friend mFriend;
  private Message mOnFriendActionMessage;
  
  public auf(Context paramContext, Friend paramFriend)
  {
    super(paramContext, auv.a(null, 2131493187, new Object[] { paramFriend.l() }), paramFriend.a(), 8193);
    mFriend = paramFriend;
  }
  
  private auf(Context paramContext, String paramString1, String paramString2, Friend paramFriend, @chd Message paramMessage)
  {
    super(paramContext, paramString1, paramString2, 8193);
    mFriend = paramFriend;
    mOnFriendActionMessage = paramMessage;
    mTextLimit = Integer.valueOf(paramContext.getResources().getInteger(2131427328));
  }
  
  public static auf a(Context paramContext, Friend paramFriend)
  {
    return a(paramContext, paramFriend, null);
  }
  
  public static auf a(Context paramContext, Friend paramFriend, @chd Message paramMessage)
  {
    return new auf(paramContext, auv.a(null, 2131493187, new Object[0]), paramFriend.a(), paramFriend, paramMessage);
  }
  
  public void a(String paramString)
  {
    String str = mFriend.a();
    mFriend.mDisplayName = paramString.trim();
    paramString = new qg(mFriend, FriendAction.SET_DISPLAY_NAME, str);
    mOnFriendActionMessage = mOnFriendActionMessage;
    mAnalyticsContext = mAnalyticsContext;
    paramString.a().execute();
  }
}

/* Location:
 * Qualified Name:     auf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */