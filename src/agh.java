import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.model.FriendAction.BlockReason;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class agh
{
  private final Friend a;
  final Context b;
  private final il c;
  
  public agh(Context paramContext, Friend paramFriend)
  {
    this(paramContext, paramFriend, null);
  }
  
  public agh(Context paramContext, Friend paramFriend, @chd il paramil)
  {
    b = paramContext;
    a = paramFriend;
    c = paramil;
  }
  
  public final void a()
  {
    new agh.a(b, a).show();
  }
  
  public void a(FriendAction.BlockReason paramBlockReason)
  {
    paramBlockReason = new qg(FriendAction.BLOCK, a, a.l(), a.mUserId, a.a(), a.mJustAdded, null, paramBlockReason).a();
    mActionMethod = c;
    paramBlockReason.execute();
  }
  
  final class a
    extends ara
  {
    public a(Context paramContext, Friend paramFriend) {}
    
    protected final void a()
    {
      agh localagh = agh.this;
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
}

/* Location:
 * Qualified Name:     agh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */