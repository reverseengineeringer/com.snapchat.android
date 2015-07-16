import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

public final class bru
{
  public String a = "1.0";
  public int b = 0;
  
  public bru(Context paramContext, ba paramba)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      a = versionName;
      b = versionCode;
      paramContext = a;
      if ((paramContext != null) && (paramContext.length() > 0)) {
        a = paramContext;
      }
      if (c) {
        a = (a + "-" + Integer.toString(b));
      }
      return;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     bru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */