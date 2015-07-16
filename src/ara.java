import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.TextUtils;

public abstract class ara
  extends AlertDialog
{
  private String a;
  private String b;
  private String c;
  private String d;
  
  public ara(Context paramContext, String paramString)
  {
    this(paramContext, null, paramString);
  }
  
  public ara(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, paramString1, paramString2, paramContext.getString(2131493601), paramContext.getString(2131493248));
  }
  
  public ara(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this(paramContext, null, paramString1, paramString2, paramString3);
  }
  
  private ara(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paramContext);
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
  }
  
  public abstract void a();
  
  public abstract void b();
  
  protected void onCreate(Bundle paramBundle)
  {
    if (!TextUtils.isEmpty(a)) {
      setTitle(a);
    }
    if (!TextUtils.isEmpty(b)) {
      setMessage(b);
    }
    setCancelable(true);
    setButton(-1, c, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
        a();
      }
    });
    setButton(-2, d, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
        b();
      }
    });
    super.onCreate(paramBundle);
  }
}

/* Location:
 * Qualified Name:     ara
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */