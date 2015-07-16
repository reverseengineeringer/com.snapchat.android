import android.app.Activity;
import android.app.FragmentManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.AsyncTask.Status;
import android.text.TextUtils;
import java.lang.ref.WeakReference;

public final class bwn
{
  private static bwx a = null;
  private static bwo b = null;
  
  public static void a()
  {
    if (a != null)
    {
      a.cancel(true);
      a.a();
      a = null;
    }
    b = null;
  }
  
  public static void a(Activity paramActivity, String paramString)
  {
    paramString = bxl.c(paramString);
    b = null;
    paramActivity = new WeakReference(paramActivity);
    int i;
    if (bxl.a().booleanValue())
    {
      Activity localActivity = (Activity)paramActivity.get();
      if (localActivity == null) {
        break label108;
      }
      if (localActivity.getFragmentManager().findFragmentByTag("hockey_update_dialog") == null) {
        break label103;
      }
      i = 1;
      if (i != 0) {}
    }
    else if (!a(paramActivity))
    {
      if ((a != null) && (a.getStatus() != AsyncTask.Status.FINISHED)) {
        break label113;
      }
      paramActivity = new bwy(paramActivity, "https://sdk.hockeyapp.net/", paramString);
      a = paramActivity;
      bxe.a(paramActivity);
    }
    label103:
    label108:
    label113:
    do
    {
      return;
      i = 0;
      break;
      i = 0;
      break;
      paramString = a;
      paramActivity = (Context)paramActivity.get();
    } while (paramActivity == null);
    c = paramActivity.getApplicationContext();
    bwa.a(paramActivity);
  }
  
  private static boolean a(WeakReference<? extends Context> paramWeakReference)
  {
    boolean bool = false;
    paramWeakReference = (Context)paramWeakReference.get();
    if (paramWeakReference != null) {}
    try
    {
      bool = TextUtils.isEmpty(paramWeakReference.getPackageManager().getInstallerPackageName(paramWeakReference.getPackageName()));
      if (!bool) {}
      for (bool = true;; bool = false) {
        return bool;
      }
      return false;
    }
    catch (Throwable paramWeakReference) {}
  }
  
  public static bwo b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     bwn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */