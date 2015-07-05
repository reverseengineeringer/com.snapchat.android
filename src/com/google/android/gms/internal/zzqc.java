package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.PlaceLikelihood;

public class zzqc
  extends zzqj
  implements PlaceLikelihood
{
  private final Context mContext;
  
  public zzqc(DataHolder paramDataHolder, int paramInt, Context paramContext)
  {
    super(paramDataHolder, paramInt);
    mContext = paramContext;
  }
  
  public float getLikelihood()
  {
    return zza("place_likelihood", -1.0F);
  }
  
  public Place getPlace()
  {
    return new zzqg(zzMd, zzNQ, mContext);
  }
  
  public PlaceLikelihood zzpX()
  {
    return zzqa.zza((zzpy)getPlace().freeze(), getLikelihood());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */