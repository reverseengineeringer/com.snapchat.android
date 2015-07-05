import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.snapchat.android.util.AlertDialogUtils;

public final class ave
{
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("smsto:" + paramString1));
    localIntent.putExtra("address", paramString1);
    localIntent.putExtra("sms_body", paramString2);
    localIntent.putExtra("android.intent.extra.TEXT", paramString2);
    try
    {
      paramContext.startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException paramString1)
    {
      AlertDialogUtils.a(2131493255, paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     ave
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */