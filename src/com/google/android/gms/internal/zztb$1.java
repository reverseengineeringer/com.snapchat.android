package com.google.android.gms.internal;

import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tagmanager.ContainerHolder;

class zztb$1
  implements ResultCallback<ContainerHolder>
{
  zztb$1(zztb paramzztb) {}
  
  public void zza(ContainerHolder paramContainerHolder)
  {
    if (paramContainerHolder.getStatus().isSuccess()) {}
    for (paramContainerHolder = paramContainerHolder.getContainer();; paramContainerHolder = null)
    {
      paramContainerHolder = new zzsz(zztb.zza(zzatH), paramContainerHolder, zzatH.zzrB());
      zztb.zza(zzatH, paramContainerHolder.zzrv());
      zztb.zzb(zzatH);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zztb.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */