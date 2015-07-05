package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;

class zzas
  extends Thread
  implements zzar
{
  private static zzas zzayL;
  private volatile boolean mClosed = false;
  private final Context mContext;
  private volatile boolean zzCK = false;
  private final LinkedBlockingQueue<Runnable> zzayK = new LinkedBlockingQueue();
  private volatile zzat zzayM;
  
  private zzas(Context paramContext)
  {
    super("GAThread");
    if (paramContext != null) {}
    for (mContext = paramContext.getApplicationContext();; mContext = paramContext)
    {
      start();
      return;
    }
  }
  
  static zzas zzam(Context paramContext)
  {
    if (zzayL == null) {
      zzayL = new zzas(paramContext);
    }
    return zzayL;
  }
  
  private String zzf(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintStream);
    localPrintStream.flush();
    return new String(localByteArrayOutputStream.toByteArray());
  }
  
  public void run()
  {
    while (!mClosed) {
      try
      {
        Runnable localRunnable = (Runnable)zzayK.take();
        if (!zzCK) {
          localRunnable.run();
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        zzbf.zzaa(localInterruptedException.toString());
      }
      catch (Throwable localThrowable)
      {
        zzbf.zzZ("Error on Google TagManager Thread: " + zzf(localThrowable));
        zzbf.zzZ("Google TagManager is shutting down.");
        zzCK = true;
      }
    }
  }
  
  public void zzc(Runnable paramRunnable)
  {
    zzayK.add(paramRunnable);
  }
  
  void zzd(String paramString, final long paramLong)
  {
    zzc(new Runnable()
    {
      public void run()
      {
        if (zzas.zza(zzas.this) == null)
        {
          zzct localzzct = zzct.zztR();
          localzzct.zza(zzas.zzb(zzas.this), jdField_this);
          zzas.zza(zzas.this, localzzct.zztS());
        }
        zzas.zza(zzas.this).zzf(paramLong, zzzC);
      }
    });
  }
  
  public void zzdb(String paramString)
  {
    zzd(paramString, System.currentTimeMillis());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzas
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */