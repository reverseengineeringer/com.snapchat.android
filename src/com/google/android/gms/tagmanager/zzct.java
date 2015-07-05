package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class zzct
  extends zzcs
{
  private static final Object zzBQ = new Object();
  private static zzct zzaAF;
  private boolean connected = true;
  private Handler handler;
  private boolean zzaAA = false;
  private boolean zzaAB = true;
  private zzau zzaAC = new zzau()
  {
    public void zzD(boolean paramAnonymousBoolean)
    {
      zzb(paramAnonymousBoolean, zzct.zza(zzct.this));
    }
  };
  private zzbk zzaAD;
  private boolean zzaAE = false;
  private Context zzaAv;
  private zzat zzaAw;
  private volatile zzar zzaAx;
  private int zzaAy = 1800000;
  private boolean zzaAz = true;
  
  private void zzfF()
  {
    zzaAD = new zzbk(this);
    zzaAD.zzD(zzaAv);
  }
  
  private void zzfI()
  {
    handler = new Handler(zzaAv.getMainLooper(), new Handler.Callback()
    {
      public boolean handleMessage(Message paramAnonymousMessage)
      {
        if ((1 == what) && (zzct.zzfK().equals(obj)))
        {
          dispatch();
          if ((zzct.zzb(zzct.this) > 0) && (!zzct.zzc(zzct.this))) {
            zzct.zzd(zzct.this).sendMessageDelayed(zzct.zzd(zzct.this).obtainMessage(1, zzct.zzfK()), zzct.zzb(zzct.this));
          }
        }
        return true;
      }
    });
    if (zzaAy > 0) {
      handler.sendMessageDelayed(handler.obtainMessage(1, zzBQ), zzaAy);
    }
  }
  
  public static zzct zztR()
  {
    if (zzaAF == null) {
      zzaAF = new zzct();
    }
    return zzaAF;
  }
  
  /* Error */
  public void dispatch()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 52	com/google/android/gms/tagmanager/zzct:zzaAA	Z
    //   6: ifne +16 -> 22
    //   9: ldc 121
    //   11: invokestatic 127	com/google/android/gms/tagmanager/zzbf:zzab	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 50	com/google/android/gms/tagmanager/zzct:zzaAz	Z
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: getfield 129	com/google/android/gms/tagmanager/zzct:zzaAx	Lcom/google/android/gms/tagmanager/zzar;
    //   26: new 10	com/google/android/gms/tagmanager/zzct$3
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 130	com/google/android/gms/tagmanager/zzct$3:<init>	(Lcom/google/android/gms/tagmanager/zzct;)V
    //   34: invokeinterface 135 2 0
    //   39: goto -20 -> 19
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	zzct
    //   42	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	42	finally
    //   22	39	42	finally
  }
  
  void zzE(boolean paramBoolean)
  {
    try
    {
      zzb(zzaAE, paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  void zza(Context paramContext, zzar paramzzar)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 86	com/google/android/gms/tagmanager/zzct:zzaAv	Landroid/content/Context;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: aload_1
    //   16: invokevirtual 145	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   19: putfield 86	com/google/android/gms/tagmanager/zzct:zzaAv	Landroid/content/Context;
    //   22: aload_0
    //   23: getfield 129	com/google/android/gms/tagmanager/zzct:zzaAx	Lcom/google/android/gms/tagmanager/zzar;
    //   26: ifnonnull -15 -> 11
    //   29: aload_0
    //   30: aload_2
    //   31: putfield 129	com/google/android/gms/tagmanager/zzct:zzaAx	Lcom/google/android/gms/tagmanager/zzar;
    //   34: goto -23 -> 11
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	zzct
    //   0	42	1	paramContext	Context
    //   0	42	2	paramzzar	zzar
    //   6	2	3	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   2	7	37	finally
    //   14	34	37	finally
  }
  
  void zzb(boolean paramBoolean1, boolean paramBoolean2)
  {
    for (;;)
    {
      StringBuilder localStringBuilder;
      String str1;
      try
      {
        if (zzaAE == paramBoolean1)
        {
          boolean bool = connected;
          if (bool == paramBoolean2) {
            return;
          }
        }
        if (((paramBoolean1) || (!paramBoolean2)) && (zzaAy > 0)) {
          handler.removeMessages(1, zzBQ);
        }
        if ((!paramBoolean1) && (paramBoolean2) && (zzaAy > 0)) {
          handler.sendMessageDelayed(handler.obtainMessage(1, zzBQ), zzaAy);
        }
        localStringBuilder = new StringBuilder("PowerSaveMode ");
        if (paramBoolean1) {
          break label150;
        }
        if (paramBoolean2) {
          break label143;
        }
      }
      finally {}
      zzbf.zzab(str1);
      zzaAE = paramBoolean1;
      connected = paramBoolean2;
      continue;
      label143:
      String str2 = "terminated.";
      continue;
      label150:
      str2 = "initiated.";
    }
  }
  
  void zzfJ()
  {
    try
    {
      if ((!zzaAE) && (connected) && (zzaAy > 0))
      {
        handler.removeMessages(1, zzBQ);
        handler.sendMessage(handler.obtainMessage(1, zzBQ));
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  zzat zztS()
  {
    try
    {
      if (zzaAw != null) {
        break label50;
      }
      if (zzaAv == null) {
        throw new IllegalStateException("Cant get a store unless we have a context");
      }
    }
    finally {}
    zzaAw = new zzbx(zzaAC, zzaAv);
    label50:
    if (handler == null) {
      zzfI();
    }
    zzaAA = true;
    if (zzaAz)
    {
      dispatch();
      zzaAz = false;
    }
    if ((zzaAD == null) && (zzaAB)) {
      zzfF();
    }
    zzat localzzat = zzaAw;
    return localzzat;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */