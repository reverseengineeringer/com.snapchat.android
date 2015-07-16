import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import java.util.List;

public final class bsp$a
  implements bso
{
  private String a = null;
  
  public bsp$a()
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
 * Qualified Name:     bsp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */