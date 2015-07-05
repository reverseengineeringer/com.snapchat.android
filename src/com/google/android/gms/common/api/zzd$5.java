package com.google.android.gms.common.api;

class zzd$5
  implements ResultCallback<Status>
{
  zzd$5(zzd paramzzd, zzg paramzzg, boolean paramBoolean, GoogleApiClient paramGoogleApiClient) {}
  
  public void zzi(Status paramStatus)
  {
    if ((paramStatus.isSuccess()) && (zzNb.isConnected())) {
      zzNb.reconnect();
    }
    zzNd.setResult(paramStatus);
    if (zzNe) {
      zzJx.disconnect();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzd.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */