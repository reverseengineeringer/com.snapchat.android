import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.widget.Toast;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.debug.ReleaseManager;

final class baf$2
  implements Runnable
{
  baf$2(baf parambaf, Activity paramActivity, bau parambau, String paramString) {}
  
  public final void run()
  {
    baf localbaf = this$0;
    Activity localActivity = val$activity;
    bau localbau = val$shakeReporter;
    String str = val$screenshotFilename;
    if ((localActivity.isFinishing()) || (!ReleaseManager.c()))
    {
      Toast.makeText(SnapchatApplication.b(), "Previous activity " + localActivity.getClass().getSimpleName() + " already finished. Could not attach bug report.", 1).show();
      return;
    }
    new AlertDialog.Builder(localActivity).setTitle("Shake To Report").setMessage("Please describe the issue in the coming pop-up screen. Every bug/request you file will help prevent a user from experiencing that pain!").setCancelable(true).setPositiveButton("Send Feedback", new baf.5(localbaf, localActivity, str)).setNegativeButton("Cancel", new baf.4(localbaf, localbau)).setOnCancelListener(new baf.3(localbaf, localbau)).show();
  }
}

/* Location:
 * Qualified Name:     baf.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */