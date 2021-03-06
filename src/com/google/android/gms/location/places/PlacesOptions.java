package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Api.ApiOptions.Optional;

public final class PlacesOptions
  implements Api.ApiOptions.Optional
{
  public final String zzaob;
  
  private PlacesOptions(Builder paramBuilder)
  {
    zzaob = Builder.zza(paramBuilder);
  }
  
  public static class Builder
  {
    private String zzaoc;
    
    public PlacesOptions build()
    {
      return new PlacesOptions(this, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.PlacesOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */