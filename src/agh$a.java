import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction.BlockReason;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class agh$a
  extends ara
{
  public agh$a(agh paramagh, Context paramContext, Friend paramFriend) {}
  
  protected final void a()
  {
    agh localagh = a;
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(b);
    ArrayList localArrayList = dt.a(FriendAction.BlockReason.values());
    localArrayList.remove(localArrayList.size() - 1);
    Collections.shuffle(localArrayList);
    localArrayList.add(FriendAction.BlockReason.OTHER);
    CharSequence[] arrayOfCharSequence = new CharSequence[localArrayList.size()];
    int i = 0;
    while (i < localArrayList.size())
    {
      arrayOfCharSequence[i] = b.getString(((FriendAction.BlockReason)localArrayList.get(i)).getTextId());
      i += 1;
    }
    localBuilder.setItems(arrayOfCharSequence, new agh.1(localagh, localArrayList));
    localBuilder.setCancelable(false).setTitle(2131492931).create().show();
  }
  
  protected final void b() {}
}

/* Location:
 * Qualified Name:     agh.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */