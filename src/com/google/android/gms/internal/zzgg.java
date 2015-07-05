package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.Future;

@zzgi
public class zzgg
  extends zzhl
{
  private final Object zznh = new Object();
  private final zzgc.zza zzvL;
  private final zzhe.zza zzvN;
  private final zzgq zzvO;
  private final zzgt zzvY;
  private Future<zzhe> zzvZ;
  
  public zzgg(Context paramContext, zzt paramzzt, zzai paramzzai, zzhe.zza paramzza, zzgc.zza paramzza1)
  {
    this(paramzza, paramzza1, new zzgt(paramContext, paramzzt, paramzzai, new zzht(), paramzza));
  }
  
  zzgg(zzhe.zza paramzza, zzgc.zza paramzza1, zzgt paramzzgt)
  {
    zzvN = paramzza;
    zzvO = zzyz;
    zzvL = paramzza1;
    zzvY = paramzzgt;
  }
  
  private zzhe zzu(int paramInt)
  {
    return new zzhe(zzvN.zzyy.zzwn, null, null, paramInt, null, null, zzvO.orientation, zzvO.zzsx, zzvN.zzyy.zzwq, false, null, null, null, null, null, zzvO.zzwJ, zzvN.zzlV, zzvO.zzwH, zzvN.zzyv, zzvO.zzwM, zzvO.zzwN, zzvN.zzys, null, zzvN.zzyy.zzwD);
  }
  
  public void onStop()
  {
    synchronized (zznh)
    {
      if (zzvZ != null) {
        zzvZ.cancel(true);
      }
      return;
    }
  }
  
  /* Error */
  public void zzdw()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 42	com/google/android/gms/internal/zzgg:zznh	Ljava/lang/Object;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_0
    //   8: aload_0
    //   9: getfield 55	com/google/android/gms/internal/zzgg:zzvY	Lcom/google/android/gms/internal/zzgt;
    //   12: invokestatic 138	com/google/android/gms/internal/zzhn:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   15: putfield 117	com/google/android/gms/internal/zzgg:zzvZ	Ljava/util/concurrent/Future;
    //   18: aload_2
    //   19: monitorexit
    //   20: aload_0
    //   21: getfield 117	com/google/android/gms/internal/zzgg:zzvZ	Ljava/util/concurrent/Future;
    //   24: ldc2_w 139
    //   27: getstatic 146	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   30: invokeinterface 150 4 0
    //   35: checkcast 61	com/google/android/gms/internal/zzhe
    //   38: astore_2
    //   39: bipush -2
    //   41: istore_1
    //   42: aload_2
    //   43: ifnull +62 -> 105
    //   46: getstatic 156	com/google/android/gms/internal/zzhw:zzzG	Landroid/os/Handler;
    //   49: new 6	com/google/android/gms/internal/zzgg$1
    //   52: dup
    //   53: aload_0
    //   54: aload_2
    //   55: invokespecial 159	com/google/android/gms/internal/zzgg$1:<init>	(Lcom/google/android/gms/internal/zzgg;Lcom/google/android/gms/internal/zzhe;)V
    //   58: invokevirtual 165	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   61: pop
    //   62: return
    //   63: astore_3
    //   64: aload_2
    //   65: monitorexit
    //   66: aload_3
    //   67: athrow
    //   68: astore_2
    //   69: ldc -89
    //   71: invokestatic 173	com/google/android/gms/internal/zzhx:zzac	(Ljava/lang/String;)V
    //   74: iconst_2
    //   75: istore_1
    //   76: aconst_null
    //   77: astore_2
    //   78: goto -36 -> 42
    //   81: astore_2
    //   82: iconst_0
    //   83: istore_1
    //   84: aconst_null
    //   85: astore_2
    //   86: goto -44 -> 42
    //   89: astore_2
    //   90: aconst_null
    //   91: astore_2
    //   92: iconst_m1
    //   93: istore_1
    //   94: goto -52 -> 42
    //   97: astore_2
    //   98: aconst_null
    //   99: astore_2
    //   100: iconst_m1
    //   101: istore_1
    //   102: goto -60 -> 42
    //   105: aload_0
    //   106: iload_1
    //   107: invokespecial 175	com/google/android/gms/internal/zzgg:zzu	(I)Lcom/google/android/gms/internal/zzhe;
    //   110: astore_2
    //   111: goto -65 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	zzgg
    //   41	66	1	i	int
    //   68	1	2	localTimeoutException	java.util.concurrent.TimeoutException
    //   77	1	2	localObject2	Object
    //   81	1	2	localExecutionException	java.util.concurrent.ExecutionException
    //   85	1	2	localObject3	Object
    //   89	1	2	localInterruptedException	InterruptedException
    //   91	1	2	localObject4	Object
    //   97	1	2	localCancellationException	java.util.concurrent.CancellationException
    //   99	12	2	localzzhe	zzhe
    //   63	4	3	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   7	20	63	finally
    //   64	66	63	finally
    //   0	7	68	java/util/concurrent/TimeoutException
    //   20	39	68	java/util/concurrent/TimeoutException
    //   66	68	68	java/util/concurrent/TimeoutException
    //   0	7	81	java/util/concurrent/ExecutionException
    //   20	39	81	java/util/concurrent/ExecutionException
    //   66	68	81	java/util/concurrent/ExecutionException
    //   0	7	89	java/lang/InterruptedException
    //   20	39	89	java/lang/InterruptedException
    //   66	68	89	java/lang/InterruptedException
    //   0	7	97	java/util/concurrent/CancellationException
    //   20	39	97	java/util/concurrent/CancellationException
    //   66	68	97	java/util/concurrent/CancellationException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */