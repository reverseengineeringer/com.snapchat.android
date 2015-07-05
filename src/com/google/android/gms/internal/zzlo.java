package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Process;
import com.google.android.gms.common.internal.zze;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class zzlo
{
  private static final Object zzQc = new Object();
  private static zzlo zzRr;
  private static final ComponentName zzRw = new ComponentName("com.google.android.gms", "com.google.android.gms.common.stats.GmsCoreStatsService");
  private final List<String> zzRs;
  private final List<String> zzRt;
  private final List<String> zzRu;
  private final List<String> zzRv;
  private zzlr zzRx;
  
  private zzlo()
  {
    if (getLogLevel() == zzlq.zzRF)
    {
      zzRs = Collections.EMPTY_LIST;
      zzRt = Collections.EMPTY_LIST;
      zzRu = Collections.EMPTY_LIST;
      zzRv = Collections.EMPTY_LIST;
      return;
    }
    Object localObject = (String)zzlp.zza.zzRA.get();
    if (localObject == null)
    {
      localObject = Collections.EMPTY_LIST;
      zzRs = ((List)localObject);
      localObject = (String)zzlp.zza.zzRB.get();
      if (localObject != null) {
        break label175;
      }
      localObject = Collections.EMPTY_LIST;
      label84:
      zzRt = ((List)localObject);
      localObject = (String)zzlp.zza.zzRC.get();
      if (localObject != null) {
        break label188;
      }
      localObject = Collections.EMPTY_LIST;
      label107:
      zzRu = ((List)localObject);
      localObject = (String)zzlp.zza.zzRD.get();
      if (localObject != null) {
        break label201;
      }
    }
    label175:
    label188:
    label201:
    for (localObject = Collections.EMPTY_LIST;; localObject = Arrays.asList(((String)localObject).split(",")))
    {
      zzRv = ((List)localObject);
      zzRx = new zzlr(1024, ((Long)zzlp.zza.zzRE.get()).longValue());
      return;
      localObject = Arrays.asList(((String)localObject).split(","));
      break;
      localObject = Arrays.asList(((String)localObject).split(","));
      break label84;
      localObject = Arrays.asList(((String)localObject).split(","));
      break label107;
    }
  }
  
  private int getLogLevel()
  {
    try
    {
      if ((zze.zzPq) && (zzki.isInitialized()) && (zzki.zzis() == Process.myUid())) {
        return ((Integer)zzlp.zza.zzRz.get()).intValue();
      }
      int i = zzlq.zzRF;
      return i;
    }
    catch (SecurityException localSecurityException) {}
    return zzlq.zzRF;
  }
  
  private void zza(Context paramContext, ServiceConnection paramServiceConnection, String paramString1, Intent paramIntent, String paramString2)
  {
    if (!zze.zzPq) {}
    long l1;
    do
    {
      return;
      l1 = zzb(paramServiceConnection);
    } while (!zza(paramContext, paramString1, paramIntent, l1, paramString2));
    long l2 = System.currentTimeMillis();
    paramServiceConnection = zzmf.zzl(3, 5);
    if ((paramString2.equals("UNBIND")) || (paramString2.equals("DISCONNECT"))) {}
    for (paramServiceConnection = new zzlm(l2, paramString2, null, null, null, null, paramServiceConnection, l1);; paramServiceConnection = new zzlm(l2, paramString2, zzmf.zzR(paramContext), paramString1, processName, name, paramServiceConnection, l1))
    {
      paramContext.startService(new Intent().setComponent(zzRw).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", paramServiceConnection));
      return;
      paramIntent = zzb(paramContext, paramIntent);
    }
  }
  
  private boolean zza(Context paramContext, String paramString1, Intent paramIntent, long paramLong, String paramString2)
  {
    int i = getLogLevel();
    if ((i == zzlq.zzRF) || (zzRx == null)) {}
    do
    {
      do
      {
        do
        {
          return false;
          if ((paramString2 != "DISCONNECT") && (paramString2 != "UNBIND")) {
            break;
          }
        } while (!zzRx.zzr(paramLong));
        return true;
        paramIntent = zzb(paramContext, paramIntent);
      } while (paramIntent == null);
      paramContext = zzmf.zzR(paramContext);
      paramString2 = processName;
      paramIntent = name;
    } while ((zzRs.contains(paramContext)) || (zzRt.contains(paramString1)) || (zzRu.contains(paramString2)) || (zzRv.contains(paramIntent)) || ((paramString2.equals(paramContext)) && ((i & zzlq.zzRJ) != 0)));
    zzRx.zza(Long.valueOf(paramLong));
    return true;
  }
  
  private long zzb(ServiceConnection paramServiceConnection)
  {
    return Process.myPid() << 32 | System.identityHashCode(paramServiceConnection);
  }
  
  private static ServiceInfo zzb(Context paramContext, Intent paramIntent)
  {
    paramContext = paramContext.getPackageManager().queryIntentServices(paramIntent, 128);
    if ((paramContext == null) || (paramContext.size() == 0))
    {
      new StringBuilder("There are no handler of this intent: ").append(paramIntent.toUri(0));
      return null;
    }
    if (paramContext.size() > 1)
    {
      new StringBuilder("There are multiple handlers for this intent: ").append(paramIntent.toUri(0));
      paramIntent = paramContext.iterator();
      if (paramIntent.hasNext())
      {
        paramContext = nextserviceInfo.name;
        return null;
      }
    }
    return get0serviceInfo;
  }
  
  public static zzlo zzka()
  {
    synchronized (zzQc)
    {
      if (zzRr == null) {
        zzRr = new zzlo();
      }
      return zzRr;
    }
  }
  
  public void zza(Context paramContext, ServiceConnection paramServiceConnection)
  {
    zza(paramContext, paramServiceConnection, null, null, "UNBIND");
    paramContext.unbindService(paramServiceConnection);
  }
  
  public void zza(Context paramContext, ServiceConnection paramServiceConnection, String paramString, Intent paramIntent)
  {
    zza(paramContext, paramServiceConnection, paramString, paramIntent, "CONNECT");
  }
  
  public boolean zza(Context paramContext, Intent paramIntent, ServiceConnection paramServiceConnection, int paramInt)
  {
    return zza(paramContext, paramContext.getClass().getName(), paramIntent, paramServiceConnection, paramInt);
  }
  
  public boolean zza(Context paramContext, String paramString, Intent paramIntent, ServiceConnection paramServiceConnection, int paramInt)
  {
    zza(paramContext, paramServiceConnection, paramString, paramIntent, "BIND");
    return paramContext.bindService(paramIntent, paramServiceConnection, paramInt);
  }
  
  public void zzb(Context paramContext, ServiceConnection paramServiceConnection)
  {
    zza(paramContext, paramServiceConnection, null, null, "DISCONNECT");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */