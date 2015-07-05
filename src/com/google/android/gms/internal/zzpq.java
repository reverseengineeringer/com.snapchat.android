package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.AutocompletePrediction;
import java.util.Collections;
import java.util.List;

public class zzpq
  extends zzqj
  implements AutocompletePrediction
{
  public zzpq(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  public String getDescription()
  {
    return zzz("ap_description", "");
  }
  
  public List<zzpo.zza> getMatchedSubstrings()
  {
    return zza("ap_matched_subscriptions", zzpo.zza.CREATOR, Collections.emptyList());
  }
  
  public String getPlaceId()
  {
    return zzz("ap_place_id", null);
  }
  
  public List<Integer> getPlaceTypes()
  {
    return zza("ap_place_types", Collections.emptyList());
  }
  
  public AutocompletePrediction zzpL()
  {
    return zzpo.zza(getDescription(), getPlaceId(), getPlaceTypes(), getMatchedSubstrings(), zzpM());
  }
  
  public int zzpM()
  {
    return zzC("ap_personalization_type", 6);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */