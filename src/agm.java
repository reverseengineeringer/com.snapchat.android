import android.text.TextUtils;
import com.snapchat.android.model.Friend;

public final class agm
  extends age
{
  public final String a(@chc Friend paramFriend)
  {
    return paramFriend.a();
  }
  
  public final String a(@chc Friend paramFriend, boolean paramBoolean)
  {
    if (!TextUtils.isEmpty(mSuggestReasonDisplay)) {
      return auv.a(null, 2131493183, new Object[] { paramFriend.l(), mSuggestReasonDisplay });
    }
    if (mSuggestReason == blo.a.NEW_SNAPCHATTER) {
      return auv.a(null, 2131493184, new Object[] { paramFriend.l() });
    }
    return auv.a(null, 2131493182, new Object[] { paramFriend.l() });
  }
}

/* Location:
 * Qualified Name:     agm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */