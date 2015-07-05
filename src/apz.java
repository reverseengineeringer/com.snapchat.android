import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;

public class apz
  extends AlertDialog
{
  private Context mContext;
  private String mMessage;
  
  public apz(Context paramContext, String paramString)
  {
    super(paramContext);
    mMessage = paramString;
    mContext = paramContext;
  }
  
  public void a() {}
  
  protected void onCreate(Bundle paramBundle)
  {
    setMessage(mMessage);
    setCancelable(true);
    setButton(-1, mContext.getString(2131493269), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
        a();
      }
    });
    super.onCreate(paramBundle);
  }
}

/* Location:
 * Qualified Name:     apz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */