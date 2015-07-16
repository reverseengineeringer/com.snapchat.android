import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public final class btx
{
  private ConnectivityManager a;
  
  public btx(Context paramContext)
  {
    if (paramContext == null)
    {
      bue.e();
      return;
    }
    if (paramContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext.getPackageName()) == 0)
    {
      a = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
      return;
    }
    bue.e();
  }
  
  public final bsb a()
  {
    if (a == null) {
      return bsb.c;
    }
    NetworkInfo localNetworkInfo = a.getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected())) {
      return bsb.d;
    }
    return bsb.a(localNetworkInfo.getType());
  }
}

/* Location:
 * Qualified Name:     btx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */