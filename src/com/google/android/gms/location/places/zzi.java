package com.google.android.gms.location.places;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza.zza;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzmg;
import com.google.android.gms.internal.zzpv.zza;
import com.google.android.gms.internal.zzqr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class zzi
  extends zzpv.zza
{
  private static final String TAG = zzi.class.getSimpleName();
  private final Context mContext;
  private final zzd zzanV;
  private final zza zzanW;
  private final zze zzanX;
  private final zzf zzanY;
  private final zzg zzanZ;
  private final zzc zzaoa;
  
  public zzi(zza paramzza)
  {
    zzanV = null;
    zzanX = null;
    zzanW = paramzza;
    zzanY = null;
    zzanZ = null;
    zzaoa = null;
    mContext = null;
  }
  
  public zzi(zzc paramzzc, Context paramContext)
  {
    zzanV = null;
    zzanX = null;
    zzanW = null;
    zzanY = null;
    zzanZ = null;
    zzaoa = paramzzc;
    mContext = paramContext;
  }
  
  public zzi(zzd paramzzd, Context paramContext)
  {
    zzanV = paramzzd;
    zzanX = null;
    zzanW = null;
    zzanY = null;
    zzanZ = null;
    zzaoa = null;
    mContext = paramContext;
  }
  
  public zzi(zzg paramzzg)
  {
    zzanV = null;
    zzanX = null;
    zzanW = null;
    zzanY = null;
    zzanZ = paramzzg;
    zzaoa = null;
    mContext = null;
  }
  
  public void zzX(DataHolder paramDataHolder)
  {
    int k = 1;
    int i;
    int j;
    label21:
    boolean bool;
    if (zzanV != null)
    {
      i = 1;
      if (zzanX == null) {
        break label97;
      }
      j = 1;
      if (i == j) {
        break label102;
      }
      bool = true;
      label29:
      zzx.zza(bool, "Only one of placeEstimator or placeReturner can be null");
      if (zzanV == null) {
        break label108;
      }
      i = k;
    }
    for (;;)
    {
      if (paramDataHolder == null)
      {
        if (Log.isLoggable(TAG, 6)) {
          new StringBuilder("onPlaceEstimated received null DataHolder: ").append(zzmg.zzkm());
        }
        if (i != 0)
        {
          zzanV.zzk(Status.zzNq);
          return;
          i = 0;
          break;
          label97:
          j = 0;
          break label21;
          label102:
          bool = false;
          break label29;
          label108:
          i = 0;
          continue;
        }
        zzanX.zzk(Status.zzNq);
        return;
      }
    }
    paramDataHolder = new PlaceLikelihoodBuffer(paramDataHolder, 100, mContext);
    if (i != 0)
    {
      zzanV.setResult(paramDataHolder);
      return;
    }
    Status localStatus = paramDataHolder.getStatus();
    ArrayList localArrayList = new ArrayList(paramDataHolder.getCount());
    Iterator localIterator = paramDataHolder.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((PlaceLikelihood)localIterator.next()).getPlace().freeze());
    }
    paramDataHolder.release();
    zzanX.setResult(new zzh(localStatus, localArrayList));
  }
  
  public void zzY(DataHolder paramDataHolder)
  {
    if (paramDataHolder == null)
    {
      if (Log.isLoggable(TAG, 6)) {
        new StringBuilder("onAutocompletePrediction received null DataHolder: ").append(zzmg.zzkm());
      }
      zzanW.zzk(Status.zzNq);
      return;
    }
    zzanW.setResult(new AutocompletePredictionBuffer(paramDataHolder));
  }
  
  public void zzZ(DataHolder paramDataHolder)
  {
    if (paramDataHolder == null)
    {
      if (Log.isLoggable(TAG, 6)) {
        new StringBuilder("onPlaceUserDataFetched received null DataHolder: ").append(zzmg.zzkm());
      }
      zzanY.zzk(Status.zzNq);
      return;
    }
    zzanY.setResult(new zzqr(paramDataHolder));
  }
  
  public void zzaa(DataHolder paramDataHolder)
  {
    paramDataHolder = new PlaceBuffer(paramDataHolder, mContext);
    zzaoa.setResult(paramDataHolder);
  }
  
  public void zzay(Status paramStatus)
  {
    zzanZ.setResult(paramStatus);
  }
  
  public static abstract class zza<A extends Api.zza>
    extends zzi.zzb<AutocompletePredictionBuffer, A>
  {
    public zza(Api.zzc<A> paramzzc, GoogleApiClient paramGoogleApiClient)
    {
      super(paramGoogleApiClient);
    }
    
    protected AutocompletePredictionBuffer zzaz(Status paramStatus)
    {
      return new AutocompletePredictionBuffer(DataHolder.zzay(paramStatus.getStatusCode()));
    }
  }
  
  public static abstract class zzb<R extends Result, A extends Api.zza>
    extends zza.zza<R, A>
  {
    public zzb(Api.zzc<A> paramzzc, GoogleApiClient paramGoogleApiClient)
    {
      super(paramGoogleApiClient);
    }
  }
  
  public static abstract class zzc<A extends Api.zza>
    extends zzi.zzb<PlaceBuffer, A>
  {
    public zzc(Api.zzc<A> paramzzc, GoogleApiClient paramGoogleApiClient)
    {
      super(paramGoogleApiClient);
    }
    
    protected PlaceBuffer zzaA(Status paramStatus)
    {
      return new PlaceBuffer(DataHolder.zzay(paramStatus.getStatusCode()), null);
    }
  }
  
  public static abstract class zzd<A extends Api.zza>
    extends zzi.zzb<PlaceLikelihoodBuffer, A>
  {
    public zzd(Api.zzc<A> paramzzc, GoogleApiClient paramGoogleApiClient)
    {
      super(paramGoogleApiClient);
    }
    
    protected PlaceLikelihoodBuffer zzaB(Status paramStatus)
    {
      return new PlaceLikelihoodBuffer(DataHolder.zzay(paramStatus.getStatusCode()), 100, null);
    }
  }
  
  public static abstract class zze<A extends Api.zza>
    extends zzi.zzb<zzh, A>
  {
    protected zzh zzaC(Status paramStatus)
    {
      return new zzh(paramStatus, Collections.emptyList());
    }
  }
  
  public static abstract class zzf<A extends Api.zza>
    extends zzi.zzb<zzqr, A>
  {
    protected zzqr zzaD(Status paramStatus)
    {
      return zzqr.zzaE(paramStatus);
    }
  }
  
  public static abstract class zzg<A extends Api.zza>
    extends zzi.zzb<Status, A>
  {
    public zzg(Api.zzc<A> paramzzc, GoogleApiClient paramGoogleApiClient)
    {
      super(paramGoogleApiClient);
    }
    
    protected Status zzb(Status paramStatus)
    {
      return paramStatus;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.zzi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */