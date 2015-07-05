package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.zzb.zza;

final class GoogleMap$zza
  extends zzb.zza
{
  private final GoogleMap.CancelableCallback zzapI;
  
  GoogleMap$zza(GoogleMap.CancelableCallback paramCancelableCallback)
  {
    zzapI = paramCancelableCallback;
  }
  
  public final void onCancel()
  {
    zzapI.onCancel();
  }
  
  public final void onFinish()
  {
    zzapI.onFinish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */