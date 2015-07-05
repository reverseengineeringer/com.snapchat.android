package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class PlaceFilter
  implements SafeParcelable
{
  public static final zze CREATOR = new zze();
  final int zzFG;
  final boolean zzanC;
  final List<zzj> zzanD;
  final List<String> zzanE;
  private final Set<zzj> zzanF;
  private final Set<String> zzanG;
  final List<Integer> zzany;
  private final Set<Integer> zzanz;
  
  public PlaceFilter()
  {
    this(false, null);
  }
  
  PlaceFilter(int paramInt, List<Integer> paramList, boolean paramBoolean, List<String> paramList1, List<zzj> paramList2)
  {
    zzFG = paramInt;
    if (paramList == null)
    {
      paramList = Collections.emptyList();
      zzany = paramList;
      zzanC = paramBoolean;
      if (paramList2 != null) {
        break label97;
      }
      paramList = Collections.emptyList();
      label36:
      zzanD = paramList;
      if (paramList1 != null) {
        break label106;
      }
    }
    label97:
    label106:
    for (paramList = Collections.emptyList();; paramList = Collections.unmodifiableList(paramList1))
    {
      zzanE = paramList;
      zzanz = zzn(zzany);
      zzanF = zzn(zzanD);
      zzanG = zzn(zzanE);
      return;
      paramList = Collections.unmodifiableList(paramList);
      break;
      paramList = Collections.unmodifiableList(paramList2);
      break label36;
    }
  }
  
  public PlaceFilter(Collection<Integer> paramCollection, boolean paramBoolean, Collection<String> paramCollection1, Collection<zzj> paramCollection2)
  {
    this(0, zzc(paramCollection), paramBoolean, zzc(paramCollection1), zzc(paramCollection2));
  }
  
  public PlaceFilter(boolean paramBoolean, Collection<String> paramCollection)
  {
    this(null, paramBoolean, paramCollection, null);
  }
  
  private static <E> List<E> zzc(Collection<E> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty())) {
      return Collections.emptyList();
    }
    return new ArrayList(paramCollection);
  }
  
  private static <E> Set<E> zzn(List<E> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      return Collections.emptySet();
    }
    return Collections.unmodifiableSet(new HashSet(paramList));
  }
  
  @Deprecated
  public static PlaceFilter zzpJ()
  {
    return new zza(null).zzpK();
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
      if (!(paramObject instanceof PlaceFilter)) {
        return false;
      }
      paramObject = (PlaceFilter)paramObject;
    } while ((zzanz.equals(zzanz)) && (zzanC == zzanC) && (zzanF.equals(zzanF)) && (zzanG.equals(zzanG)));
    return false;
  }
  
  public final Set<String> getPlaceIds()
  {
    return zzanG;
  }
  
  public final Set<Integer> getPlaceTypes()
  {
    return zzanz;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { zzanz, Boolean.valueOf(zzanC), zzanF, zzanG });
  }
  
  public final boolean isRestrictedToPlacesOpenNow()
  {
    return zzanC;
  }
  
  public final boolean matches(Place paramPlace)
  {
    if ((isRestrictedToPlacesOpenNow()) && (paramPlace.zzpI())) {
      return false;
    }
    Set localSet = getPlaceTypes();
    int i;
    if (localSet.isEmpty()) {
      i = 1;
    }
    for (;;)
    {
      if (i == 0)
      {
        return false;
        Iterator localIterator = paramPlace.getPlaceTypes().iterator();
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
        } while (!localSet.contains((Integer)localIterator.next()));
        i = 1;
      }
      else
      {
        localSet = getPlaceIds();
        if ((localSet.isEmpty()) || (localSet.contains(paramPlace.getId()))) {}
        for (i = 1; i == 0; i = 0) {
          return false;
        }
        return true;
        i = 0;
      }
    }
  }
  
  public final String toString()
  {
    zzw.zza localzza = zzw.zzk(this);
    if (!zzanz.isEmpty()) {
      localzza.zza("types", zzanz);
    }
    localzza.zza("requireOpenNow", Boolean.valueOf(zzanC));
    if (!zzanG.isEmpty()) {
      localzza.zza("placeIds", zzanG);
    }
    if (!zzanF.isEmpty()) {
      localzza.zza("requestedUserDataTypes", zzanF);
    }
    return localzza.toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zze.zza(this, paramParcel, paramInt);
  }
  
  @Deprecated
  public static final class zza
  {
    private boolean zzanC = false;
    private Collection<Integer> zzanH = null;
    private Collection<zzj> zzanI = null;
    private String[] zzanJ = null;
    
    public final PlaceFilter zzpK()
    {
      List localList = null;
      ArrayList localArrayList1;
      if (zzanH != null)
      {
        localArrayList1 = new ArrayList(zzanH);
        if (zzanI == null) {
          break label75;
        }
      }
      label75:
      for (ArrayList localArrayList2 = new ArrayList(zzanI);; localArrayList2 = null)
      {
        if (zzanJ != null) {
          localList = Arrays.asList(zzanJ);
        }
        return new PlaceFilter(localArrayList1, zzanC, localList, localArrayList2);
        localArrayList1 = null;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.PlaceFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */