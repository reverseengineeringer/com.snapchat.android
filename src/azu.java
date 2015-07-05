import android.app.Activity;
import com.snapchat.android.util.debug.ReleaseManager;

@avl
public final class azu
{
  private static final int MAX_NUMBER_OF_TIMES_USER_CAN_DISMISS_UPDATE_PROMPT = 4;
  private static final String UIAUTOMATION_HOCKEYAPP_ID = "fe3d5bcdca3a16ab1d5d52f9aa97477a";
  private static int sShownUserUpdateDialogCounter = 0;
  
  public static void a()
  {
    if (!ReleaseManager.l()) {}
    while ("c06b8797877eb662616000c11de0d338".equals("fe3d5bcdca3a16ab1d5d52f9aa97477a")) {
      return;
    }
    bvm.a();
  }
  
  public static void a(Activity paramActivity)
  {
    if (!ReleaseManager.l()) {}
    while ("c06b8797877eb662616000c11de0d338".equals("fe3d5bcdca3a16ab1d5d52f9aa97477a")) {
      return;
    }
    bvm.a(paramActivity, "c06b8797877eb662616000c11de0d338");
  }
  
  public static boolean b()
  {
    if (!ReleaseManager.l()) {
      return false;
    }
    if (sShownUserUpdateDialogCounter > 4)
    {
      sShownUserUpdateDialogCounter = 0;
      return true;
    }
    sShownUserUpdateDialogCounter += 1;
    return false;
  }
}

/* Location:
 * Qualified Name:     azu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */