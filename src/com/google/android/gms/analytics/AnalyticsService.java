package com.google.android.gms.analytics;

import android.app.IntentService;

public final class AnalyticsService
  extends IntentService
{
  static int zzAZ = 1800;
  
  public AnalyticsService()
  {
    super("AnalyticsService");
  }
  
  public AnalyticsService(String paramString)
  {
    super(paramString);
  }
  
  static void zzC(int paramInt)
  {
    zzAZ = paramInt;
  }
  
  /* Error */
  protected final void onHandleIntent(android.content.Intent arg1)
  {
    // Byte code:
    //   0: getstatic 29	com/google/android/gms/analytics/AnalyticsReceiver:zzmz	Ljava/lang/Object;
    //   3: astore_1
    //   4: aload_1
    //   5: monitorenter
    //   6: getstatic 33	com/google/android/gms/analytics/AnalyticsReceiver:zzAY	Landroid/os/PowerManager$WakeLock;
    //   9: ifnull +18 -> 27
    //   12: getstatic 33	com/google/android/gms/analytics/AnalyticsReceiver:zzAY	Landroid/os/PowerManager$WakeLock;
    //   15: invokevirtual 39	android/os/PowerManager$WakeLock:isHeld	()Z
    //   18: ifeq +9 -> 27
    //   21: getstatic 33	com/google/android/gms/analytics/AnalyticsReceiver:zzAY	Landroid/os/PowerManager$WakeLock;
    //   24: invokevirtual 42	android/os/PowerManager$WakeLock:release	()V
    //   27: aload_1
    //   28: monitorexit
    //   29: aload_0
    //   30: invokestatic 48	com/google/android/gms/analytics/GoogleAnalytics:getInstance	(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
    //   33: astore_1
    //   34: ldc 50
    //   36: invokestatic 55	com/google/android/gms/analytics/zzae:zzab	(Ljava/lang/String;)V
    //   39: aload_1
    //   40: invokevirtual 59	com/google/android/gms/analytics/GoogleAnalytics:zzgl	()Lcom/google/android/gms/analytics/zzd;
    //   43: invokeinterface 65 1 0
    //   48: astore_2
    //   49: aload_2
    //   50: ifnull +50 -> 100
    //   53: aload_2
    //   54: getfield 70	android/util/Pair:first	Ljava/lang/Object;
    //   57: ifnull +43 -> 100
    //   60: aload_2
    //   61: getfield 73	android/util/Pair:second	Ljava/lang/Object;
    //   64: ifnull +36 -> 100
    //   67: invokestatic 79	java/lang/System:currentTimeMillis	()J
    //   70: aload_2
    //   71: getfield 70	android/util/Pair:first	Ljava/lang/Object;
    //   74: checkcast 81	java/lang/Long
    //   77: invokevirtual 84	java/lang/Long:longValue	()J
    //   80: lsub
    //   81: invokestatic 90	java/lang/Math:abs	(J)J
    //   84: getstatic 10	com/google/android/gms/analytics/AnalyticsService:zzAZ	I
    //   87: sipush 1000
    //   90: imul
    //   91: i2l
    //   92: lcmp
    //   93: iflt +7 -> 100
    //   96: aload_1
    //   97: invokevirtual 93	com/google/android/gms/analytics/GoogleAnalytics:dispatchLocalHits	()V
    //   100: aload_0
    //   101: invokevirtual 96	com/google/android/gms/analytics/AnalyticsService:stopSelf	()V
    //   104: return
    //   105: astore_2
    //   106: aload_1
    //   107: monitorexit
    //   108: aload_2
    //   109: athrow
    //   110: astore_1
    //   111: goto -82 -> 29
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	AnalyticsService
    //   48	23	2	localPair	android.util.Pair
    //   105	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   6	27	105	finally
    //   27	29	105	finally
    //   106	108	105	finally
    //   0	6	110	java/lang/SecurityException
    //   108	110	110	java/lang/SecurityException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.AnalyticsService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */