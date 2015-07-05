package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;

@zzgi
public class zzff
  extends zzfp.zza
  implements ServiceConnection
{
  private final Activity zzoi;
  private zzfc zzuY;
  zzfi zzuZ;
  private zzfl zzvb;
  private Context zzvh;
  private zzfn zzvi;
  private zzfg zzvj;
  private zzfk zzvk;
  private String zzvl = null;
  
  public zzff(Activity paramActivity)
  {
    zzoi = paramActivity;
    zzuZ = zzfi.zzm(zzoi.getApplicationContext());
  }
  
  /* Error */
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    // Byte code:
    //   0: iload_1
    //   1: sipush 1001
    //   4: if_icmpne +85 -> 89
    //   7: iconst_0
    //   8: istore 4
    //   10: invokestatic 59	com/google/android/gms/internal/zzab:zzaU	()Lcom/google/android/gms/internal/zzfj;
    //   13: aload_3
    //   14: invokevirtual 65	com/google/android/gms/internal/zzfj:zzd	(Landroid/content/Intent;)I
    //   17: istore_1
    //   18: iload_2
    //   19: iconst_m1
    //   20: if_icmpne +70 -> 90
    //   23: invokestatic 59	com/google/android/gms/internal/zzab:zzaU	()Lcom/google/android/gms/internal/zzfj;
    //   26: pop
    //   27: iload_1
    //   28: ifne +62 -> 90
    //   31: aload_0
    //   32: getfield 67	com/google/android/gms/internal/zzff:zzvb	Lcom/google/android/gms/internal/zzfl;
    //   35: aload_0
    //   36: getfield 32	com/google/android/gms/internal/zzff:zzvl	Ljava/lang/String;
    //   39: iload_2
    //   40: aload_3
    //   41: invokevirtual 73	com/google/android/gms/internal/zzfl:zza	(Ljava/lang/String;ILandroid/content/Intent;)Z
    //   44: ifeq +6 -> 50
    //   47: iconst_1
    //   48: istore 4
    //   50: aload_0
    //   51: getfield 75	com/google/android/gms/internal/zzff:zzvi	Lcom/google/android/gms/internal/zzfn;
    //   54: iload_1
    //   55: invokeinterface 81 2 0
    //   60: aload_0
    //   61: getfield 34	com/google/android/gms/internal/zzff:zzoi	Landroid/app/Activity;
    //   64: invokevirtual 84	android/app/Activity:finish	()V
    //   67: aload_0
    //   68: aload_0
    //   69: getfield 75	com/google/android/gms/internal/zzff:zzvi	Lcom/google/android/gms/internal/zzfn;
    //   72: invokeinterface 88 1 0
    //   77: iload 4
    //   79: iload_2
    //   80: aload_3
    //   81: invokevirtual 91	com/google/android/gms/internal/zzff:zza	(Ljava/lang/String;ZILandroid/content/Intent;)V
    //   84: aload_0
    //   85: aconst_null
    //   86: putfield 32	com/google/android/gms/internal/zzff:zzvl	Ljava/lang/String;
    //   89: return
    //   90: aload_0
    //   91: getfield 48	com/google/android/gms/internal/zzff:zzuZ	Lcom/google/android/gms/internal/zzfi;
    //   94: aload_0
    //   95: getfield 93	com/google/android/gms/internal/zzff:zzvj	Lcom/google/android/gms/internal/zzfg;
    //   98: invokevirtual 96	com/google/android/gms/internal/zzfi:zza	(Lcom/google/android/gms/internal/zzfg;)V
    //   101: goto -51 -> 50
    //   104: astore_3
    //   105: ldc 98
    //   107: invokestatic 104	com/google/android/gms/internal/zzhx:zzac	(Ljava/lang/String;)V
    //   110: aload_0
    //   111: getfield 34	com/google/android/gms/internal/zzff:zzoi	Landroid/app/Activity;
    //   114: invokevirtual 84	android/app/Activity:finish	()V
    //   117: aload_0
    //   118: aconst_null
    //   119: putfield 32	com/google/android/gms/internal/zzff:zzvl	Ljava/lang/String;
    //   122: return
    //   123: astore_3
    //   124: aload_0
    //   125: aconst_null
    //   126: putfield 32	com/google/android/gms/internal/zzff:zzvl	Ljava/lang/String;
    //   129: aload_3
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	zzff
    //   0	131	1	paramInt1	int
    //   0	131	2	paramInt2	int
    //   0	131	3	paramIntent	Intent
    //   8	70	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   10	18	104	android/os/RemoteException
    //   23	27	104	android/os/RemoteException
    //   31	47	104	android/os/RemoteException
    //   50	84	104	android/os/RemoteException
    //   90	101	104	android/os/RemoteException
    //   10	18	123	finally
    //   23	27	123	finally
    //   31	47	123	finally
    //   50	84	123	finally
    //   90	101	123	finally
    //   105	117	123	finally
  }
  
  public void onCreate()
  {
    Object localObject = zzfb.zzc(zzoi.getIntent());
    zzvk = zzuU;
    zzvb = zzmg;
    zzvi = zzuS;
    zzuY = new zzfc(zzoi.getApplicationContext());
    zzvh = zzuT;
    if (zzoi.getResources().getConfiguration().orientation == 2) {
      zzoi.setRequestedOrientation(zzab.zzaO().zzex());
    }
    for (;;)
    {
      localObject = new Intent("com.android.vending.billing.InAppBillingService.BIND");
      ((Intent)localObject).setPackage("com.android.vending");
      zzoi.bindService((Intent)localObject, this, 1);
      return;
      zzoi.setRequestedOrientation(zzab.zzaO().zzey());
    }
  }
  
  public void onDestroy()
  {
    zzoi.unbindService(this);
    zzuY.destroy();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    zzuY.zzx(paramIBinder);
    try
    {
      zzvl = zzvb.zzdB();
      paramComponentName = zzuY.zzb(zzoi.getPackageName(), zzvi.getProductId(), zzvl);
      paramIBinder = (PendingIntent)paramComponentName.getParcelable("BUY_INTENT");
      if (paramIBinder == null)
      {
        int i = zzab.zzaU().zzf(paramComponentName);
        zzvi.recordPlayBillingResolution(i);
        zza(zzvi.getProductId(), false, i, null);
        zzoi.finish();
        return;
      }
      zzvj = new zzfg(zzvi.getProductId(), zzvl);
      zzuZ.zzb(zzvj);
      zzoi.startIntentSenderForResult(paramIBinder.getIntentSender(), 1001, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
      return;
    }
    catch (RemoteException paramComponentName)
    {
      zzhx.zzd("Error when connecting in-app billing service", paramComponentName);
      zzoi.finish();
      return;
    }
    catch (IntentSender.SendIntentException paramComponentName)
    {
      for (;;) {}
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    zzhx.zzaa("In-app billing service disconnected.");
    zzuY.destroy();
  }
  
  protected void zza(String paramString, boolean paramBoolean, int paramInt, Intent paramIntent)
  {
    if (zzvk != null) {
      zzvk.zza(paramString, paramBoolean, paramInt, paramIntent, zzvj);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */