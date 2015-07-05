import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.SuggestState;
import java.util.HashMap;
import java.util.Map;

public final class atl
{
  private static final Map<String, pq> mFriendExistsTaskInstanceMap = new HashMap();
  
  public static Friend a(Friend paramFriend)
  {
    if (paramFriend.h().length() >= 3)
    {
      pq localpq = (pq)mFriendExistsTaskInstanceMap.get(paramFriend.h());
      if (localpq == null)
      {
        localpq = new pq(paramFriend);
        mFriendExistsTaskInstanceMap.put(paramFriend.h(), localpq);
        localpq.f();
        return paramFriend;
      }
      return mFriend;
    }
    mSuggestionState = Friend.SuggestState.DOES_NOT_EXIST;
    return paramFriend;
  }
}

/* Location:
 * Qualified Name:     atl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */