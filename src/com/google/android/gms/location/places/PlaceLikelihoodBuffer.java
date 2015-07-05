package com.google.android.gms.location.places;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.internal.zzqc;

public class PlaceLikelihoodBuffer
  extends AbstractDataBuffer<PlaceLikelihood>
  implements Result
{
  private final Context mContext;
  private final Status zzHb;
  private final String zzanK;
  private final int zzanL;
  
  public PlaceLikelihoodBuffer(DataHolder paramDataHolder, int paramInt, Context paramContext)
  {
    super(paramDataHolder);
    mContext = paramContext;
    zzHb = new Status(paramDataHolder.getStatusCode());
    zzanL = zza.zzfD(paramInt);
    if ((paramDataHolder != null) && (paramDataHolder.zziu() != null))
    {
      zzanK = paramDataHolder.zziu().getString("com.google.android.gms.location.places.PlaceLikelihoodBuffer.ATTRIBUTIONS_EXTRA_KEY");
      return;
    }
    zzanK = null;
  }
  
  public PlaceLikelihood get(int paramInt)
  {
    return new zzqc(zzMd, paramInt, mContext);
  }
  
  public CharSequence getAttributions()
  {
    return zzanK;
  }
  
  public Status getStatus()
  {
    return zzHb;
  }
  
  public String toString()
  {
    return zzw.zzk(this).zza("status", getStatus()).zza("attributions", zzanK).toString();
  }
  
  public static class zza
  {
    static int zzfD(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        throw new IllegalArgumentException("invalid source: " + paramInt);
      }
      return paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.PlaceLikelihoodBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */