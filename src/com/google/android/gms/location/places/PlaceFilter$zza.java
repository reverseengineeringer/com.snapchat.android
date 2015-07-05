package com.google.android.gms.location.places;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

@Deprecated
public final class PlaceFilter$zza
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

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.PlaceFilter.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */