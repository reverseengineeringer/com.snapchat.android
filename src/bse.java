import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;

public final class bse
{
  public boolean a;
  public boolean b;
  public boolean c;
  
  public bse(Context paramContext, ba paramba)
  {
    if (e) {
      if (Build.VERSION.SDK_INT < 16) {}
    }
    for (;;)
    {
      a = bool;
      c = a("android.permission.ACCESS_NETWORK_STATE", paramContext);
      b = a("android.permission.GET_TASKS", paramContext);
      return;
      if (!a("android.permission.READ_LOGS", paramContext)) {
        bool = false;
      }
    }
  }
  
  private static boolean a(String paramString, Context paramContext)
  {
    return paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0;
  }
}

/* Location:
 * Qualified Name:     bse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */