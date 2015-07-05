package com.google.android.gms.internal;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

@zzgi
public class zzgm$zzb
  extends zzgm
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  private final Object zznh = new Object();
  private final zzgl.zza zzwk;
  protected zzgn zzwl;
  
  public zzgm$zzb(Context paramContext, zzgo paramzzgo, zzgl.zza paramzza)
  {
    super(paramzzgo, paramzza);
    zzwk = paramzza;
    zzwl = new zzgn(paramContext, this, this, zzlP.zzzJ);
    connect();
  }
  
  protected void connect()
  {
    zzwl.connect();
  }
  
  public void onConnected(Bundle paramBundle)
  {
    start();
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    zzwk.zzb(new zzgq(0));
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    zzhx.zzY("Disconnected from remote ad request service.");
  }
  
  public void zzdJ()
  {
    synchronized (zznh)
    {
      if ((zzwl.isConnected()) || (zzwl.isConnecting())) {
        zzwl.disconnect();
      }
      Binder.flushPendingCommands();
      return;
    }
  }
  
  /* Error */
  public zzgs zzdK()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 28	com/google/android/gms/internal/zzgm$zzb:zznh	Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 49	com/google/android/gms/internal/zzgm$zzb:zzwl	Lcom/google/android/gms/internal/zzgn;
    //   11: invokevirtual 105	com/google/android/gms/internal/zzgn:zzdL	()Lcom/google/android/gms/internal/zzgs;
    //   14: astore_2
    //   15: aload_1
    //   16: monitorexit
    //   17: aload_2
    //   18: areturn
    //   19: aload_1
    //   20: monitorexit
    //   21: aconst_null
    //   22: areturn
    //   23: astore_2
    //   24: aload_1
    //   25: monitorexit
    //   26: aload_2
    //   27: athrow
    //   28: astore_2
    //   29: goto -10 -> 19
    //   32: astore_2
    //   33: goto -14 -> 19
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	zzb
    //   14	4	2	localzzgs	zzgs
    //   23	4	2	localObject2	Object
    //   28	1	2	localDeadObjectException	android.os.DeadObjectException
    //   32	1	2	localIllegalStateException	IllegalStateException
    // Exception table:
    //   from	to	target	type
    //   7	15	23	finally
    //   15	17	23	finally
    //   19	21	23	finally
    //   24	26	23	finally
    //   7	15	28	android/os/DeadObjectException
    //   7	15	32	java/lang/IllegalStateException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgm.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */