import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.SuggestState;
import java.util.HashMap;
import java.util.Map;

public final class auj
{
  private static final Map<String, qh> mFriendExistsTaskInstanceMap = new HashMap();
  
  public static Friend a(Friend paramFriend)
  {
    if (paramFriend.l().length() >= 3)
    {
      qh localqh = (qh)mFriendExistsTaskInstanceMap.get(paramFriend.l());
      if (localqh == null)
      {
        localqh = new qh(paramFriend);
        mFriendExistsTaskInstanceMap.put(paramFriend.l(), localqh);
        localqh.execute();
        return paramFriend;
      }
      return mFriend;
    }
    mSuggestionState = Friend.SuggestState.DOES_NOT_EXIST;
    return paramFriend;
  }
}

/* Location:
 * Qualified Name:     auj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */