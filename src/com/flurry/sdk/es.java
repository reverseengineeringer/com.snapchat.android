package com.flurry.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Iterator;
import java.util.List;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public class es
  extends BroadcastReceiver
{
  private static es e;
  boolean a;
  Boolean b;
  private final dt<er> c = new dt();
  private boolean d = false;
  
  public static es a()
  {
    try
    {
      if (e == null) {
        e = new es();
      }
      es locales = e;
      return locales;
    }
    finally {}
  }
  
  private boolean a(Context paramContext)
  {
    if ((!d) || (paramContext == null)) {
      return true;
    }
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.isConnected());
  }
  
  private List<er> f()
  {
    try
    {
      List localList = c.a();
      return localList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(er paramer)
  {
    try
    {
      c.a(paramer);
      return;
    }
    finally
    {
      paramer = finally;
      throw paramer;
    }
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 68	com/flurry/sdk/do:a	()Lcom/flurry/sdk/do;
    //   5: invokevirtual 71	com/flurry/sdk/do:b	()Landroid/content/Context;
    //   8: astore_2
    //   9: aload_2
    //   10: ldc 73
    //   12: invokevirtual 77	android/content/Context:checkCallingOrSelfPermission	(Ljava/lang/String;)I
    //   15: ifne +33 -> 48
    //   18: iconst_1
    //   19: istore_1
    //   20: aload_0
    //   21: iload_1
    //   22: putfield 22	com/flurry/sdk/es:d	Z
    //   25: aload_0
    //   26: aload_0
    //   27: aload_2
    //   28: invokespecial 79	com/flurry/sdk/es:a	(Landroid/content/Context;)Z
    //   31: putfield 81	com/flurry/sdk/es:a	Z
    //   34: aload_0
    //   35: getfield 22	com/flurry/sdk/es:d	Z
    //   38: ifeq +7 -> 45
    //   41: aload_0
    //   42: invokevirtual 83	com/flurry/sdk/es:d	()V
    //   45: aload_0
    //   46: monitorexit
    //   47: return
    //   48: iconst_0
    //   49: istore_1
    //   50: goto -30 -> 20
    //   53: astore_2
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_2
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	this	es
    //   19	31	1	bool	boolean
    //   8	20	2	localContext	Context
    //   53	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	18	53	finally
    //   20	45	53	finally
  }
  
  public boolean c()
  {
    if (b != null) {
      return b.booleanValue();
    }
    return a;
  }
  
  void d()
  {
    Context localContext = do.a().b();
    a = a(localContext);
    localContext.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
  }
  
  public a e()
  {
    if (!d) {
      return a.a;
    }
    NetworkInfo localNetworkInfo = ((ConnectivityManager)do.a().b().getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected())) {
      return a.a;
    }
    switch (localNetworkInfo.getType())
    {
    default: 
      return a.c;
    case 1: 
    case 9: 
      return a.b;
    case 0: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
      return a.c;
    }
    return a.a;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    kkxxkk.b041E041EОО041EО(paramContext);
    xkkkxk.b041E041EООО041E(paramContext);
    boolean bool = a(paramContext);
    if (a != bool)
    {
      a = bool;
      paramContext = f().iterator();
      while (paramContext.hasNext()) {
        ((er)paramContext.next()).a(a);
      }
    }
  }
  
  public static enum a
  {
    private int d;
    
    private a(int paramInt)
    {
      d = paramInt;
    }
    
    public final int a()
    {
      return d;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */