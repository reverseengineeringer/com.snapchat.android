import android.content.Context;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;

final class agf$3$1
  extends agh
{
  agf$3$1(agf.3 param3, Context paramContext, Friend paramFriend, il paramil)
  {
    super(paramContext, paramFriend, paramil);
  }
  
  protected final void a(FriendAction.BlockReason paramBlockReason)
  {
    a.b.H.a(a.b, a.a, FriendAction.BLOCK, paramBlockReason, a.b, il.SWIPE_BUTTON);
  }
}

/* Location:
 * Qualified Name:     agf.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */