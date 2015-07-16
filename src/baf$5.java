import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.snapchat.android.util.debug.BugReportActivity;

final class baf$5
  implements DialogInterface.OnClickListener
{
  baf$5(baf parambaf, Activity paramActivity, String paramString) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent(val$activity, BugReportActivity.class);
    paramDialogInterface.putExtra("screenshots", val$screenshotFilename);
    paramDialogInterface.putExtra("logs", baj.b());
    val$activity.startActivity(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     baf.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */