import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.snapchat.android.LoginAndSignupActivity;

public final class atq
{
  private static final String TAG = "ActivityLauncher";
  
  public static void a(@chc Activity paramActivity)
  {
    if ((paramActivity == null) || (paramActivity.getClass() == LoginAndSignupActivity.class)) {
      return;
    }
    Intent localIntent = new Intent(paramActivity, LoginAndSignupActivity.class);
    localIntent.addFlags(67108864);
    localIntent.addFlags(268435456);
    paramActivity.startActivity(localIntent);
    localIntent.toString();
    paramActivity.finish();
  }
  
  public static void a(@chc Context paramContext)
  {
    try
    {
      paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramContext.getString(2131493231))));
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramContext.getString(2131493312))));
    }
  }
}

/* Location:
 * Qualified Name:     atq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */