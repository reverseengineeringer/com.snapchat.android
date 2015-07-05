package com.google.android.gms.internal;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.ads.purchase.InAppPurchaseResult;

@zzgi
public class zzfv
  implements InAppPurchaseResult
{
  private final zzfr zzvx;
  
  public zzfv(zzfr paramzzfr)
  {
    zzvx = paramzzfr;
  }
  
  public void finishPurchase()
  {
    try
    {
      zzvx.finishPurchase();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward finishPurchase to InAppPurchaseResult", localRemoteException);
    }
  }
  
  public String getProductId()
  {
    try
    {
      String str = zzvx.getProductId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward getProductId to InAppPurchaseResult", localRemoteException);
    }
    return null;
  }
  
  public Intent getPurchaseData()
  {
    try
    {
      Intent localIntent = zzvx.getPurchaseData();
      return localIntent;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward getPurchaseData to InAppPurchaseResult", localRemoteException);
    }
    return null;
  }
  
  public int getResultCode()
  {
    try
    {
      int i = zzvx.getResultCode();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward getPurchaseData to InAppPurchaseResult", localRemoteException);
    }
    return 0;
  }
  
  public boolean isVerified()
  {
    try
    {
      boolean bool = zzvx.isVerified();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward isVerified to InAppPurchaseResult", localRemoteException);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */