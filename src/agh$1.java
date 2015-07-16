import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.snapchat.android.model.FriendAction.BlockReason;
import java.util.List;

final class agh$1
  implements DialogInterface.OnClickListener
{
  agh$1(agh paramagh, List paramList) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.a((FriendAction.BlockReason)a.get(paramInt));
  }
}

/* Location:
 * Qualified Name:     agh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */