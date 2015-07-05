package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class zzb
  implements SafeParcelable
{
  public static final zzc CREATOR = new zzc();
  private static final List<Integer> zzama = Collections.unmodifiableList(Arrays.asList(new Integer[] { Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3), Integer.valueOf(4), Integer.valueOf(5), Integer.valueOf(6), Integer.valueOf(7), Integer.valueOf(8), Integer.valueOf(9), Integer.valueOf(10), Integer.valueOf(11), Integer.valueOf(12), Integer.valueOf(13), Integer.valueOf(14), Integer.valueOf(15), Integer.valueOf(16), Integer.valueOf(17), Integer.valueOf(18) }));
  private static final List<Integer> zzamb = Collections.unmodifiableList(Arrays.asList(new Integer[] { Integer.valueOf(1), Integer.valueOf(18) }));
  private static final List<Integer> zzamc = Collections.unmodifiableList(Arrays.asList(new Integer[] { Integer.valueOf(2), Integer.valueOf(4), Integer.valueOf(6), Integer.valueOf(8), Integer.valueOf(10), Integer.valueOf(12), Integer.valueOf(14), Integer.valueOf(16) }));
  private static final List<Integer> zzamd = Collections.unmodifiableList(Arrays.asList(new Integer[] { Integer.valueOf(3), Integer.valueOf(5), Integer.valueOf(7), Integer.valueOf(9), Integer.valueOf(11), Integer.valueOf(13), Integer.valueOf(15), Integer.valueOf(17) }));
  private final int zzFG;
  private final List<Integer> zzame;
  
  zzb(int paramInt, List<Integer> paramList)
  {
    zzFG = paramInt;
    zzame = paramList;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final int getVersionCode()
  {
    return zzFG;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzc.zza(this, paramParcel, paramInt);
  }
  
  public final List<Integer> zzpq()
  {
    return zzame;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */