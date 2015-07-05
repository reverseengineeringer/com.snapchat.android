package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.zzaa;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolylineOptions
  implements SafeParcelable
{
  public static final zzo CREATOR = new zzo();
  private int mColor = -16777216;
  private final int zzFG;
  private final List<LatLng> zzarB;
  private boolean zzarD = false;
  private float zzarb = 0.0F;
  private boolean zzarc = true;
  private float zzarg = 10.0F;
  
  public PolylineOptions()
  {
    zzFG = 1;
    zzarB = new ArrayList();
  }
  
  PolylineOptions(int paramInt1, List paramList, float paramFloat1, int paramInt2, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    zzFG = paramInt1;
    zzarB = paramList;
    zzarg = paramFloat1;
    mColor = paramInt2;
    zzarb = paramFloat2;
    zzarc = paramBoolean1;
    zzarD = paramBoolean2;
  }
  
  public final PolylineOptions add(LatLng paramLatLng)
  {
    zzarB.add(paramLatLng);
    return this;
  }
  
  public final PolylineOptions add(LatLng... paramVarArgs)
  {
    zzarB.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public final PolylineOptions addAll(Iterable<LatLng> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      LatLng localLatLng = (LatLng)paramIterable.next();
      zzarB.add(localLatLng);
    }
    return this;
  }
  
  public final PolylineOptions color(int paramInt)
  {
    mColor = paramInt;
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final PolylineOptions geodesic(boolean paramBoolean)
  {
    zzarD = paramBoolean;
    return this;
  }
  
  public final int getColor()
  {
    return mColor;
  }
  
  public final List<LatLng> getPoints()
  {
    return zzarB;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final float getWidth()
  {
    return zzarg;
  }
  
  public final float getZIndex()
  {
    return zzarb;
  }
  
  public final boolean isGeodesic()
  {
    return zzarD;
  }
  
  public final boolean isVisible()
  {
    return zzarc;
  }
  
  public final PolylineOptions visible(boolean paramBoolean)
  {
    zzarc = paramBoolean;
    return this;
  }
  
  public final PolylineOptions width(float paramFloat)
  {
    zzarg = paramFloat;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzp.zza(this, paramParcel, paramInt);
      return;
    }
    zzo.zza(this, paramParcel, paramInt);
  }
  
  public final PolylineOptions zIndex(float paramFloat)
  {
    zzarb = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PolylineOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */