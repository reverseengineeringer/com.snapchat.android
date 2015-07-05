import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import java.util.List;

public final class bro$a
  implements brn
{
  private String a = null;
  
  public bro$a()
  {
    if (cb) {
      str = bgetSystemService"activity"getRunningTasks1get0topActivity.flattenToShortString().replace("/", "");
    }
    a = str;
  }
  
  public final String a()
  {
    return "activity";
  }
}

/* Location:
 * Qualified Name:     bro.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */