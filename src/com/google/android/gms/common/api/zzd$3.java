package com.google.android.gms.common.api;

import android.os.Bundle;
import java.util.concurrent.atomic.AtomicReference;

class zzd$3
  implements GoogleApiClient.ConnectionCallbacks
{
  zzd$3(zzd paramzzd, AtomicReference paramAtomicReference, zzg paramzzg) {}
  
  public void onConnected(Bundle paramBundle)
  {
    zzd.zza(zzNb, (GoogleApiClient)zzNc.get(), zzNd, true);
  }
  
  public void onConnectionSuspended(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzd.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */