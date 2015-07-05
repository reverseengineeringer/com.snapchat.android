package com.google.android.gms.internal;

import android.content.Context;

final class zzj$zzb
  implements Runnable
{
  private Context zzkT;
  
  public zzj$zzb(Context paramContext)
  {
    zzkT = paramContext.getApplicationContext();
    if (zzkT == null) {
      zzkT = paramContext;
    }
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: new 34	com/google/android/gms/ads/identifier/AdvertisingIdClient
    //   3: dup
    //   4: aload_0
    //   5: getfield 24	com/google/android/gms/internal/zzj$zzb:zzkT	Landroid/content/Context;
    //   8: invokespecial 36	com/google/android/gms/ads/identifier/AdvertisingIdClient:<init>	(Landroid/content/Context;)V
    //   11: astore_1
    //   12: aload_1
    //   13: invokevirtual 39	com/google/android/gms/ads/identifier/AdvertisingIdClient:start	()V
    //   16: ldc 8
    //   18: monitorenter
    //   19: invokestatic 43	com/google/android/gms/internal/zzj:zzA	()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    //   22: ifnonnull +18 -> 40
    //   25: aload_1
    //   26: invokestatic 47	com/google/android/gms/internal/zzj:zza	(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    //   29: pop
    //   30: ldc 8
    //   32: monitorexit
    //   33: invokestatic 51	com/google/android/gms/internal/zzj:zzB	()Ljava/util/concurrent/CountDownLatch;
    //   36: invokevirtual 56	java/util/concurrent/CountDownLatch:countDown	()V
    //   39: return
    //   40: aload_1
    //   41: invokevirtual 59	com/google/android/gms/ads/identifier/AdvertisingIdClient:finish	()V
    //   44: goto -14 -> 30
    //   47: astore_1
    //   48: ldc 8
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    //   53: astore_1
    //   54: iconst_1
    //   55: invokestatic 62	com/google/android/gms/internal/zzj:zza	(Z)Z
    //   58: pop
    //   59: goto -26 -> 33
    //   62: astore_1
    //   63: goto -30 -> 33
    //   66: astore_1
    //   67: goto -34 -> 33
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	zzb
    //   11	30	1	localAdvertisingIdClient	com.google.android.gms.ads.identifier.AdvertisingIdClient
    //   47	5	1	localObject	Object
    //   53	1	1	localGooglePlayServicesNotAvailableException	com.google.android.gms.common.GooglePlayServicesNotAvailableException
    //   62	1	1	localGooglePlayServicesRepairableException	com.google.android.gms.common.GooglePlayServicesRepairableException
    //   66	1	1	localIOException	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   19	30	47	finally
    //   30	33	47	finally
    //   40	44	47	finally
    //   48	51	47	finally
    //   0	19	53	com/google/android/gms/common/GooglePlayServicesNotAvailableException
    //   51	53	53	com/google/android/gms/common/GooglePlayServicesNotAvailableException
    //   0	19	62	com/google/android/gms/common/GooglePlayServicesRepairableException
    //   51	53	62	com/google/android/gms/common/GooglePlayServicesRepairableException
    //   0	19	66	java/io/IOException
    //   51	53	66	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzj.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */