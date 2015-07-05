package com.google.android.gms.analytics;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.os.SystemClock;

class zzv
  extends zzaj
{
  private static final Object zzBQ = new Object();
  private static zzv zzCf;
  private Context mContext;
  private Handler mHandler;
  private zzd zzBR;
  private volatile zzf zzBS;
  private int zzBT = 1800;
  private long zzBU = Long.MIN_VALUE;
  private boolean zzBV = true;
  private boolean zzBW;
  private String zzBX;
  private boolean zzBY = false;
  private boolean zzBZ = true;
  private boolean zzBs = false;
  private boolean zzCa = true;
  private zze zzCb = new zze()
  {
    public void zzD(boolean paramAnonymousBoolean)
    {
      zzb(paramAnonymousBoolean, zzv.zza(zzv.this));
    }
  };
  private boolean zzCc;
  private zzu zzCd;
  private boolean zzCe = false;
  
  public static zzv zzfE()
  {
    if (zzCf == null) {
      zzCf = new zzv();
    }
    return zzCf;
  }
  
  private void zzfF()
  {
    zzCd = new zzu(this);
    zzCd.zzD(mContext);
  }
  
  private PendingIntent zzfG()
  {
    Intent localIntent = new Intent(mContext.getApplicationContext(), AnalyticsReceiver.class);
    localIntent.setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
    return PendingIntent.getBroadcast(mContext, 0, localIntent, 0);
  }
  
  private AlarmManager zzfH()
  {
    PendingIntent localPendingIntent = zzfG();
    AlarmManager localAlarmManager = (AlarmManager)mContext.getApplicationContext().getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    return localAlarmManager;
  }
  
  private void zzfI()
  {
    try
    {
      zzfH();
      ActivityInfo localActivityInfo = mContext.getPackageManager().getReceiverInfo(new ComponentName(mContext, AnalyticsReceiver.class), 2);
      if ((localActivityInfo != null) && (enabled) && (zzBT > 0))
      {
        zzh(zzBT, zzBT);
        zzae.zzab("Using a receiver for local dispatch.");
        zzCc = true;
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      do
      {
        zzae.zzab("Receiver for local dispatch not registered. For more reliable analytics, please see http://goo.gl/8Rd3yj for instructions.");
        mHandler = new Handler(mContext.getMainLooper(), new Handler.Callback()
        {
          public boolean handleMessage(Message paramAnonymousMessage)
          {
            if ((1 == what) && (zzv.zzfK().equals(obj)))
            {
              long l = SystemClock.elapsedRealtime();
              if (l >= zzv.zzb(zzv.this) + zzv.zzc(zzv.this) * 1000)
              {
                zzy.zzfV().zzF(true);
                dispatchLocalHits();
                zzy.zzfV().zzF(false);
                zzv.zza(zzv.this, l);
              }
              if ((zzv.zzc(zzv.this) > 0) && (!zzv.zzd(zzv.this))) {
                zzv.zze(zzv.this).sendMessageDelayed(zzv.zze(zzv.this).obtainMessage(1, zzv.zzfK()), Math.min(60, zzv.zzc(zzv.this)) * 1000);
              }
            }
            return true;
          }
        });
      } while (zzBT <= 0);
      mHandler.sendMessageDelayed(mHandler.obtainMessage(1, zzBQ), Math.min(60, zzBT) * 1000);
    }
  }
  
  private void zzh(int paramInt1, int paramInt2)
  {
    int j = paramInt1;
    int k = paramInt2;
    if (!zzBY)
    {
      int i = paramInt1;
      if (paramInt1 < 1800) {
        i = 1800;
      }
      j = i;
      k = paramInt2;
      if (paramInt2 < 1800)
      {
        k = 1800;
        j = i;
      }
    }
    zzfH().setInexactRepeating(2, j * 1000, k * 1000, zzfG());
  }
  
  void dispatchLocalHits()
  {
    try
    {
      zzF(null);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  void setLocalDispatchPeriod(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 85	com/google/android/gms/analytics/zzv:mHandler	Landroid/os/Handler;
    //   6: ifnonnull +27 -> 33
    //   9: aload_0
    //   10: getfield 184	com/google/android/gms/analytics/zzv:zzCc	Z
    //   13: ifne +20 -> 33
    //   16: ldc -32
    //   18: invokestatic 182	com/google/android/gms/analytics/zzae:zzab	(Ljava/lang/String;)V
    //   21: aload_0
    //   22: iload_1
    //   23: putfield 52	com/google/android/gms/analytics/zzv:zzBT	I
    //   26: iload_1
    //   27: invokestatic 229	com/google/android/gms/analytics/AnalyticsService:zzC	(I)V
    //   30: aload_0
    //   31: monitorexit
    //   32: return
    //   33: invokestatic 235	com/google/android/gms/analytics/zzy:zzfV	()Lcom/google/android/gms/analytics/zzy;
    //   36: getstatic 241	com/google/android/gms/analytics/zzy$zza:zzDO	Lcom/google/android/gms/analytics/zzy$zza;
    //   39: invokevirtual 244	com/google/android/gms/analytics/zzy:zza	(Lcom/google/android/gms/analytics/zzy$zza;)V
    //   42: aload_0
    //   43: getfield 71	com/google/android/gms/analytics/zzv:zzCe	Z
    //   46: ifne +47 -> 93
    //   49: aload_0
    //   50: getfield 62	com/google/android/gms/analytics/zzv:zzBZ	Z
    //   53: ifeq +40 -> 93
    //   56: aload_0
    //   57: getfield 52	com/google/android/gms/analytics/zzv:zzBT	I
    //   60: ifle +33 -> 93
    //   63: aload_0
    //   64: getfield 85	com/google/android/gms/analytics/zzv:mHandler	Landroid/os/Handler;
    //   67: ifnull +14 -> 81
    //   70: aload_0
    //   71: getfield 85	com/google/android/gms/analytics/zzv:mHandler	Landroid/os/Handler;
    //   74: iconst_1
    //   75: getstatic 48	com/google/android/gms/analytics/zzv:zzBQ	Ljava/lang/Object;
    //   78: invokevirtual 248	android/os/Handler:removeMessages	(ILjava/lang/Object;)V
    //   81: aload_0
    //   82: getfield 184	com/google/android/gms/analytics/zzv:zzCc	Z
    //   85: ifeq +8 -> 93
    //   88: aload_0
    //   89: invokespecial 152	com/google/android/gms/analytics/zzv:zzfH	()Landroid/app/AlarmManager;
    //   92: pop
    //   93: aload_0
    //   94: iload_1
    //   95: putfield 52	com/google/android/gms/analytics/zzv:zzBT	I
    //   98: iload_1
    //   99: invokestatic 229	com/google/android/gms/analytics/AnalyticsService:zzC	(I)V
    //   102: iload_1
    //   103: ifle -73 -> 30
    //   106: aload_0
    //   107: getfield 71	com/google/android/gms/analytics/zzv:zzCe	Z
    //   110: ifne -80 -> 30
    //   113: aload_0
    //   114: getfield 62	com/google/android/gms/analytics/zzv:zzBZ	Z
    //   117: ifeq -87 -> 30
    //   120: aload_0
    //   121: getfield 85	com/google/android/gms/analytics/zzv:mHandler	Landroid/os/Handler;
    //   124: ifnull +36 -> 160
    //   127: aload_0
    //   128: getfield 85	com/google/android/gms/analytics/zzv:mHandler	Landroid/os/Handler;
    //   131: aload_0
    //   132: getfield 85	com/google/android/gms/analytics/zzv:mHandler	Landroid/os/Handler;
    //   135: iconst_1
    //   136: getstatic 48	com/google/android/gms/analytics/zzv:zzBQ	Ljava/lang/Object;
    //   139: invokevirtual 200	android/os/Handler:obtainMessage	(ILjava/lang/Object;)Landroid/os/Message;
    //   142: bipush 60
    //   144: aload_0
    //   145: getfield 52	com/google/android/gms/analytics/zzv:zzBT	I
    //   148: invokestatic 206	java/lang/Math:min	(II)I
    //   151: sipush 1000
    //   154: imul
    //   155: i2l
    //   156: invokevirtual 210	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   159: pop
    //   160: aload_0
    //   161: getfield 184	com/google/android/gms/analytics/zzv:zzCc	Z
    //   164: ifeq -134 -> 30
    //   167: aload_0
    //   168: iload_1
    //   169: iload_1
    //   170: invokespecial 174	com/google/android/gms/analytics/zzv:zzh	(II)V
    //   173: goto -143 -> 30
    //   176: astore_2
    //   177: aload_0
    //   178: monitorexit
    //   179: aload_2
    //   180: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	181	0	this	zzv
    //   0	181	1	paramInt	int
    //   176	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	30	176	finally
    //   33	81	176	finally
    //   81	93	176	finally
    //   93	102	176	finally
    //   106	160	176	finally
    //   160	173	176	finally
  }
  
  zzd zzE(Context paramContext)
  {
    if (paramContext != null) {}
    try
    {
      if (mContext == null) {
        mContext = paramContext;
      }
      if (zzBR != null) {
        break label117;
      }
      if (mContext == null) {
        throw new IllegalStateException("Cant get a store unless we have a context");
      }
    }
    finally {}
    zzBR = new zzag(zzCb, mContext, new zzj());
    zzBR.setDryRun(zzBs);
    if (zzBX != null)
    {
      zzBR.zzff().zzak(zzBX);
      zzBX = null;
    }
    label117:
    if ((mHandler == null) && (!zzCc)) {
      zzfI();
    }
    if ((zzCd == null) && (zzCa)) {
      zzfF();
    }
    paramContext = zzBR;
    return paramContext;
  }
  
  void zzE(boolean paramBoolean)
  {
    try
    {
      zzb(zzCe, paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  void zzF(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aconst_null
    //   3: astore_2
    //   4: aload_0
    //   5: getfield 292	com/google/android/gms/analytics/zzv:zzBS	Lcom/google/android/gms/analytics/zzf;
    //   8: ifnull +26 -> 34
    //   11: aload_0
    //   12: getfield 292	com/google/android/gms/analytics/zzv:zzBS	Lcom/google/android/gms/analytics/zzf;
    //   15: astore_1
    //   16: aload_1
    //   17: ifnonnull +50 -> 67
    //   20: ldc_w 294
    //   23: invokestatic 182	com/google/android/gms/analytics/zzae:zzab	(Ljava/lang/String;)V
    //   26: aload_0
    //   27: iconst_1
    //   28: putfield 58	com/google/android/gms/analytics/zzv:zzBV	Z
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: aload_1
    //   35: ifnull +14 -> 49
    //   38: aload_1
    //   39: invokestatic 300	com/google/android/gms/analytics/GoogleAnalytics:getInstance	(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    //   42: invokevirtual 304	com/google/android/gms/analytics/GoogleAnalytics:zzgm	()Lcom/google/android/gms/analytics/zzf;
    //   45: astore_1
    //   46: goto -30 -> 16
    //   49: aload_2
    //   50: astore_1
    //   51: invokestatic 308	com/google/android/gms/analytics/GoogleAnalytics:zzgj	()Lcom/google/android/gms/analytics/GoogleAnalytics;
    //   54: ifnull -38 -> 16
    //   57: invokestatic 308	com/google/android/gms/analytics/GoogleAnalytics:zzgj	()Lcom/google/android/gms/analytics/GoogleAnalytics;
    //   60: invokevirtual 304	com/google/android/gms/analytics/GoogleAnalytics:zzgm	()Lcom/google/android/gms/analytics/zzf;
    //   63: astore_1
    //   64: goto -48 -> 16
    //   67: invokestatic 235	com/google/android/gms/analytics/zzy:zzfV	()Lcom/google/android/gms/analytics/zzy;
    //   70: getstatic 311	com/google/android/gms/analytics/zzy$zza:zzDN	Lcom/google/android/gms/analytics/zzy$zza;
    //   73: invokevirtual 244	com/google/android/gms/analytics/zzy:zza	(Lcom/google/android/gms/analytics/zzy$zza;)V
    //   76: aload_1
    //   77: invokeinterface 316 1 0
    //   82: goto -51 -> 31
    //   85: astore_1
    //   86: aload_0
    //   87: monitorexit
    //   88: aload_1
    //   89: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	this	zzv
    //   0	90	1	paramContext	Context
    //   3	47	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	16	85	finally
    //   20	31	85	finally
    //   38	46	85	finally
    //   51	64	85	finally
    //   67	82	85	finally
  }
  
  /* Error */
  void zza(Context paramContext, zzf paramzzf)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 100	com/google/android/gms/analytics/zzv:mContext	Landroid/content/Context;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: aload_1
    //   16: invokevirtual 114	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   19: putfield 100	com/google/android/gms/analytics/zzv:mContext	Landroid/content/Context;
    //   22: aload_0
    //   23: getfield 292	com/google/android/gms/analytics/zzv:zzBS	Lcom/google/android/gms/analytics/zzf;
    //   26: ifnonnull -15 -> 11
    //   29: aload_0
    //   30: aload_2
    //   31: putfield 292	com/google/android/gms/analytics/zzv:zzBS	Lcom/google/android/gms/analytics/zzf;
    //   34: aload_0
    //   35: getfield 58	com/google/android/gms/analytics/zzv:zzBV	Z
    //   38: ifeq +12 -> 50
    //   41: aload_0
    //   42: invokevirtual 319	com/google/android/gms/analytics/zzv:dispatchLocalHits	()V
    //   45: aload_0
    //   46: iconst_0
    //   47: putfield 58	com/google/android/gms/analytics/zzv:zzBV	Z
    //   50: aload_0
    //   51: getfield 321	com/google/android/gms/analytics/zzv:zzBW	Z
    //   54: ifeq -43 -> 11
    //   57: aload_0
    //   58: invokevirtual 324	com/google/android/gms/analytics/zzv:zzfh	()V
    //   61: aload_0
    //   62: iconst_0
    //   63: putfield 321	com/google/android/gms/analytics/zzv:zzBW	Z
    //   66: goto -55 -> 11
    //   69: astore_1
    //   70: aload_0
    //   71: monitorexit
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	zzv
    //   0	74	1	paramContext	Context
    //   0	74	2	paramzzf	zzf
    //   6	2	3	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   2	7	69	finally
    //   14	50	69	finally
    //   50	66	69	finally
  }
  
  void zzb(boolean paramBoolean1, boolean paramBoolean2)
  {
    for (;;)
    {
      StringBuilder localStringBuilder;
      String str1;
      try
      {
        if (zzCe == paramBoolean1)
        {
          boolean bool = zzBZ;
          if (bool == paramBoolean2) {
            return;
          }
        }
        if (((paramBoolean1) || (!paramBoolean2)) && (zzBT > 0))
        {
          if (mHandler != null) {
            mHandler.removeMessages(1, zzBQ);
          }
          if (zzCc) {
            zzfH();
          }
        }
        if ((!paramBoolean1) && (paramBoolean2) && (zzBT > 0))
        {
          if (mHandler != null) {
            mHandler.sendMessageDelayed(mHandler.obtainMessage(1, zzBQ), Math.min(60, zzBT) * 1000);
          }
          if (zzCc) {
            zzh(zzBT, zzBT);
          }
        }
        localStringBuilder = new StringBuilder("PowerSaveMode ");
        if (paramBoolean1) {
          break label206;
        }
        if (paramBoolean2) {
          break label198;
        }
      }
      finally {}
      zzae.zzab(str1);
      zzCe = paramBoolean1;
      zzBZ = paramBoolean2;
      continue;
      label198:
      String str2 = "terminated.";
      continue;
      label206:
      str2 = "initiated.";
    }
  }
  
  void zzfJ()
  {
    try
    {
      if ((!zzCe) && (zzBZ) && (zzBT > 0))
      {
        if (mHandler != null)
        {
          mHandler.removeMessages(1, zzBQ);
          zzBU = Long.MIN_VALUE;
          mHandler.sendMessage(mHandler.obtainMessage(1, zzBQ));
        }
        if (zzCc) {
          zzh(0, zzBT);
        }
      }
      return;
    }
    finally {}
  }
  
  void zzfh()
  {
    if (zzBS == null)
    {
      zzae.zzab("setForceLocalDispatch() queued. It will be called once initialization is complete.");
      zzBW = true;
      return;
    }
    zzy.zzfV().zza(zzy.zza.zzEa);
    zzBS.zzfh();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */