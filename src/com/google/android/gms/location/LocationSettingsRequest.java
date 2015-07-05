package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class LocationSettingsRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new zzj();
  private final int zzFG;
  private final List<LocationRequest> zzabu;
  private final boolean zzamm;
  private final boolean zzamn;
  
  LocationSettingsRequest(int paramInt, List<LocationRequest> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    zzFG = paramInt;
    zzabu = paramList;
    zzamm = paramBoolean1;
    zzamn = paramBoolean2;
  }
  
  private LocationSettingsRequest(List<LocationRequest> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(1, paramList, paramBoolean1, paramBoolean2);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getVersionCode()
  {
    return zzFG;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzj.zza(this, paramParcel, paramInt);
  }
  
  public List<LocationRequest> zzme()
  {
    return Collections.unmodifiableList(zzabu);
  }
  
  public boolean zzps()
  {
    return zzamm;
  }
  
  public boolean zzpt()
  {
    return zzamn;
  }
  
  public static final class Builder
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationSettingsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */