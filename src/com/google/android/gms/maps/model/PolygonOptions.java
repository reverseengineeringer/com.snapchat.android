package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.zzaa;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolygonOptions
  implements SafeParcelable
{
  public static final zzm CREATOR = new zzm();
  private final int zzFG;
  private float zzaqY = 10.0F;
  private int zzaqZ = -16777216;
  private final List<LatLng> zzarB;
  private final List<List<LatLng>> zzarC;
  private boolean zzarD = false;
  private int zzara = 0;
  private float zzarb = 0.0F;
  private boolean zzarc = true;
  
  public PolygonOptions()
  {
    zzFG = 1;
    zzarB = new ArrayList();
    zzarC = new ArrayList();
  }
  
  PolygonOptions(int paramInt1, List<LatLng> paramList, List paramList1, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    zzFG = paramInt1;
    zzarB = paramList;
    zzarC = paramList1;
    zzaqY = paramFloat1;
    zzaqZ = paramInt2;
    zzara = paramInt3;
    zzarb = paramFloat2;
    zzarc = paramBoolean1;
    zzarD = paramBoolean2;
  }
  
  public final PolygonOptions add(LatLng paramLatLng)
  {
    zzarB.add(paramLatLng);
    return this;
  }
  
  public final PolygonOptions add(LatLng... paramVarArgs)
  {
    zzarB.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public final PolygonOptions addAll(Iterable<LatLng> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      LatLng localLatLng = (LatLng)paramIterable.next();
      zzarB.add(localLatLng);
    }
    return this;
  }
  
  public final PolygonOptions addHole(Iterable<LatLng> paramIterable)
  {
    ArrayList localArrayList = new ArrayList();
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext()) {
      localArrayList.add((LatLng)paramIterable.next());
    }
    zzarC.add(localArrayList);
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final PolygonOptions fillColor(int paramInt)
  {
    zzara = paramInt;
    return this;
  }
  
  public final PolygonOptions geodesic(boolean paramBoolean)
  {
    zzarD = paramBoolean;
    return this;
  }
  
  public final int getFillColor()
  {
    return zzara;
  }
  
  public final List<List<LatLng>> getHoles()
  {
    return zzarC;
  }
  
  public final List<LatLng> getPoints()
  {
    return zzarB;
  }
  
  public final int getStrokeColor()
  {
    return zzaqZ;
  }
  
  public final float getStrokeWidth()
  {
    return zzaqY;
  }
  
  final int getVersionCode()
  {
    return zzFG;
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
  
  public final PolygonOptions strokeColor(int paramInt)
  {
    zzaqZ = paramInt;
    return this;
  }
  
  public final PolygonOptions strokeWidth(float paramFloat)
  {
    zzaqY = paramFloat;
    return this;
  }
  
  public final PolygonOptions visible(boolean paramBoolean)
  {
    zzarc = paramBoolean;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzn.zza(this, paramParcel, paramInt);
      return;
    }
    zzm.zza(this, paramParcel, paramInt);
  }
  
  public final PolygonOptions zIndex(float paramFloat)
  {
    zzarb = paramFloat;
    return this;
  }
  
  final List zzqJ()
  {
    return zzarC;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PolygonOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */