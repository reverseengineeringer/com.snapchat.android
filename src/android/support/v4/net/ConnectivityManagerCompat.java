package android.support.v4.net;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;

public final class ConnectivityManagerCompat
{
  private static final ConnectivityManagerCompatImpl IMPL = new BaseConnectivityManagerCompatImpl();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      IMPL = new JellyBeanConnectivityManagerCompatImpl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 13)
    {
      IMPL = new HoneycombMR2ConnectivityManagerCompatImpl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 8)
    {
      IMPL = new GingerbreadConnectivityManagerCompatImpl();
      return;
    }
  }
  
  private static NetworkInfo getNetworkInfoFromBroadcast(ConnectivityManager paramConnectivityManager, Intent paramIntent)
  {
    paramIntent = (NetworkInfo)paramIntent.getParcelableExtra("networkInfo");
    if (paramIntent != null) {
      return paramConnectivityManager.getNetworkInfo(paramIntent.getType());
    }
    return null;
  }
  
  private static boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager)
  {
    return IMPL.isActiveNetworkMetered(paramConnectivityManager);
  }
  
  static final class BaseConnectivityManagerCompatImpl
    implements ConnectivityManagerCompat.ConnectivityManagerCompatImpl
  {
    public final boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager)
    {
      paramConnectivityManager = paramConnectivityManager.getActiveNetworkInfo();
      if (paramConnectivityManager == null) {
        return true;
      }
      switch (paramConnectivityManager.getType())
      {
      case 0: 
      default: 
        return true;
      }
      return false;
    }
  }
  
  static abstract interface ConnectivityManagerCompatImpl
  {
    public abstract boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager);
  }
  
  static final class GingerbreadConnectivityManagerCompatImpl
    implements ConnectivityManagerCompat.ConnectivityManagerCompatImpl
  {
    public final boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager)
    {
      return ConnectivityManagerCompatGingerbread.isActiveNetworkMetered(paramConnectivityManager);
    }
  }
  
  static final class HoneycombMR2ConnectivityManagerCompatImpl
    implements ConnectivityManagerCompat.ConnectivityManagerCompatImpl
  {
    public final boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager)
    {
      return ConnectivityManagerCompatHoneycombMR2.isActiveNetworkMetered(paramConnectivityManager);
    }
  }
  
  static final class JellyBeanConnectivityManagerCompatImpl
    implements ConnectivityManagerCompat.ConnectivityManagerCompatImpl
  {
    public final boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager)
    {
      return ConnectivityManagerCompatJellyBean.isActiveNetworkMetered(paramConnectivityManager);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.net.ConnectivityManagerCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */