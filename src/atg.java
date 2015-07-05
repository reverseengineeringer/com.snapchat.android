import android.content.Context;
import android.content.res.Resources;
import android.os.Message;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;

public class atg
  extends apa
{
  public AnalyticsEvents.AnalyticsContext mAnalyticsContext = AnalyticsEvents.AnalyticsContext.MY_FRIENDS_POPUP;
  private Friend mFriend;
  private Message mOnFriendActionMessage;
  
  public atg(Context paramContext, Friend paramFriend)
  {
    super(paramContext, atx.a(null, 2131493187, new Object[] { paramFriend.h() }), paramFriend.a(), 8193);
    mFriend = paramFriend;
  }
  
  private atg(Context paramContext, String paramString1, String paramString2, Friend paramFriend, @cgc Message paramMessage)
  {
    super(paramContext, paramString1, paramString2, 8193);
    mFriend = paramFriend;
    mOnFriendActionMessage = paramMessage;
    mTextLimit = Integer.valueOf(paramContext.getResources().getInteger(2131427328));
  }
  
  public static atg a(Context paramContext, Friend paramFriend)
  {
    return a(paramContext, paramFriend, null);
  }
  
  public static atg a(Context paramContext, Friend paramFriend, @cgc Message paramMessage)
  {
    return new atg(paramContext, atx.a(null, 2131493187, new Object[0]), paramFriend.a(), paramFriend, paramMessage);
  }
  
  public void a(String paramString)
  {
    String str = mFriend.a();
    mFriend.mDisplayName = paramString.trim();
    paramString = new pp(mFriend, FriendAction.SET_DISPLAY_NAME, str);
    mOnFriendActionMessage = mOnFriendActionMessage;
    mAnalyticsContext = mAnalyticsContext;
    paramString.e().f();
  }
}

/* Location:
 * Qualified Name:     atg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */