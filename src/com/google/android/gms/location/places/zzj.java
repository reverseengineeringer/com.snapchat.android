package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class zzj
  implements SafeParcelable
{
  public static final zzk CREATOR = new zzk();
  public static final zzj zzaod = zzB("test_type", 1);
  public static final zzj zzaoe = zzB("labeled_place", 6);
  public static final zzj zzaof = zzB("here_content", 7);
  public static final Set<zzj> zzaog = Collections.unmodifiableSet(new HashSet(Arrays.asList(new zzj[] { zzaod, zzaoe, zzaof })));
  final int zzFG;
  final int zzaoh;
  final String zzxV;
  
  zzj(int paramInt1, String paramString, int paramInt2)
  {
    zzx.zzbn(paramString);
    zzFG = paramInt1;
    zzxV = paramString;
    zzaoh = paramInt2;
  }
  
  private static zzj zzB(String paramString, int paramInt)
  {
    return new zzj(0, paramString, paramInt);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof zzj)) {
        return false;
      }
      paramObject = (zzj)paramObject;
    } while ((zzxV.equals(zzxV)) && (zzaoh == zzaoh));
    return false;
  }
  
  public final int hashCode()
  {
    return zzxV.hashCode();
  }
  
  public final String toString()
  {
    return zzxV;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzk.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */