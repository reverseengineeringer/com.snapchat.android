import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public final class bsw
{
  private ConnectivityManager a;
  
  public bsw(Context paramContext)
  {
    if (paramContext == null)
    {
      btd.e();
      return;
    }
    if (paramContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext.getPackageName()) == 0)
    {
      a = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
      return;
    }
    btd.e();
  }
  
  public final bra a()
  {
    if (a == null) {
      return bra.c;
    }
    NetworkInfo localNetworkInfo = a.getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected())) {
      return bra.d;
    }
    return bra.a(localNetworkInfo.getType());
  }
}

/* Location:
 * Qualified Name:     bsw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */