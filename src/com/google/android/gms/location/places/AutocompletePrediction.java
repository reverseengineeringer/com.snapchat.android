package com.google.android.gms.location.places;

import com.google.android.gms.common.data.Freezable;
import java.util.List;

public abstract interface AutocompletePrediction
  extends Freezable<AutocompletePrediction>
{
  public abstract String getDescription();
  
  public abstract List<? extends Substring> getMatchedSubstrings();
  
  public abstract String getPlaceId();
  
  public abstract List<Integer> getPlaceTypes();
  
  public static abstract interface Substring
  {
    public abstract int getLength();
    
    public abstract int getOffset();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.AutocompletePrediction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */