package com.snapchat.android.receiver;

import alz;
import ama;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Iterator;
import java.util.Set;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public class ConnectivityReceiver
  extends BroadcastReceiver
{
  public static final IntentFilter a = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
  private final ama b;
  
  public ConnectivityReceiver()
  {
    this(ama.a());
  }
  
  private ConnectivityReceiver(ama paramama)
  {
    b = paramama;
  }
  
  public void onReceive(Context arg1, Intent paramIntent)
  {
    kkxxkk.b041E041EОО041EО(???);
    xkkkxk.b041E041EООО041E(???);
    Object localObject = ((ConnectivityManager)???.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localObject != null)
    {
      paramIntent = b;
      synchronized (a)
      {
        ama.a(c);
        ama.a((NetworkInfo)localObject);
        c = ((NetworkInfo)localObject);
        localObject = b.iterator();
        if (((Iterator)localObject).hasNext()) {
          ((alz)((Iterator)localObject).next()).a(c);
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