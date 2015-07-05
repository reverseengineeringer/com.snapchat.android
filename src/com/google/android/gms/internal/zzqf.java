package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

public class zzqf
{
  private static final String TAG = zzqf.class.getSimpleName();
  private static final long zzaoU = TimeUnit.SECONDS.toMillis(1L);
  private static zzqf zzaoV;
  private final Context mContext;
  private final Handler mHandler;
  private final Runnable zzaoW = new zza(null);
  private ArrayList<String> zzaoX = null;
  private ArrayList<String> zzaoY = null;
  private final Object zznh = new Object();
  
  private zzqf(Context paramContext)
  {
    this((Context)zzx.zzl(paramContext), new Handler(Looper.getMainLooper()));
  }
  
  zzqf(Context paramContext, Handler paramHandler)
  {
    mContext = paramContext;
    mHandler = paramHandler;
  }
  
  /* Error */
  public static zzqf zzab(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 58	com/google/android/gms/common/internal/zzx:zzl	(Ljava/lang/Object;)Ljava/lang/Object;
    //   7: pop
    //   8: getstatic 100	android/os/Build$VERSION:SDK_INT	I
    //   11: istore_1
    //   12: iload_1
    //   13: bipush 14
    //   15: if_icmpge +10 -> 25
    //   18: aconst_null
    //   19: astore_0
    //   20: ldc 2
    //   22: monitorexit
    //   23: aload_0
    //   24: areturn
    //   25: getstatic 102	com/google/android/gms/internal/zzqf:zzaoV	Lcom/google/android/gms/internal/zzqf;
    //   28: ifnonnull +17 -> 45
    //   31: new 2	com/google/android/gms/internal/zzqf
    //   34: dup
    //   35: aload_0
    //   36: invokevirtual 106	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   39: invokespecial 108	com/google/android/gms/internal/zzqf:<init>	(Landroid/content/Context;)V
    //   42: putstatic 102	com/google/android/gms/internal/zzqf:zzaoV	Lcom/google/android/gms/internal/zzqf;
    //   45: getstatic 102	com/google/android/gms/internal/zzqf:zzaoV	Lcom/google/android/gms/internal/zzqf;
    //   48: astore_0
    //   49: goto -29 -> 20
    //   52: astore_0
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_0
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	paramContext	Context
    //   11	5	1	i	int
    // Exception table:
    //   from	to	target	type
    //   3	12	52	finally
    //   25	45	52	finally
    //   45	49	52	finally
  }
  
  public void zzy(String paramString1, String paramString2)
  {
    synchronized (zznh)
    {
      if (zzaoX == null)
      {
        zzaoX = new ArrayList();
        zzaoY = new ArrayList();
        mHandler.postDelayed(zzaoW, zzaoU);
      }
      zzaoX.add(paramString1);
      zzaoY.add(paramString2);
      if (zzaoX.size() >= 10000)
      {
        zzaoW.run();
        mHandler.removeCallbacks(zzaoW);
        return;
      }
      return;
    }
  }
  
  class zza
    implements Runnable
  {
    private zza() {}
    
    public void run()
    {
      synchronized (zzqf.zzb(zzqf.this))
      {
        Intent localIntent = new Intent("com.google.android.location.places.METHOD_CALL");
        localIntent.setPackage("com.google.android.gms");
        localIntent.putStringArrayListExtra("PLACE_IDS", zzqf.zzc(zzqf.this));
        localIntent.putStringArrayListExtra("METHOD_NAMES", zzqf.zzd(zzqf.this));
        zzqf.zze(zzqf.this).sendBroadcast(localIntent);
        zzqf.zza(zzqf.this, null);
        zzqf.zzb(zzqf.this, null);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */