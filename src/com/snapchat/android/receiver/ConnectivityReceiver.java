package com.snapchat.android.receiver;

import ald;
import ale;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.snapchat.android.Timber;
import java.util.Iterator;
import java.util.Set;

public class ConnectivityReceiver
  extends BroadcastReceiver
{
  public static final IntentFilter a = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
  private final ale b;
  
  public ConnectivityReceiver()
  {
    this(ale.a());
  }
  
  private ConnectivityReceiver(ale paramale)
  {
    b = paramale;
  }
  
  public void onReceive(Context arg1, Intent paramIntent)
  {
    Object localObject = ((ConnectivityManager)???.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localObject != null)
    {
      paramIntent = b;
      synchronized (a)
      {
        Timber.c("NetworkStatusManager", "Network status changed from %s to %s", new Object[] { ale.a(c), ale.a((NetworkInfo)localObject) });
        c = ((NetworkInfo)localObject);
        localObject = b.iterator();
        if (((Iterator)localObject).hasNext()) {
          ((ald)((Iterator)localObject).next()).a(c);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.receiver.ConnectivityReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */