package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import bt.a;
import bx;
import by;
import bz;
import ca;

@zzgi
public final class zzdy<NETWORK_EXTRAS extends ca, SERVER_PARAMETERS extends bz>
{
  private final zzdt zzsS;
  
  public zzdy(zzdt paramzzdt)
  {
    zzsS = paramzzdt;
  }
  
  public final void onClick(bx<?, ?> parambx)
  {
    zzhx.zzY("Adapter called onClick.");
    if (!zzbe.zzbD().zzeC())
    {
      zzhx.zzac("onClick must be called on the main UI thread.");
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          try
          {
            zzdy.zza(zzdy.this).onAdClicked();
            return;
          }
          catch (RemoteException localRemoteException)
          {
            zzhx.zzd("Could not call onAdClicked.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      zzsS.onAdClicked();
      return;
    }
    catch (RemoteException parambx)
    {
      zzhx.zzd("Could not call onAdClicked.", parambx);
    }
  }
  
  public final void onDismissScreen(bx<?, ?> parambx)
  {
    zzhx.zzY("Adapter called onDismissScreen.");
    if (!zzbe.zzbD().zzeC())
    {
      zzhx.zzac("onDismissScreen must be called on the main UI thread.");
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          try
          {
            zzdy.zza(zzdy.this).onAdClosed();
            return;
          }
          catch (RemoteException localRemoteException)
          {
            zzhx.zzd("Could not call onAdClosed.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      zzsS.onAdClosed();
      return;
    }
    catch (RemoteException parambx)
    {
      zzhx.zzd("Could not call onAdClosed.", parambx);
    }
  }
  
  public final void onDismissScreen(by<?, ?> paramby)
  {
    zzhx.zzY("Adapter called onDismissScreen.");
    if (!zzbe.zzbD().zzeC())
    {
      zzhx.zzac("onDismissScreen must be called on the main UI thread.");
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          try
          {
            zzdy.zza(zzdy.this).onAdClosed();
            return;
          }
          catch (RemoteException localRemoteException)
          {
            zzhx.zzd("Could not call onAdClosed.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      zzsS.onAdClosed();
      return;
    }
    catch (RemoteException paramby)
    {
      zzhx.zzd("Could not call onAdClosed.", paramby);
    }
  }
  
  public final void onFailedToReceiveAd(bx<?, ?> parambx, final bt.a parama)
  {
    zzhx.zzY("Adapter called onFailedToReceiveAd with error. " + parama);
    if (!zzbe.zzbD().zzeC())
    {
      zzhx.zzac("onFailedToReceiveAd must be called on the main UI thread.");
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          try
          {
            zzdy.zza(zzdy.this).onAdFailedToLoad(zzdz.zza(parama));
            return;
          }
          catch (RemoteException localRemoteException)
          {
            zzhx.zzd("Could not call onAdFailedToLoad.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      zzsS.onAdFailedToLoad(zzdz.zza(parama));
      return;
    }
    catch (RemoteException parambx)
    {
      zzhx.zzd("Could not call onAdFailedToLoad.", parambx);
    }
  }
  
  public final void onFailedToReceiveAd(by<?, ?> paramby, final bt.a parama)
  {
    zzhx.zzY("Adapter called onFailedToReceiveAd with error " + parama + ".");
    if (!zzbe.zzbD().zzeC())
    {
      zzhx.zzac("onFailedToReceiveAd must be called on the main UI thread.");
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          try
          {
            zzdy.zza(zzdy.this).onAdFailedToLoad(zzdz.zza(parama));
            return;
          }
          catch (RemoteException localRemoteException)
          {
            zzhx.zzd("Could not call onAdFailedToLoad.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      zzsS.onAdFailedToLoad(zzdz.zza(parama));
      return;
    }
    catch (RemoteException paramby)
    {
      zzhx.zzd("Could not call onAdFailedToLoad.", paramby);
    }
  }
  
  public final void onLeaveApplication(bx<?, ?> parambx)
  {
    zzhx.zzY("Adapter called onLeaveApplication.");
    if (!zzbe.zzbD().zzeC())
    {
      zzhx.zzac("onLeaveApplication must be called on the main UI thread.");
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          try
          {
            zzdy.zza(zzdy.this).onAdLeftApplication();
            return;
          }
          catch (RemoteException localRemoteException)
          {
            zzhx.zzd("Could not call onAdLeftApplication.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      zzsS.onAdLeftApplication();
      return;
    }
    catch (RemoteException parambx)
    {
      zzhx.zzd("Could not call onAdLeftApplication.", parambx);
    }
  }
  
  public final void onLeaveApplication(by<?, ?> paramby)
  {
    zzhx.zzY("Adapter called onLeaveApplication.");
    if (!zzbe.zzbD().zzeC())
    {
      zzhx.zzac("onLeaveApplication must be called on the main UI thread.");
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          try
          {
            zzdy.zza(zzdy.this).onAdLeftApplication();
            return;
          }
          catch (RemoteException localRemoteException)
          {
            zzhx.zzd("Could not call onAdLeftApplication.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      zzsS.onAdLeftApplication();
      return;
    }
    catch (RemoteException paramby)
    {
      zzhx.zzd("Could not call onAdLeftApplication.", paramby);
    }
  }
  
  public final void onPresentScreen(bx<?, ?> parambx)
  {
    zzhx.zzY("Adapter called onPresentScreen.");
    if (!zzbe.zzbD().zzeC())
    {
      zzhx.zzac("onPresentScreen must be called on the main UI thread.");
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          try
          {
            zzdy.zza(zzdy.this).onAdOpened();
            return;
          }
          catch (RemoteException localRemoteException)
          {
            zzhx.zzd("Could not call onAdOpened.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      zzsS.onAdOpened();
      return;
    }
    catch (RemoteException parambx)
    {
      zzhx.zzd("Could not call onAdOpened.", parambx);
    }
  }
  
  public final void onPresentScreen(by<?, ?> paramby)
  {
    zzhx.zzY("Adapter called onPresentScreen.");
    if (!zzbe.zzbD().zzeC())
    {
      zzhx.zzac("onPresentScreen must be called on the main UI thread.");
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          try
          {
            zzdy.zza(zzdy.this).onAdOpened();
            return;
          }
          catch (RemoteException localRemoteException)
          {
            zzhx.zzd("Could not call onAdOpened.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      zzsS.onAdOpened();
      return;
    }
    catch (RemoteException paramby)
    {
      zzhx.zzd("Could not call onAdOpened.", paramby);
    }
  }
  
  public final void onReceivedAd(bx<?, ?> parambx)
  {
    zzhx.zzY("Adapter called onReceivedAd.");
    if (!zzbe.zzbD().zzeC())
    {
      zzhx.zzac("onReceivedAd must be called on the main UI thread.");
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          try
          {
            zzdy.zza(zzdy.this).onAdLoaded();
            return;
          }
          catch (RemoteException localRemoteException)
          {
            zzhx.zzd("Could not call onAdLoaded.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      zzsS.onAdLoaded();
      return;
    }
    catch (RemoteException parambx)
    {
      zzhx.zzd("Could not call onAdLoaded.", parambx);
    }
  }
  
  public final void onReceivedAd(by<?, ?> paramby)
  {
    zzhx.zzY("Adapter called onReceivedAd.");
    if (!zzbe.zzbD().zzeC())
    {
      zzhx.zzac("onReceivedAd must be called on the main UI thread.");
      zzhw.zzzG.post(new Runnable()
      {
        public void run()
        {
          try
          {
            zzdy.zza(zzdy.this).onAdLoaded();
            return;
          }
          catch (RemoteException localRemoteException)
          {
            zzhx.zzd("Could not call onAdLoaded.", localRemoteException);
          }
        }
      });
      return;
    }
    try
    {
      zzsS.onAdLoaded();
      return;
    }
    catch (RemoteException paramby)
    {
      zzhx.zzd("Could not call onAdLoaded.", paramby);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */