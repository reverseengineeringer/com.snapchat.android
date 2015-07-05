package com.google.android.gms.location;

import java.util.ArrayList;
import java.util.Collection;

public final class LocationSettingsRequest$Builder
{
  private boolean zzamm = false;
  private boolean zzamn = false;
  private final ArrayList<LocationRequest> zzamo = new ArrayList();
  
  public final Builder addAllLocationRequests(Collection<LocationRequest> paramCollection)
  {
    zzamo.addAll(paramCollection);
    return this;
  }
  
  public final Builder addLocationRequest(LocationRequest paramLocationRequest)
  {
    zzamo.add(paramLocationRequest);
    return this;
  }
  
  public final LocationSettingsRequest build()
  {
    return new LocationSettingsRequest(zzamo, zzamm, zzamn, null);
  }
  
  public final Builder setAlwaysShow(boolean paramBoolean)
  {
    zzamm = paramBoolean;
    return this;
  }
  
  public final Builder setNeedBle(boolean paramBoolean)
  {
    zzamn = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationSettingsRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */