import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;

final class aff$3
  implements View.OnClickListener
{
  aff$3(aff paramaff, Friend paramFriend) {}
  
  public final void onClick(View paramView)
  {
    new afh(b.J, a, ic.SWIPE_BUTTON)
    {
      protected final void a(FriendAction.BlockReason paramAnonymousBlockReason)
      {
        b.H.a(b, a, FriendAction.BLOCK, paramAnonymousBlockReason, b, ic.SWIPE_BUTTON);
      }
    }.a();
  }
}

/* Location:
 * Qualified Name:     aff.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */