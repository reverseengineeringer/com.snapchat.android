package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@zzgi
public class zzfd
  extends zzhl
  implements ServiceConnection
{
  private Context mContext;
  private final Object zznh = new Object();
  private boolean zzuW = false;
  private zzfs zzuX;
  private zzfc zzuY;
  private zzfi zzuZ;
  private List<zzfg> zzva = null;
  private zzfl zzvb;
  
  public zzfd(Context paramContext, zzfs paramzzfs, zzfl paramzzfl)
  {
    this(paramContext, paramzzfs, paramzzfl, new zzfc(paramContext), zzfi.zzm(paramContext.getApplicationContext()));
  }
  
  zzfd(Context paramContext, zzfs paramzzfs, zzfl paramzzfl, zzfc paramzzfc, zzfi paramzzfi)
  {
    mContext = paramContext;
    zzuX = paramzzfs;
    zzvb = paramzzfl;
    zzuY = paramzzfc;
    zzuZ = paramzzfi;
    zzva = zzuZ.zze(10L);
  }
  
  private void zzc(long paramLong)
  {
    do
    {
      if (!zzd(paramLong)) {
        zzhx.zzab("Timeout waiting for pending transaction to be processed.");
      }
    } while (!zzuW);
  }
  
  private boolean zzd(long paramLong)
  {
    paramLong = 60000L - (SystemClock.elapsedRealtime() - paramLong);
    if (paramLong <= 0L) {
      return false;
    }
    try
    {
      zznh.wait(paramLong);
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        zzhx.zzac("waitWithTimeout_lock interrupted");
      }
    }
  }
  
  public void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
  {
    synchronized (zznh)
    {
      zzuY.zzx(paramIBinder);
      zzdx();
      zzuW = true;
      zznh.notify();
      return;
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    zzhx.zzaa("In-app billing service disconnected.");
    zzuY.destroy();
  }
  
  public void onStop()
  {
    synchronized (zznh)
    {
      zzlo.zzka().zza(mContext, this);
      zzuY.destroy();
      return;
    }
  }
  
  protected void zza(final zzfg paramzzfg, String paramString1, String paramString2)
  {
    final Intent localIntent = new Intent();
    zzab.zzaU();
    localIntent.putExtra("RESPONSE_CODE", 0);
    zzab.zzaU();
    localIntent.putExtra("INAPP_PURCHASE_DATA", paramString1);
    zzab.zzaU();
    localIntent.putExtra("INAPP_DATA_SIGNATURE", paramString2);
    zzhw.zzzG.post(new Runnable()
    {
      public void run()
      {
        try
        {
          if (zzfd.zza(zzfd.this).zza(paramzzfgzzvn, -1, localIntent))
          {
            zzfd.zzc(zzfd.this).zza(new zzfh(zzfd.zzb(zzfd.this), paramzzfgzzvo, true, -1, localIntent, paramzzfg));
            return;
          }
          zzfd.zzc(zzfd.this).zza(new zzfh(zzfd.zzb(zzfd.this), paramzzfgzzvo, false, -1, localIntent, paramzzfg));
          return;
        }
        catch (RemoteException localRemoteException)
        {
          zzhx.zzac("Fail to verify and dispatch pending transaction");
        }
      }
    });
  }
  
  public void zzdw()
  {
    synchronized (zznh)
    {
      Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
      localIntent.setPackage("com.android.vending");
      zzlo.zzka().zza(mContext, localIntent, this, 1);
      zzc(SystemClock.elapsedRealtime());
      zzlo.zzka().zza(mContext, this);
      zzuY.destroy();
      return;
    }
  }
  
  protected void zzdx()
  {
    if (zzva.isEmpty()) {
      return;
    }
    HashMap localHashMap = new HashMap();
    Object localObject1 = zzva.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (zzfg)((Iterator)localObject1).next();
      localHashMap.put(zzvo, localObject2);
    }
    localObject1 = null;
    for (;;)
    {
      localObject1 = zzuY.zzh(mContext.getPackageName(), (String)localObject1);
      if ((localObject1 != null) && (zzab.zzaU().zzf((Bundle)localObject1) == 0))
      {
        localObject2 = ((Bundle)localObject1).getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        ArrayList localArrayList1 = ((Bundle)localObject1).getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList localArrayList2 = ((Bundle)localObject1).getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        localObject1 = ((Bundle)localObject1).getString("INAPP_CONTINUATION_TOKEN");
        int i = 0;
        while (i < ((ArrayList)localObject2).size())
        {
          if (localHashMap.containsKey(((ArrayList)localObject2).get(i)))
          {
            String str1 = (String)((ArrayList)localObject2).get(i);
            String str2 = (String)localArrayList1.get(i);
            String str3 = (String)localArrayList2.get(i);
            zzfg localzzfg = (zzfg)localHashMap.get(str1);
            String str4 = zzab.zzaU().zzL(str2);
            if (zzvn.equals(str4))
            {
              zza(localzzfg, str2, str3);
              localHashMap.remove(str1);
            }
          }
          i += 1;
        }
        if ((localObject1 != null) && (!localHashMap.isEmpty())) {}
      }
      else
      {
        localObject1 = localHashMap.keySet().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (String)((Iterator)localObject1).next();
          zzuZ.zza((zzfg)localHashMap.get(localObject2));
        }
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */