package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

public class zzti
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  private zztl zzatK;
  private final zztd.zza zzatU;
  private boolean zzatV;
  
  public zzti(zztd.zza paramzza)
  {
    zzatU = paramzza;
    zzatK = null;
    zzatV = true;
  }
  
  public void onConnected(Bundle paramBundle)
  {
    zzatK.zzae(false);
    if ((zzatV) && (zzatU != null)) {
      zzatU.zzrE();
    }
    zzatV = false;
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    zzatK.zzae(true);
    if ((zzatV) && (zzatU != null))
    {
      if (!paramConnectionResult.hasResolution()) {
        break label48;
      }
      zzatU.zzf(paramConnectionResult.getResolution());
    }
    for (;;)
    {
      zzatV = false;
      return;
      label48:
      zzatU.zzrF();
    }
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    zzatK.zzae(true);
  }
  
  public void zza(zztl paramzztl)
  {
    zzatK = paramzztl;
  }
  
  public void zzad(boolean paramBoolean)
  {
    zzatV = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzti
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */