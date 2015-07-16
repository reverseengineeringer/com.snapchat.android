package com.google.android.gms.ads.purchase;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.zzfp;
import com.google.android.gms.internal.zzfu;
import com.google.android.gms.internal.zzhx;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public class InAppPurchaseActivity
  extends Activity
{
  public static final String CLASS_NAME = "com.google.android.gms.ads.purchase.InAppPurchaseActivity";
  public static final String SIMPLE_CLASS_NAME = "InAppPurchaseActivity";
  private zzfp zzAx;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    try
    {
      if (zzAx != null) {
        zzAx.onActivityResult(paramInt1, paramInt2, paramIntent);
      }
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        zzhx.zzd("Could not forward onActivityResult to in-app purchase manager:", localRemoteException);
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate(paramBundle);
    zzAx = zzfu.zze(this);
    if (zzAx == null)
    {
      zzhx.zzac("Could not create in-app purchase manager.");
      finish();
      return;
    }
    try
    {
      zzAx.onCreate();
      return;
    }
    catch (RemoteException paramBundle)
    {
      zzhx.zzd("Could not forward onCreate to in-app purchase manager:", paramBundle);
      finish();
    }
  }
  
  protected void onDestroy()
  {
    try
    {
      if (zzAx != null) {
        zzAx.onDestroy();
      }
      super.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        zzhx.zzd("Could not forward onDestroy to in-app purchase manager:", localRemoteException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.purchase.InAppPurchaseActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */