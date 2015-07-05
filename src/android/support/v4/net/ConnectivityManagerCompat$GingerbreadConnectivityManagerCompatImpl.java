package android.support.v4.net;

import android.net.ConnectivityManager;

final class ConnectivityManagerCompat$GingerbreadConnectivityManagerCompatImpl
  implements ConnectivityManagerCompat.ConnectivityManagerCompatImpl
{
  public final boolean isActiveNetworkMetered(ConnectivityManager paramConnectivityManager)
  {
    return ConnectivityManagerCompatGingerbread.isActiveNetworkMetered(paramConnectivityManager);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.net.ConnectivityManagerCompat.GingerbreadConnectivityManagerCompatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */