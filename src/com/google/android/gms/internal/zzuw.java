package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public class zzuw
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzuw> CREATOR = new zzux();
  final int zzFG;
  final boolean zzawX;
  final List<Scope> zzawY;
  
  zzuw(int paramInt, boolean paramBoolean, List<Scope> paramList)
  {
    zzFG = paramInt;
    zzawX = paramBoolean;
    zzawY = paramList;
  }
  
  public zzuw(boolean paramBoolean, Set<Scope> paramSet)
  {
    this(1, paramBoolean, zza(paramSet));
  }
  
  private static List<Scope> zza(Set<Scope> paramSet)
  {
    if (paramSet == null) {
      return Collections.emptyList();
    }
    return Collections.unmodifiableList(new ArrayList(paramSet));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzux.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzuw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */