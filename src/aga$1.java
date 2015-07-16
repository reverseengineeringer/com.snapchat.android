import android.os.Handler;
import android.os.Message;
import com.snapchat.android.model.FriendAction;

final class aga$1
  extends Handler
{
  aga$1(aga paramaga) {}
  
  public final void handleMessage(Message paramMessage)
  {
    FriendAction localFriendAction;
    if ((obj instanceof FriendAction)) {
      localFriendAction = (FriendAction)obj;
    }
    switch (aga.3.a[localFriendAction.ordinal()])
    {
    default: 
      super.handleMessage(paramMessage);
      return;
    }
    a.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     aga.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */