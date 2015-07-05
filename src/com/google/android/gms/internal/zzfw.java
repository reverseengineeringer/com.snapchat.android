package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchase;

@zzgi
public class zzfw
  implements InAppPurchase
{
  private final zzfn zzvi;
  
  public zzfw(zzfn paramzzfn)
  {
    zzvi = paramzzfn;
  }
  
  public String getProductId()
  {
    try
    {
      String str = zzvi.getProductId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward getProductId to InAppPurchase", localRemoteException);
    }
    return null;
  }
  
  public void recordPlayBillingResolution(int paramInt)
  {
    try
    {
      zzvi.recordPlayBillingResolution(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward recordPlayBillingResolution to InAppPurchase", localRemoteException);
    }
  }
  
  public void recordResolution(int paramInt)
  {
    try
    {
      zzvi.recordResolution(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward recordResolution to InAppPurchase", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */