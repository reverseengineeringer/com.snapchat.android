package com.google.android.gms.internal;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;
import com.google.android.gms.dynamic.zze;

@zzgi
public class zzch
  implements CustomRenderedAd
{
  private final zzci zzrj;
  
  public zzch(zzci paramzzci)
  {
    zzrj = paramzzci;
  }
  
  public String getBaseUrl()
  {
    try
    {
      String str = zzrj.zzcv();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not delegate getBaseURL to CustomRenderedAd", localRemoteException);
    }
    return null;
  }
  
  public String getContent()
  {
    try
    {
      String str = zzrj.getContent();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not delegate getContent to CustomRenderedAd", localRemoteException);
    }
    return null;
  }
  
  public void onAdRendered(View paramView)
  {
    try
    {
      zzci localzzci = zzrj;
      if (paramView != null) {}
      for (paramView = zze.zzn(paramView);; paramView = null)
      {
        localzzci.zza(paramView);
        return;
      }
      return;
    }
    catch (RemoteException paramView)
    {
      zzhx.zzd("Could not delegate onAdRendered to CustomRenderedAd", paramView);
    }
  }
  
  public void recordClick()
  {
    try
    {
      zzrj.recordClick();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not delegate recordClick to CustomRenderedAd", localRemoteException);
    }
  }
  
  public void recordImpression()
  {
    try
    {
      zzrj.recordImpression();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not delegate recordImpression to CustomRenderedAd", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */