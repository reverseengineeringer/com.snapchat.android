package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.Status;

class zzn
  implements ContainerHolder
{
  private Status zzHb;
  private final Looper zzMc;
  private boolean zzSW;
  private Container zzaxE;
  private Container zzaxF;
  private zzb zzaxG;
  private zza zzaxH;
  private TagManager zzaxI;
  
  public zzn(Status paramStatus)
  {
    zzHb = paramStatus;
    zzMc = null;
  }
  
  public zzn(TagManager paramTagManager, Looper paramLooper, Container paramContainer, zza paramzza)
  {
    zzaxI = paramTagManager;
    if (paramLooper != null) {}
    for (;;)
    {
      zzMc = paramLooper;
      zzaxE = paramContainer;
      zzaxH = paramzza;
      zzHb = Status.zzNo;
      paramTagManager.zza(this);
      return;
      paramLooper = Looper.getMainLooper();
    }
  }
  
  private void zzsL()
  {
    if (zzaxG != null) {
      zzaxG.zzcR(zzaxF.zzsI());
    }
  }
  
  /* Error */
  public Container getContainer()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 79	com/google/android/gms/tagmanager/zzn:zzSW	Z
    //   8: ifeq +12 -> 20
    //   11: ldc 81
    //   13: invokestatic 86	com/google/android/gms/tagmanager/zzbf:zzZ	(Ljava/lang/String;)V
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_1
    //   19: areturn
    //   20: aload_0
    //   21: getfield 65	com/google/android/gms/tagmanager/zzn:zzaxF	Lcom/google/android/gms/tagmanager/Container;
    //   24: ifnull +16 -> 40
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 65	com/google/android/gms/tagmanager/zzn:zzaxF	Lcom/google/android/gms/tagmanager/Container;
    //   32: putfield 42	com/google/android/gms/tagmanager/zzn:zzaxE	Lcom/google/android/gms/tagmanager/Container;
    //   35: aload_0
    //   36: aconst_null
    //   37: putfield 65	com/google/android/gms/tagmanager/zzn:zzaxF	Lcom/google/android/gms/tagmanager/Container;
    //   40: aload_0
    //   41: getfield 42	com/google/android/gms/tagmanager/zzn:zzaxE	Lcom/google/android/gms/tagmanager/Container;
    //   44: astore_1
    //   45: goto -29 -> 16
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	zzn
    //   1	44	1	localContainer	Container
    //   48	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	16	48	finally
    //   20	40	48	finally
    //   40	45	48	finally
  }
  
  String getContainerId()
  {
    if (zzSW)
    {
      zzbf.zzZ("getContainerId called on a released ContainerHolder.");
      return "";
    }
    return zzaxE.getContainerId();
  }
  
  public Status getStatus()
  {
    return zzHb;
  }
  
  /* Error */
  public void refresh()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 79	com/google/android/gms/tagmanager/zzn:zzSW	Z
    //   6: ifeq +11 -> 17
    //   9: ldc 98
    //   11: invokestatic 86	com/google/android/gms/tagmanager/zzbf:zzZ	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: getfield 44	com/google/android/gms/tagmanager/zzn:zzaxH	Lcom/google/android/gms/tagmanager/zzn$zza;
    //   21: invokeinterface 101 1 0
    //   26: goto -12 -> 14
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	zzn
    //   29	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	29	finally
    //   17	26	29	finally
  }
  
  /* Error */
  public void release()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 79	com/google/android/gms/tagmanager/zzn:zzSW	Z
    //   6: ifeq +11 -> 17
    //   9: ldc 104
    //   11: invokestatic 86	com/google/android/gms/tagmanager/zzbf:zzZ	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 79	com/google/android/gms/tagmanager/zzn:zzSW	Z
    //   22: aload_0
    //   23: getfield 40	com/google/android/gms/tagmanager/zzn:zzaxI	Lcom/google/android/gms/tagmanager/TagManager;
    //   26: aload_0
    //   27: invokevirtual 107	com/google/android/gms/tagmanager/TagManager:zzb	(Lcom/google/android/gms/tagmanager/zzn;)Z
    //   30: pop
    //   31: aload_0
    //   32: getfield 42	com/google/android/gms/tagmanager/zzn:zzaxE	Lcom/google/android/gms/tagmanager/Container;
    //   35: invokevirtual 109	com/google/android/gms/tagmanager/Container:release	()V
    //   38: aload_0
    //   39: aconst_null
    //   40: putfield 42	com/google/android/gms/tagmanager/zzn:zzaxE	Lcom/google/android/gms/tagmanager/Container;
    //   43: aload_0
    //   44: aconst_null
    //   45: putfield 65	com/google/android/gms/tagmanager/zzn:zzaxF	Lcom/google/android/gms/tagmanager/Container;
    //   48: aload_0
    //   49: aconst_null
    //   50: putfield 44	com/google/android/gms/tagmanager/zzn:zzaxH	Lcom/google/android/gms/tagmanager/zzn$zza;
    //   53: aload_0
    //   54: aconst_null
    //   55: putfield 63	com/google/android/gms/tagmanager/zzn:zzaxG	Lcom/google/android/gms/tagmanager/zzn$zzb;
    //   58: goto -44 -> 14
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	zzn
    //   61	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	61	finally
    //   17	58	61	finally
  }
  
  public void setContainerAvailableListener(ContainerHolder.ContainerAvailableListener paramContainerAvailableListener)
  {
    for (;;)
    {
      try
      {
        if (zzSW)
        {
          zzbf.zzZ("ContainerHolder is released.");
          return;
        }
        if (paramContainerAvailableListener == null)
        {
          zzaxG = null;
          continue;
        }
        zzaxG = new zzb(paramContainerAvailableListener, zzMc);
      }
      finally {}
      if (zzaxF != null) {
        zzsL();
      }
    }
  }
  
  public void zza(Container paramContainer)
  {
    for (;;)
    {
      try
      {
        boolean bool = zzSW;
        if (bool) {
          return;
        }
        if (paramContainer == null)
        {
          zzbf.zzZ("Unexpected null container.");
          continue;
        }
        zzaxF = paramContainer;
      }
      finally {}
      zzsL();
    }
  }
  
  /* Error */
  public void zzcO(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 79	com/google/android/gms/tagmanager/zzn:zzSW	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 42	com/google/android/gms/tagmanager/zzn:zzaxE	Lcom/google/android/gms/tagmanager/Container;
    //   18: aload_1
    //   19: invokevirtual 122	com/google/android/gms/tagmanager/Container:zzcO	(Ljava/lang/String;)V
    //   22: goto -11 -> 11
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	zzn
    //   0	30	1	paramString	String
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   14	22	25	finally
  }
  
  void zzcQ(String paramString)
  {
    if (zzSW)
    {
      zzbf.zzZ("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
      return;
    }
    zzaxH.zzcQ(paramString);
  }
  
  String zzsK()
  {
    if (zzSW)
    {
      zzbf.zzZ("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
      return "";
    }
    return zzaxH.zzsK();
  }
  
  public static abstract interface zza
  {
    public abstract void zzcQ(String paramString);
    
    public abstract String zzsK();
    
    public abstract void zzsM();
  }
  
  class zzb
    extends Handler
  {
    private final ContainerHolder.ContainerAvailableListener zzaxJ;
    
    public zzb(ContainerHolder.ContainerAvailableListener paramContainerAvailableListener, Looper paramLooper)
    {
      super();
      zzaxJ = paramContainerAvailableListener;
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        zzbf.zzZ("Don't know how to handle this message.");
        return;
      }
      zzcS((String)obj);
    }
    
    public void zzcR(String paramString)
    {
      sendMessage(obtainMessage(1, paramString));
    }
    
    protected void zzcS(String paramString)
    {
      zzaxJ.onContainerAvailable(zzn.this, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */