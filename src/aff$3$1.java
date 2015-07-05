import android.content.Context;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;

final class aff$3$1
  extends afh
{
  aff$3$1(aff.3 param3, Context paramContext, Friend paramFriend, ic paramic)
  {
    super(paramContext, paramFriend, paramic);
  }
  
  protected final void a(FriendAction.BlockReason paramBlockReason)
  {
    a.b.H.a(a.b, a.a, FriendAction.BLOCK, paramBlockReason, a.b, ic.SWIPE_BUTTON);
  }
}

/* Location:
 * Qualified Name:     aff.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */