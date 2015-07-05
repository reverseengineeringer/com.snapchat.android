import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.SuggestedFriendAction;

final class aff$4
  implements View.OnClickListener
{
  aff$4(aff paramaff, Friend paramFriend, int paramInt) {}
  
  public final void onClick(View paramView)
  {
    if (a.mSuggestReason != bkn.a.UNKNOWN)
    {
      paramView = c.O;
      String str = a.h();
      int i = b;
      Intent localIntent = paramView.b(c);
      localIntent.putExtra("op_code", 1033);
      localIntent.putExtra("action", SuggestedFriendAction.HIDE.toString());
      localIntent.putExtra("friend_name", str);
      localIntent.putExtra("friend_index", i);
      paramView.a(c, localIntent);
      c.C.setVisibility(8);
      c.D.setVisibility(8);
      c.F.setVisibility(0);
      return;
    }
    c.H.a(c, a, FriendAction.HIDE, null, c, null);
  }
}

/* Location:
 * Qualified Name:     aff.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */