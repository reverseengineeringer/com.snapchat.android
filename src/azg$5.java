import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.snapchat.android.util.debug.BugReportActivity;

final class azg$5
  implements DialogInterface.OnClickListener
{
  azg$5(azg paramazg, Activity paramActivity, String paramString) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent(val$activity, BugReportActivity.class);
    paramDialogInterface.putExtra("screenshots", val$screenshotFilename);
    paramDialogInterface.putExtra("logs", azk.b());
    val$activity.startActivity(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     azg.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */