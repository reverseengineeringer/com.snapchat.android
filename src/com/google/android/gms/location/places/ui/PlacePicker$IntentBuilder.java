package com.google.android.gms.location.places.ui;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.model.LatLngBounds;

public class PlacePicker$IntentBuilder
{
  private final Intent mIntent = new Intent("com.google.android.gms.location.places.ui.PICK_PLACE");
  
  public PlacePicker$IntentBuilder()
  {
    mIntent.setPackage("com.google.android.gms");
  }
  
  public Intent build(Context paramContext)
  {
    GooglePlayServicesUtil.zzI(paramContext);
    return mIntent;
  }
  
  public IntentBuilder setLatLngBounds(LatLngBounds paramLatLngBounds)
  {
    zzx.zzl(paramLatLngBounds);
    zzc.zza(paramLatLngBounds, mIntent, "latlng_bounds");
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.ui.PlacePicker.IntentBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */