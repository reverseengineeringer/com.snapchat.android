import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;

final class agf$3
  implements View.OnClickListener
{
  agf$3(agf paramagf, Friend paramFriend) {}
  
  public final void onClick(View paramView)
  {
    new agh(b.J, a, il.SWIPE_BUTTON)
    {
      protected final void a(FriendAction.BlockReason paramAnonymousBlockReason)
      {
        b.H.a(b, a, FriendAction.BLOCK, paramAnonymousBlockReason, b, il.SWIPE_BUTTON);
      }
    }.a();
  }
}

/* Location:
 * Qualified Name:     agf.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */