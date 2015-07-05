package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class zzj
  extends zzi
{
  private static AdvertisingIdClient zzkN = null;
  private static CountDownLatch zzkO = new CountDownLatch(1);
  private static boolean zzkP;
  
  protected zzj(Context paramContext, zzm paramzzm, zzn paramzzn)
  {
    super(paramContext, paramzzm, paramzzn);
  }
  
  public static zzj zza(String paramString, Context paramContext)
  {
    zze localzze = new zze();
    zza(paramString, paramContext, localzze);
    try
    {
      if (zzkN == null) {
        new Thread(new zzb(paramContext)).start();
      }
      return new zzj(paramContext, localzze, new zzp(239));
    }
    finally {}
  }
  
  protected void zzb(Context paramContext)
  {
    super.zzb(paramContext);
    try
    {
      if (zzkP)
      {
        zza(24, zzd(paramContext));
        return;
      }
      paramContext = zzz();
      if (!paramContext.isLimitAdTrackingEnabled()) {
        break label71;
      }
      l = 1L;
    }
    catch (IOException paramContext)
    {
      for (;;)
      {
        return;
        long l = 0L;
      }
    }
    catch (zzi.zza paramContext) {}
    zza(28, l);
    paramContext = paramContext.getId();
    if (paramContext != null)
    {
      zza(26, 5L);
      zza(24, paramContext);
      return;
    }
    label71:
  }
  
  zza zzz()
  {
    int i = 0;
    try
    {
      if (!zzkO.await(2L, TimeUnit.SECONDS))
      {
        zza localzza1 = new zza(null, false);
        return localzza1;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      zza localzza2 = new zza(null, false);
      return localzza2;
    }
    finally {}
    if (zzkN == null)
    {
      localObject2 = new zza(null, false);
      return (zza)localObject2;
    }
    AdvertisingIdClient.Info localInfo = zzkN.getInfo();
    Object localObject2 = localInfo.getId();
    if ((localObject2 != null) && (((String)localObject2).matches("^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$")))
    {
      byte[] arrayOfByte = new byte[16];
      int j = 0;
      while (i < ((String)localObject2).length())
      {
        int k;
        if ((i != 8) && (i != 13) && (i != 18))
        {
          k = i;
          if (i != 23) {}
        }
        else
        {
          k = i + 1;
        }
        arrayOfByte[j] = ((byte)((Character.digit(((String)localObject2).charAt(k), 16) << 4) + Character.digit(((String)localObject2).charAt(k + 1), 16)));
        j += 1;
        i = k + 2;
      }
      localObject2 = zzkx.zza(arrayOfByte, true);
    }
    for (;;)
    {
      return new zza((String)localObject2, localInfo.isLimitAdTrackingEnabled());
    }
  }
  
  class zza
  {
    private String zzkQ;
    private boolean zzkR;
    
    public zza(String paramString, boolean paramBoolean)
    {
      zzkQ = paramString;
      zzkR = paramBoolean;
    }
    
    public String getId()
    {
      return zzkQ;
    }
    
    public boolean isLimitAdTrackingEnabled()
    {
      return zzkR;
    }
  }
  
  static final class zzb
    implements Runnable
  {
    private Context zzkT;
    
    public zzb(Context paramContext)
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
      //   11	30	1	localAdvertisingIdClient	AdvertisingIdClient
      //   47	5	1	localObject	Object
      //   53	1	1	localGooglePlayServicesNotAvailableException	com.google.android.gms.common.GooglePlayServicesNotAvailableException
      //   62	1	1	localGooglePlayServicesRepairableException	com.google.android.gms.common.GooglePlayServicesRepairableException
      //   66	1	1	localIOException	IOException
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */