package com.google.android.gms.internal;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

@zzgi
public abstract class zzgm
  extends zzhl
{
  private final zzgo zzse;
  private final zzgl.zza zzwk;
  
  public zzgm(zzgo paramzzgo, zzgl.zza paramzza)
  {
    zzse = paramzzgo;
    zzwk = paramzza;
  }
  
  static zzgq zza(zzgs paramzzgs, zzgo paramzzgo)
  {
    try
    {
      paramzzgs = paramzzgs.zzd(paramzzgo);
      return paramzzgs;
    }
    catch (RemoteException paramzzgs)
    {
      zzhx.zzd("Could not fetch ad response from ad request service.", paramzzgs);
      zzab.zzaP().zze(paramzzgs);
      return null;
    }
    catch (NullPointerException paramzzgs)
    {
      zzhx.zzd("Could not fetch ad response from ad request service due to an Exception.", paramzzgs);
      zzab.zzaP().zze(paramzzgs);
      return null;
    }
    catch (SecurityException paramzzgs)
    {
      zzhx.zzd("Could not fetch ad response from ad request service due to an Exception.", paramzzgs);
      zzab.zzaP().zze(paramzzgs);
      return null;
    }
    catch (Throwable paramzzgs)
    {
      zzab.zzaP().zze(paramzzgs);
    }
    return null;
  }
  
  public final void onStop()
  {
    zzdJ();
  }
  
  public abstract void zzdJ();
  
  public abstract zzgs zzdK();
  
  /* Error */
  public void zzdw()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 70	com/google/android/gms/internal/zzgm:zzdK	()Lcom/google/android/gms/internal/zzgs;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnonnull +27 -> 33
    //   9: new 72	com/google/android/gms/internal/zzgq
    //   12: dup
    //   13: iconst_0
    //   14: invokespecial 75	com/google/android/gms/internal/zzgq:<init>	(I)V
    //   17: astore_1
    //   18: aload_0
    //   19: invokevirtual 65	com/google/android/gms/internal/zzgm:zzdJ	()V
    //   22: aload_0
    //   23: getfield 24	com/google/android/gms/internal/zzgm:zzwk	Lcom/google/android/gms/internal/zzgl$zza;
    //   26: aload_1
    //   27: invokeinterface 80 2 0
    //   32: return
    //   33: aload_1
    //   34: aload_0
    //   35: getfield 22	com/google/android/gms/internal/zzgm:zzse	Lcom/google/android/gms/internal/zzgo;
    //   38: invokestatic 82	com/google/android/gms/internal/zzgm:zza	(Lcom/google/android/gms/internal/zzgs;Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzgq;
    //   41: astore_2
    //   42: aload_2
    //   43: astore_1
    //   44: aload_2
    //   45: ifnonnull -27 -> 18
    //   48: new 72	com/google/android/gms/internal/zzgq
    //   51: dup
    //   52: iconst_0
    //   53: invokespecial 75	com/google/android/gms/internal/zzgq:<init>	(I)V
    //   56: astore_1
    //   57: goto -39 -> 18
    //   60: astore_1
    //   61: aload_0
    //   62: invokevirtual 65	com/google/android/gms/internal/zzgm:zzdJ	()V
    //   65: aload_1
    //   66: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	67	0	this	zzgm
    //   4	53	1	localObject1	Object
    //   60	6	1	localObject2	Object
    //   41	4	2	localzzgq	zzgq
    // Exception table:
    //   from	to	target	type
    //   0	5	60	finally
    //   9	18	60	finally
    //   33	42	60	finally
    //   48	57	60	finally
  }
  
  @zzgi
  public static final class zza
    extends zzgm
  {
    private final Context mContext;
    
    public zza(Context paramContext, zzgo paramzzgo, zzgl.zza paramzza)
    {
      super(paramzza);
      mContext = paramContext;
    }
    
    public final void zzdJ() {}
    
    public final zzgs zzdK()
    {
      zzbv localzzbv = new zzbv((String)zzca.zzql.get(), zzca.zzcb());
      return zzgw.zza(mContext, localzzbv, new zzdh(), new zzhd());
    }
  }
  
  @zzgi
  public static class zzb
    extends zzgm
    implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
  {
    private final Object zznh = new Object();
    private final zzgl.zza zzwk;
    protected zzgn zzwl;
    
    public zzb(Context paramContext, zzgo paramzzgo, zzgl.zza paramzza)
    {
      super(paramzza);
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */