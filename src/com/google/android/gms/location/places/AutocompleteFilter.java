package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class AutocompleteFilter
  implements SafeParcelable
{
  public static final zzb CREATOR = new zzb();
  final int zzFG;
  final boolean zzanx;
  final List<Integer> zzany;
  private final Set<Integer> zzanz;
  
  AutocompleteFilter(int paramInt, boolean paramBoolean, Collection<Integer> paramCollection)
  {
    zzFG = paramInt;
    zzanx = paramBoolean;
    if (paramCollection == null) {}
    for (paramCollection = Collections.emptyList();; paramCollection = new ArrayList(paramCollection))
    {
      zzany = paramCollection;
      if (!zzany.isEmpty()) {
        break;
      }
      zzanz = Collections.emptySet();
      return;
    }
    zzanz = Collections.unmodifiableSet(new HashSet(zzany));
  }
  
  public static AutocompleteFilter create(Collection<Integer> paramCollection)
  {
    return zza(true, paramCollection);
  }
  
  public static AutocompleteFilter zza(boolean paramBoolean, Collection<Integer> paramCollection)
  {
    return new AutocompleteFilter(0, paramBoolean, paramCollection);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof AutocompleteFilter)) {
        return false;
      }
      paramObject = (AutocompleteFilter)paramObject;
    } while ((zzanz.equals(zzanz)) && (zzanx == zzanx));
    return false;
  }
  
  public Set<Integer> getPlaceTypes()
  {
    return zzanz;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Boolean.valueOf(zzanx), zzanz });
  }
  
  public String toString()
  {
    zzw.zza localzza = zzw.zzk(this);
    if (!zzanx) {
      localzza.zza("restrictedToPlaces", Boolean.valueOf(zzanx));
    }
    localzza.zza("placeTypes", zzanz);
    return localzza.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzb.zza(this, paramParcel, paramInt);
  }
  
  public boolean zzpF()
  {
    return zzanx;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.AutocompleteFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */