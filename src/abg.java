import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.snapchat.android.model.FriendAction;

public final class abg
  extends AlertDialog
{
  public abg(Context paramContext, final String paramString)
  {
    super(paramContext);
    setTitle(atx.a(paramContext, 2131492874, new Object[] { paramString }));
    setButton(-1, paramContext.getString(2131492866), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        abg.a(paramString, b);
        paramAnonymousDialogInterface.cancel();
      }
    });
    setButton(-2, paramContext.getString(2131492952), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
      }
    });
  }
  
  protected static void a(String paramString1, String paramString2)
  {
    new pp(FriendAction.ADD, null, paramString1, paramString2, null, false, null, null).f();
  }
}

/* Location:
 * Qualified Name:     abg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */