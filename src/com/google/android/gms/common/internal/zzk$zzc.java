package com.google.android.gms.common.internal;

import java.util.ArrayList;

public abstract class zzk$zzc<TListener>
{
  private TListener mListener;
  private boolean zzPU;
  
  public zzk$zzc(TListener paramTListener)
  {
    Object localObject;
    mListener = localObject;
    zzPU = false;
  }
  
  public void unregister()
  {
    zzjh();
    synchronized (zzk.zzb(zzPT))
    {
      zzk.zzb(zzPT).remove(this);
      return;
    }
  }
  
  public abstract void zzi(TListener paramTListener);
  
  public abstract void zzjf();
  
  /* Error */
  public void zzjg()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 24	com/google/android/gms/common/internal/zzk$zzc:mListener	Ljava/lang/Object;
    //   6: astore_1
    //   7: aload_0
    //   8: getfield 26	com/google/android/gms/common/internal/zzk$zzc:zzPU	Z
    //   11: ifeq +22 -> 33
    //   14: new 51	java/lang/StringBuilder
    //   17: dup
    //   18: ldc 53
    //   20: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   27: ldc 62
    //   29: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: pop
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: ifnull +34 -> 70
    //   39: aload_0
    //   40: aload_1
    //   41: invokevirtual 67	com/google/android/gms/common/internal/zzk$zzc:zzi	(Ljava/lang/Object;)V
    //   44: aload_0
    //   45: monitorenter
    //   46: aload_0
    //   47: iconst_1
    //   48: putfield 26	com/google/android/gms/common/internal/zzk$zzc:zzPU	Z
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_0
    //   54: invokevirtual 69	com/google/android/gms/common/internal/zzk$zzc:unregister	()V
    //   57: return
    //   58: astore_1
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: athrow
    //   63: astore_1
    //   64: aload_0
    //   65: invokevirtual 71	com/google/android/gms/common/internal/zzk$zzc:zzjf	()V
    //   68: aload_1
    //   69: athrow
    //   70: aload_0
    //   71: invokevirtual 71	com/google/android/gms/common/internal/zzk$zzc:zzjf	()V
    //   74: goto -30 -> 44
    //   77: astore_1
    //   78: aload_0
    //   79: monitorexit
    //   80: aload_1
    //   81: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	82	0	this	zzc
    //   6	35	1	localObject1	Object
    //   58	4	1	localObject2	Object
    //   63	6	1	localRuntimeException	RuntimeException
    //   77	4	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	33	58	finally
    //   33	35	58	finally
    //   59	61	58	finally
    //   39	44	63	java/lang/RuntimeException
    //   46	53	77	finally
    //   78	80	77	finally
  }
  
  public void zzjh()
  {
    try
    {
      mListener = null;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzk.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */