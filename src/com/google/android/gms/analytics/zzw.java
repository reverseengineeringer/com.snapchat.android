package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.internal.zzik;
import com.google.android.gms.internal.zzlv;
import com.google.android.gms.internal.zzlx;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;

class zzw
  implements zzak, zzc.zzb, zzc.zzc
{
  private final Context mContext;
  private zzd zzBR;
  private final zzf zzBS;
  private boolean zzBV;
  private volatile long zzCh;
  private volatile zza zzCi;
  private volatile zzb zzCj;
  private zzd zzCk;
  private final GoogleAnalytics zzCl;
  private final Queue<zzd> zzCm = new ConcurrentLinkedQueue();
  private volatile int zzCn;
  private volatile Timer zzCo;
  private volatile Timer zzCp;
  private volatile Timer zzCq;
  private boolean zzCr;
  private boolean zzCs;
  private boolean zzCt;
  private long zzCu;
  private zzlv zzmW;
  
  zzw(Context paramContext, zzf paramzzf)
  {
    this(paramContext, paramzzf, null, GoogleAnalytics.getInstance(paramContext));
  }
  
  zzw(Context paramContext, zzf paramzzf, zzd paramzzd, GoogleAnalytics paramGoogleAnalytics)
  {
    zzCk = paramzzd;
    mContext = paramContext;
    zzBS = paramzzf;
    zzCl = paramGoogleAnalytics;
    zzCn = 0;
    zzCi = zza.zzCD;
    if (zzG(paramContext)) {}
    for (zzCu = 10000L;; zzCu = 300000L)
    {
      zzmW = zzlx.zzkc();
      return;
    }
  }
  
  private static boolean zzG(Context paramContext)
  {
    return (paramContext != null) && ("com.google.android.gms".equals(paramContext.getPackageName()));
  }
  
  private Timer zza(Timer paramTimer)
  {
    if (paramTimer != null) {
      paramTimer.cancel();
    }
    return null;
  }
  
  private void zzdJ()
  {
    try
    {
      if ((zzCj != null) && (zzCi == zza.zzCy))
      {
        zzCi = zza.zzCC;
        zzCj.disconnect();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void zzfL()
  {
    zzCo = zza(zzCo);
    zzCp = zza(zzCp);
    zzCq = zza(zzCq);
  }
  
  private void zzfN()
  {
    for (;;)
    {
      try
      {
        if (!Thread.currentThread().equals(zzBS.getThread()))
        {
          zzBS.zzfi().add(new Runnable()
          {
            public void run()
            {
              zzw.zza(zzw.this);
            }
          });
          return;
        }
        if (zzCr) {
          zzfa();
        }
        switch (2.zzCw[zzCi.ordinal()])
        {
        case 1: 
          if (zzCm.isEmpty()) {
            break;
          }
          zzd localzzd1 = (zzd)zzCm.poll();
          zzae.zzab("Sending hit to store  " + localzzd1);
          zzBR.zza(localzzd1.zzfS(), localzzd1.zzfT(), localzzd1.getPath(), localzzd1.zzfU());
          break;
        case 7: 
          zzae.zzab("Blocked. Dropping hits.");
        }
      }
      finally {}
      zzCm.clear();
      continue;
      if (zzBV)
      {
        zzfO();
        continue;
        if (!zzCm.isEmpty())
        {
          zzd localzzd2 = (zzd)zzCm.peek();
          zzae.zzab("Sending hit to service   " + localzzd2);
          if (!zzCl.isDryRunEnabled()) {
            zzCj.zza(localzzd2.zzfS(), localzzd2.zzfT(), localzzd2.getPath(), localzzd2.zzfU());
          }
          for (;;)
          {
            zzCm.poll();
            break;
            zzae.zzab("Dry run enabled. Hit not actually sent to service.");
          }
        }
        zzCh = zzmW.elapsedRealtime();
        continue;
        zzae.zzab("Need to reconnect");
        if (!zzCm.isEmpty()) {
          zzfQ();
        }
      }
    }
  }
  
  private void zzfO()
  {
    zzBR.dispatch();
    zzBV = false;
  }
  
  private void zzfP()
  {
    try
    {
      zza localzza1 = zzCi;
      zza localzza2 = zza.zzCz;
      if (localzza1 == localzza2) {}
      for (;;)
      {
        return;
        if (!zzG(mContext)) {
          break;
        }
        zzCi = zza.zzCA;
        zzCj.disconnect();
        zzae.zzac("Attempted to fall back to local store from service.");
      }
      zzfL();
    }
    finally {}
    zzae.zzab("falling back to local store");
    if (zzCk != null) {}
    zzv localzzv;
    for (zzBR = zzCk;; zzBR = localzzv.zzE(null))
    {
      zzCi = zza.zzCz;
      zzfN();
      break;
      localzzv = zzv.zzfE();
      localzzv.zza(mContext, zzBS);
    }
  }
  
  private void zzfQ()
  {
    for (;;)
    {
      try
      {
        if ((!zzCt) && (zzCj != null))
        {
          zza localzza1 = zzCi;
          zza localzza2 = zza.zzCz;
          if (localzza1 != localzza2) {
            try
            {
              zzCn += 1;
              zza(zzCp);
              zzCi = zza.zzCx;
              zzCp = new Timer("Failed Connect");
              zzCp.schedule(new zzc(null), 3000L);
              zzae.zzab("connecting to Analytics service");
              zzCj.connect();
              return;
            }
            catch (SecurityException localSecurityException)
            {
              zzae.zzac("security exception on connectToService");
              zzfP();
              continue;
            }
          }
        }
        zzae.zzac("client not initialized.");
      }
      finally {}
      zzfP();
    }
  }
  
  private void zzfR()
  {
    zzCo = zza(zzCo);
    zzCo = new Timer("Service Reconnect");
    zzCo.schedule(new zze(null), 5000L);
  }
  
  public void dispatch()
  {
    switch (2.zzCw[zzCi.ordinal()])
    {
    default: 
      zzBV = true;
    case 2: 
      return;
    }
    zzfO();
  }
  
  /* Error */
  public void onConnected()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: aload_0
    //   5: getfield 171	com/google/android/gms/analytics/zzw:zzCp	Ljava/util/Timer;
    //   8: invokespecial 169	com/google/android/gms/analytics/zzw:zza	(Ljava/util/Timer;)Ljava/util/Timer;
    //   11: putfield 171	com/google/android/gms/analytics/zzw:zzCp	Ljava/util/Timer;
    //   14: aload_0
    //   15: iconst_0
    //   16: putfield 91	com/google/android/gms/analytics/zzw:zzCn	I
    //   19: ldc_w 365
    //   22: invokestatic 238	com/google/android/gms/analytics/zzae:zzab	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: getstatic 151	com/google/android/gms/analytics/zzw$zza:zzCy	Lcom/google/android/gms/analytics/zzw$zza;
    //   29: putfield 96	com/google/android/gms/analytics/zzw:zzCi	Lcom/google/android/gms/analytics/zzw$zza;
    //   32: aload_0
    //   33: getfield 367	com/google/android/gms/analytics/zzw:zzCs	Z
    //   36: ifeq +15 -> 51
    //   39: aload_0
    //   40: invokespecial 360	com/google/android/gms/analytics/zzw:zzdJ	()V
    //   43: aload_0
    //   44: iconst_0
    //   45: putfield 367	com/google/android/gms/analytics/zzw:zzCs	Z
    //   48: aload_0
    //   49: monitorexit
    //   50: return
    //   51: aload_0
    //   52: invokespecial 138	com/google/android/gms/analytics/zzw:zzfN	()V
    //   55: aload_0
    //   56: aload_0
    //   57: aload_0
    //   58: getfield 173	com/google/android/gms/analytics/zzw:zzCq	Ljava/util/Timer;
    //   61: invokespecial 169	com/google/android/gms/analytics/zzw:zza	(Ljava/util/Timer;)Ljava/util/Timer;
    //   64: putfield 173	com/google/android/gms/analytics/zzw:zzCq	Ljava/util/Timer;
    //   67: aload_0
    //   68: new 131	java/util/Timer
    //   71: dup
    //   72: ldc_w 369
    //   75: invokespecial 330	java/util/Timer:<init>	(Ljava/lang/String;)V
    //   78: putfield 173	com/google/android/gms/analytics/zzw:zzCq	Ljava/util/Timer;
    //   81: aload_0
    //   82: getfield 173	com/google/android/gms/analytics/zzw:zzCq	Ljava/util/Timer;
    //   85: new 19	com/google/android/gms/analytics/zzw$zzb
    //   88: dup
    //   89: aload_0
    //   90: aconst_null
    //   91: invokespecial 370	com/google/android/gms/analytics/zzw$zzb:<init>	(Lcom/google/android/gms/analytics/zzw;Lcom/google/android/gms/analytics/zzw$1;)V
    //   94: aload_0
    //   95: getfield 104	com/google/android/gms/analytics/zzw:zzCu	J
    //   98: invokevirtual 339	java/util/Timer:schedule	(Ljava/util/TimerTask;J)V
    //   101: goto -53 -> 48
    //   104: astore_1
    //   105: aload_0
    //   106: monitorexit
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	zzw
    //   104	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	48	104	finally
    //   51	101	104	finally
  }
  
  public void onDisconnected()
  {
    for (;;)
    {
      try
      {
        if (zzCi == zza.zzCA)
        {
          zzae.zzab("Service blocked.");
          zzfL();
          return;
        }
        if (zzCi == zza.zzCC)
        {
          zzae.zzab("Disconnected from service");
          zzfL();
          zzCi = zza.zzCD;
          continue;
        }
        zzae.zzab("Unexpected disconnect.");
      }
      finally {}
      zzCi = zza.zzCB;
      if (zzCn < 2) {
        zzfR();
      } else {
        zzfP();
      }
    }
  }
  
  /* Error */
  public void zza(int paramInt, android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getstatic 380	com/google/android/gms/analytics/zzw$zza:zzCB	Lcom/google/android/gms/analytics/zzw$zza;
    //   6: putfield 96	com/google/android/gms/analytics/zzw:zzCi	Lcom/google/android/gms/analytics/zzw$zza;
    //   9: aload_0
    //   10: getfield 91	com/google/android/gms/analytics/zzw:zzCn	I
    //   13: iconst_2
    //   14: if_icmpge +36 -> 50
    //   17: new 221	java/lang/StringBuilder
    //   20: dup
    //   21: ldc_w 385
    //   24: invokespecial 226	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: iload_1
    //   28: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   31: ldc_w 390
    //   34: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 233	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokestatic 304	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
    //   43: aload_0
    //   44: invokespecial 382	com/google/android/gms/analytics/zzw:zzfR	()V
    //   47: aload_0
    //   48: monitorexit
    //   49: return
    //   50: new 221	java/lang/StringBuilder
    //   53: dup
    //   54: ldc_w 385
    //   57: invokespecial 226	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: iload_1
    //   61: invokevirtual 388	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   64: ldc_w 395
    //   67: invokevirtual 393	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 233	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 304	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
    //   76: aload_0
    //   77: invokespecial 142	com/google/android/gms/analytics/zzw:zzfP	()V
    //   80: goto -33 -> 47
    //   83: astore_2
    //   84: aload_0
    //   85: monitorexit
    //   86: aload_2
    //   87: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	88	0	this	zzw
    //   0	88	1	paramInt	int
    //   0	88	2	paramIntent	android.content.Intent
    // Exception table:
    //   from	to	target	type
    //   2	47	83	finally
    //   50	80	83	finally
  }
  
  public void zzb(Map<String, String> paramMap, long paramLong, String paramString, List<zzik> paramList)
  {
    zzae.zzab("putHit called");
    zzCm.add(new zzd(paramMap, paramLong, paramString, paramList));
    zzfN();
  }
  
  public void zzfM()
  {
    if (zzCj != null) {
      return;
    }
    zzCj = new zzc(mContext, this, this);
    zzfQ();
  }
  
  public void zzfa()
  {
    zzae.zzab("clearHits called");
    zzCm.clear();
    switch (2.zzCw[zzCi.ordinal()])
    {
    default: 
      zzCr = true;
      return;
    case 1: 
      zzBR.zzl(0L);
      zzCr = false;
      return;
    }
    zzCj.zzfa();
    zzCr = false;
  }
  
  public void zzfh()
  {
    for (;;)
    {
      try
      {
        boolean bool = zzCt;
        if (bool) {
          return;
        }
        zzae.zzab("setForceLocalDispatch called.");
        zzCt = true;
        switch (2.zzCw[zzCi.ordinal()])
        {
        case 1: 
        case 2: 
          zzdJ();
          break;
        case 3: 
          zzCs = true;
        }
      }
      finally {}
    }
  }
  
  static enum zza
  {
    private zza() {}
  }
  
  class zzb
    extends TimerTask
  {
    private zzb() {}
    
    public void run()
    {
      if ((zzw.zzb(zzw.this) == zzw.zza.zzCy) && (zzw.zze(zzw.this).isEmpty()) && (zzw.zzf(zzw.this) + zzw.zzg(zzw.this) < zzw.zzh(zzw.this).elapsedRealtime()))
      {
        zzae.zzab("Disconnecting due to inactivity");
        zzw.zzi(zzw.this);
        return;
      }
      zzw.zzj(zzw.this).schedule(new zzb(zzw.this), zzw.zzg(zzw.this));
    }
  }
  
  class zzc
    extends TimerTask
  {
    private zzc() {}
    
    public void run()
    {
      if (zzw.zzb(zzw.this) == zzw.zza.zzCx) {
        zzw.zzc(zzw.this);
      }
    }
  }
  
  static class zzd
  {
    private final Map<String, String> zzCF;
    private final long zzCG;
    private final String zzCH;
    private final List<zzik> zzCI;
    
    public zzd(Map<String, String> paramMap, long paramLong, String paramString, List<zzik> paramList)
    {
      zzCF = paramMap;
      zzCG = paramLong;
      zzCH = paramString;
      zzCI = paramList;
    }
    
    public String getPath()
    {
      return zzCH;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("PATH: ");
      localStringBuilder.append(zzCH);
      if (zzCF != null)
      {
        localStringBuilder.append("  PARAMS: ");
        Iterator localIterator = zzCF.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          localStringBuilder.append((String)localEntry.getKey());
          localStringBuilder.append("=");
          localStringBuilder.append((String)localEntry.getValue());
          localStringBuilder.append(",  ");
        }
      }
      return localStringBuilder.toString();
    }
    
    public Map<String, String> zzfS()
    {
      return zzCF;
    }
    
    public long zzfT()
    {
      return zzCG;
    }
    
    public List<zzik> zzfU()
    {
      return zzCI;
    }
  }
  
  class zze
    extends TimerTask
  {
    private zze() {}
    
    public void run()
    {
      zzw.zzd(zzw.this);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */