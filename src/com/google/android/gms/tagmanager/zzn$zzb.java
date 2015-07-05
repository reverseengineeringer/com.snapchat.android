package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class zzn$zzb
  extends Handler
{
  private final ContainerHolder.ContainerAvailableListener zzaxJ;
  
  public zzn$zzb(zzn paramzzn, ContainerHolder.ContainerAvailableListener paramContainerAvailableListener, Looper paramLooper)
  {
    super(paramLooper);
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
    zzaxJ.onContainerAvailable(zzaxK, paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzn.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */