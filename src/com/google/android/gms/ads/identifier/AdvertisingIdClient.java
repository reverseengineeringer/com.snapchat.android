package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.zza;
import com.google.android.gms.internal.zzlo;
import com.google.android.gms.internal.zzs;
import com.google.android.gms.internal.zzs.zza;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class AdvertisingIdClient
{
  private final Context mContext;
  zza zzln;
  zzs zzlo;
  boolean zzlp;
  Object zzlq = new Object();
  zza zzlr;
  final long zzls;
  
  public AdvertisingIdClient(Context paramContext)
  {
    this(paramContext, 30000L);
  }
  
  public AdvertisingIdClient(Context paramContext, long paramLong)
  {
    zzx.zzl(paramContext);
    mContext = paramContext;
    zzlp = false;
    zzls = paramLong;
  }
  
  public static Info getAdvertisingIdInfo(Context paramContext)
  {
    paramContext = new AdvertisingIdClient(paramContext, -1L);
    try
    {
      paramContext.zzb(false);
      Info localInfo = paramContext.getInfo();
      return localInfo;
    }
    finally
    {
      paramContext.finish();
    }
  }
  
  private void zzZ()
  {
    synchronized (zzlq)
    {
      if (zzlr != null) {
        zzlr.cancel();
      }
    }
    try
    {
      zzlr.join();
      if (zzls > 0L) {
        zzlr = new zza(this, zzls);
      }
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  static zzs zza(Context paramContext, zza paramzza)
  {
    try
    {
      paramContext = zzs.zza.zzb(paramzza.zzhJ());
      return paramContext;
    }
    catch (InterruptedException paramContext)
    {
      throw new IOException("Interrupted exception");
    }
  }
  
  static zza zzh(Context paramContext)
  {
    try
    {
      paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
      zza localzza;
      Intent localIntent;
      throw new IOException("Connection failure");
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      try
      {
        GooglePlayServicesUtil.zzI(paramContext);
        localzza = new zza();
        localIntent = new Intent("com.google.android.gms.ads.identifier.service.START");
        localIntent.setPackage("com.google.android.gms");
        if (!zzlo.zzka().zza(paramContext, localIntent, localzza, 1)) {
          break label76;
        }
        return localzza;
      }
      catch (GooglePlayServicesNotAvailableException paramContext)
      {
        throw new IOException(paramContext);
      }
      paramContext = paramContext;
      throw new GooglePlayServicesNotAvailableException(9);
    }
  }
  
  protected void finalize()
  {
    finish();
    super.finalize();
  }
  
  /* Error */
  public void finish()
  {
    // Byte code:
    //   0: ldc -98
    //   2: invokestatic 161	com/google/android/gms/common/internal/zzx:zzbe	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 45	com/google/android/gms/ads/identifier/AdvertisingIdClient:mContext	Landroid/content/Context;
    //   11: ifnull +10 -> 21
    //   14: aload_0
    //   15: getfield 163	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzln	Lcom/google/android/gms/common/zza;
    //   18: ifnonnull +6 -> 24
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: aload_0
    //   25: getfield 47	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzlp	Z
    //   28: ifeq +17 -> 45
    //   31: invokestatic 140	com/google/android/gms/internal/zzlo:zzka	()Lcom/google/android/gms/internal/zzlo;
    //   34: aload_0
    //   35: getfield 45	com/google/android/gms/ads/identifier/AdvertisingIdClient:mContext	Landroid/content/Context;
    //   38: aload_0
    //   39: getfield 163	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzln	Lcom/google/android/gms/common/zza;
    //   42: invokevirtual 166	com/google/android/gms/internal/zzlo:zza	(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    //   45: aload_0
    //   46: iconst_0
    //   47: putfield 47	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzlp	Z
    //   50: aload_0
    //   51: aconst_null
    //   52: putfield 168	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzlo	Lcom/google/android/gms/internal/zzs;
    //   55: aload_0
    //   56: aconst_null
    //   57: putfield 163	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzln	Lcom/google/android/gms/common/zza;
    //   60: aload_0
    //   61: monitorexit
    //   62: return
    //   63: astore_1
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_1
    //   67: athrow
    //   68: astore_1
    //   69: goto -24 -> 45
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	AdvertisingIdClient
    //   63	4	1	localObject	Object
    //   68	1	1	localIllegalArgumentException	IllegalArgumentException
    // Exception table:
    //   from	to	target	type
    //   7	21	63	finally
    //   21	23	63	finally
    //   24	45	63	finally
    //   45	62	63	finally
    //   64	66	63	finally
    //   24	45	68	java/lang/IllegalArgumentException
  }
  
  /* Error */
  public Info getInfo()
  {
    // Byte code:
    //   0: ldc -98
    //   2: invokestatic 161	com/google/android/gms/common/internal/zzx:zzbe	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 47	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzlp	Z
    //   11: ifne +83 -> 94
    //   14: aload_0
    //   15: getfield 37	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzlq	Ljava/lang/Object;
    //   18: astore_1
    //   19: aload_1
    //   20: monitorenter
    //   21: aload_0
    //   22: getfield 69	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzlr	Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;
    //   25: ifnull +13 -> 38
    //   28: aload_0
    //   29: getfield 69	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzlr	Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$zza;
    //   32: invokevirtual 176	com/google/android/gms/ads/identifier/AdvertisingIdClient$zza:zzaa	()Z
    //   35: ifne +23 -> 58
    //   38: new 92	java/io/IOException
    //   41: dup
    //   42: ldc -78
    //   44: invokespecial 97	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   47: athrow
    //   48: astore_2
    //   49: aload_1
    //   50: monitorexit
    //   51: aload_2
    //   52: athrow
    //   53: astore_1
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_1
    //   57: athrow
    //   58: aload_1
    //   59: monitorexit
    //   60: aload_0
    //   61: iconst_0
    //   62: invokevirtual 57	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzb	(Z)V
    //   65: aload_0
    //   66: getfield 47	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzlp	Z
    //   69: ifne +25 -> 94
    //   72: new 92	java/io/IOException
    //   75: dup
    //   76: ldc -76
    //   78: invokespecial 97	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   81: athrow
    //   82: astore_1
    //   83: new 92	java/io/IOException
    //   86: dup
    //   87: ldc -76
    //   89: aload_1
    //   90: invokespecial 183	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   93: athrow
    //   94: aload_0
    //   95: getfield 163	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzln	Lcom/google/android/gms/common/zza;
    //   98: invokestatic 43	com/google/android/gms/common/internal/zzx:zzl	(Ljava/lang/Object;)Ljava/lang/Object;
    //   101: pop
    //   102: aload_0
    //   103: getfield 168	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzlo	Lcom/google/android/gms/internal/zzs;
    //   106: invokestatic 43	com/google/android/gms/common/internal/zzx:zzl	(Ljava/lang/Object;)Ljava/lang/Object;
    //   109: pop
    //   110: new 6	com/google/android/gms/ads/identifier/AdvertisingIdClient$Info
    //   113: dup
    //   114: aload_0
    //   115: getfield 168	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzlo	Lcom/google/android/gms/internal/zzs;
    //   118: invokeinterface 189 1 0
    //   123: aload_0
    //   124: getfield 168	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzlo	Lcom/google/android/gms/internal/zzs;
    //   127: iconst_1
    //   128: invokeinterface 193 2 0
    //   133: invokespecial 196	com/google/android/gms/ads/identifier/AdvertisingIdClient$Info:<init>	(Ljava/lang/String;Z)V
    //   136: astore_1
    //   137: aload_0
    //   138: monitorexit
    //   139: aload_0
    //   140: invokespecial 198	com/google/android/gms/ads/identifier/AdvertisingIdClient:zzZ	()V
    //   143: aload_1
    //   144: areturn
    //   145: astore_1
    //   146: new 92	java/io/IOException
    //   149: dup
    //   150: ldc -56
    //   152: invokespecial 97	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   155: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	this	AdvertisingIdClient
    //   53	6	1	localObject2	Object
    //   82	8	1	localException	Exception
    //   136	8	1	localInfo	Info
    //   145	1	1	localRemoteException	android.os.RemoteException
    //   48	4	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   21	38	48	finally
    //   38	48	48	finally
    //   49	51	48	finally
    //   58	60	48	finally
    //   7	21	53	finally
    //   51	53	53	finally
    //   54	56	53	finally
    //   60	65	53	finally
    //   65	82	53	finally
    //   83	94	53	finally
    //   94	110	53	finally
    //   110	137	53	finally
    //   137	139	53	finally
    //   146	156	53	finally
    //   60	65	82	java/lang/Exception
    //   110	137	145	android/os/RemoteException
  }
  
  public void start()
  {
    zzb(true);
  }
  
  protected void zzb(boolean paramBoolean)
  {
    zzx.zzbe("Calling this from your main thread can lead to deadlock");
    try
    {
      if (zzlp) {
        finish();
      }
      zzln = zzh(mContext);
      zzlo = zza(mContext, zzln);
      zzlp = true;
      if (paramBoolean) {
        zzZ();
      }
      return;
    }
    finally {}
  }
  
  public static final class Info
  {
    private final String zzlx;
    private final boolean zzly;
    
    public Info(String paramString, boolean paramBoolean)
    {
      zzlx = paramString;
      zzly = paramBoolean;
    }
    
    public final String getId()
    {
      return zzlx;
    }
    
    public final boolean isLimitAdTrackingEnabled()
    {
      return zzly;
    }
    
    public final String toString()
    {
      return "{" + zzlx + "}" + zzly;
    }
  }
  
  static class zza
    extends Thread
  {
    private WeakReference<AdvertisingIdClient> zzlt;
    private long zzlu;
    CountDownLatch zzlv;
    boolean zzlw;
    
    public zza(AdvertisingIdClient paramAdvertisingIdClient, long paramLong)
    {
      zzlt = new WeakReference(paramAdvertisingIdClient);
      zzlu = paramLong;
      zzlv = new CountDownLatch(1);
      zzlw = false;
      start();
    }
    
    private void disconnect()
    {
      AdvertisingIdClient localAdvertisingIdClient = (AdvertisingIdClient)zzlt.get();
      if (localAdvertisingIdClient != null)
      {
        localAdvertisingIdClient.finish();
        zzlw = true;
      }
    }
    
    public void cancel()
    {
      zzlv.countDown();
    }
    
    public void run()
    {
      try
      {
        if (!zzlv.await(zzlu, TimeUnit.MILLISECONDS)) {
          disconnect();
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        disconnect();
      }
    }
    
    public boolean zzaa()
    {
      return zzlw;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.identifier.AdvertisingIdClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */