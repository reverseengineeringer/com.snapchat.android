package com.google.android.gms.location.places.ui;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqf;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.maps.model.LatLngBounds;

public class PlacePicker
{
  public static final int RESULT_ERROR = 2;
  
  public static String getAttributions(Intent paramIntent)
  {
    return paramIntent.getStringExtra("third_party_attributions");
  }
  
  public static LatLngBounds getLatLngBounds(Intent paramIntent)
  {
    return (LatLngBounds)zzc.zza(paramIntent, "final_latlng_bounds", LatLngBounds.CREATOR);
  }
  
  public static Place getPlace(Intent paramIntent, Context paramContext)
  {
    zzx.zzb(paramContext, "context must not be null");
    paramIntent = (zzpy)zzc.zza(paramIntent, "selected_place", zzpy.CREATOR);
    paramIntent.zza(zzqf.zzab(paramContext));
    return paramIntent;
  }
  
  public static class IntentBuilder
  {
    private final Intent mIntent = new Intent("com.google.android.gms.location.places.ui.PICK_PLACE");
    
    public IntentBuilder()
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.ui.PlacePicker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */