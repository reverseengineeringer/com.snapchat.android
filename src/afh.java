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

public class afh
{
  private final Friend a;
  final Context b;
  private final ic c;
  
  public afh(Context paramContext, Friend paramFriend)
  {
    this(paramContext, paramFriend, null);
  }
  
  public afh(Context paramContext, Friend paramFriend, @cgc ic paramic)
  {
    b = paramContext;
    a = paramFriend;
    c = paramic;
  }
  
  public final void a()
  {
    new afh.a(b, a).show();
  }
  
  public void a(FriendAction.BlockReason paramBlockReason)
  {
    paramBlockReason = new pp(FriendAction.BLOCK, a, a.h(), a.mUserId, a.a(), a.mJustAdded, null, paramBlockReason).e();
    mActionMethod = c;
    paramBlockReason.f();
  }
  
  final class a
    extends aqb
  {
    public a(Context paramContext, Friend paramFriend) {}
    
    protected final void a()
    {
      afh localafh = afh.this;
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(b);
      ArrayList localArrayList = dk.a(FriendAction.BlockReason.values());
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
      localBuilder.setItems(arrayOfCharSequence, new afh.1(localafh, localArrayList));
      localBuilder.setCancelable(false).setTitle(2131492931).create().show();
    }
    
    protected final void b() {}
  }
}

/* Location:
 * Qualified Name:     afh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */