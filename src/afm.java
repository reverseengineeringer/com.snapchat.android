import com.snapchat.android.model.Friend;

public final class afm
  extends afe
{
  public final String a(@cgb Friend paramFriend)
  {
    return paramFriend.a();
  }
  
  public final String a(@cgb Friend paramFriend, boolean paramBoolean)
  {
    if (mSuggestReason == bkn.a.NEW_SNAPCHATTER) {
      return atx.a(null, 2131493184, new Object[] { paramFriend.h() });
    }
    return atx.a(null, 2131493183, new Object[] { paramFriend.h() });
  }
}

/* Location:
 * Qualified Name:     afm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */