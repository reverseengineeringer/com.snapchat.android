package android.support.v4.net;

import android.net.ConnectivityManager;

final class ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl
  implements ConnectivityManagerCompat.ConnectivityManagerCompatImpl
{
  public final boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager)
  {
    return ConnectivityManagerCompatJellyBean.isActiveNetworkMetered(paramConnectivityManager);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.net.ConnectivityManagerCompat.JellyBeanConnectivityManagerCompatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */