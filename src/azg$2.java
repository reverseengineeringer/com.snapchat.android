import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.widget.Toast;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.debug.ReleaseManager;

final class azg$2
  implements Runnable
{
  azg$2(azg paramazg, Activity paramActivity, azv paramazv, String paramString) {}
  
  public final void run()
  {
    azg localazg = this$0;
    Activity localActivity = val$activity;
    azv localazv = val$shakeReporter;
    String str = val$screenshotFilename;
    if ((localActivity.isFinishing()) || (!ReleaseManager.c()))
    {
      Toast.makeText(SnapchatApplication.b(), "Previous activity " + localActivity.getClass().getSimpleName() + " already finished. Could not attach bug report.", 1).show();
      return;
    }
    new AlertDialog.Builder(localActivity).setTitle("Shake To Report").setMessage("Please describe the issue in the coming pop-up screen. Every bug/request you file will help prevent a user from experiencing that pain!").setCancelable(true).setPositiveButton("Send Feedback", new azg.5(localazg, localActivity, str)).setNegativeButton("Cancel", new azg.4(localazg, localazv)).setOnCancelListener(new azg.3(localazg, localazv)).show();
  }
}

/* Location:
 * Qualified Name:     azg.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */