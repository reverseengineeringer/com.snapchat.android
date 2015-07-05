package com.google.android.gms.location.places;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.List;

public class zzh
  implements Result
{
  private final Status zzHb;
  private final List<Place> zzanQ;
  
  public zzh(Status paramStatus, List<Place> paramList)
  {
    zzHb = paramStatus;
    zzanQ = paramList;
  }
  
  public Status getStatus()
  {
    return zzHb;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */