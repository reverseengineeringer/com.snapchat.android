package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.R.styleable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.zzaa;
import com.google.android.gms.maps.model.CameraPosition;

public final class GoogleMapOptions
  implements SafeParcelable
{
  public static final zza CREATOR = new zza();
  private final int zzFG;
  private Boolean zzapJ;
  private Boolean zzapK;
  private int zzapL = -1;
  private CameraPosition zzapM;
  private Boolean zzapN;
  private Boolean zzapO;
  private Boolean zzapP;
  private Boolean zzapQ;
  private Boolean zzapR;
  private Boolean zzapS;
  private Boolean zzapT;
  private Boolean zzapU;
  
  public GoogleMapOptions()
  {
    zzFG = 1;
  }
  
  GoogleMapOptions(int paramInt1, byte paramByte1, byte paramByte2, int paramInt2, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8, byte paramByte9, byte paramByte10)
  {
    zzFG = paramInt1;
    zzapJ = com.google.android.gms.maps.internal.zza.zza(paramByte1);
    zzapK = com.google.android.gms.maps.internal.zza.zza(paramByte2);
    zzapL = paramInt2;
    zzapM = paramCameraPosition;
    zzapN = com.google.android.gms.maps.internal.zza.zza(paramByte3);
    zzapO = com.google.android.gms.maps.internal.zza.zza(paramByte4);
    zzapP = com.google.android.gms.maps.internal.zza.zza(paramByte5);
    zzapQ = com.google.android.gms.maps.internal.zza.zza(paramByte6);
    zzapR = com.google.android.gms.maps.internal.zza.zza(paramByte7);
    zzapS = com.google.android.gms.maps.internal.zza.zza(paramByte8);
    zzapT = com.google.android.gms.maps.internal.zza.zza(paramByte9);
    zzapU = com.google.android.gms.maps.internal.zza.zza(paramByte10);
  }
  
  public static GoogleMapOptions createFromAttributes(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return null;
    }
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, R.styleable.MapAttrs);
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (localTypedArray.hasValue(R.styleable.MapAttrs_mapType)) {
      localGoogleMapOptions.mapType(localTypedArray.getInt(R.styleable.MapAttrs_mapType, -1));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_zOrderOnTop)) {
      localGoogleMapOptions.zOrderOnTop(localTypedArray.getBoolean(R.styleable.MapAttrs_zOrderOnTop, false));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_useViewLifecycle)) {
      localGoogleMapOptions.useViewLifecycleInFragment(localTypedArray.getBoolean(R.styleable.MapAttrs_useViewLifecycle, false));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiCompass)) {
      localGoogleMapOptions.compassEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiCompass, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiRotateGestures)) {
      localGoogleMapOptions.rotateGesturesEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiRotateGestures, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiScrollGestures)) {
      localGoogleMapOptions.scrollGesturesEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiScrollGestures, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiTiltGestures)) {
      localGoogleMapOptions.tiltGesturesEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiTiltGestures, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiZoomGestures)) {
      localGoogleMapOptions.zoomGesturesEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiZoomGestures, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiZoomControls)) {
      localGoogleMapOptions.zoomControlsEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiZoomControls, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_liteMode)) {
      localGoogleMapOptions.liteMode(localTypedArray.getBoolean(R.styleable.MapAttrs_liteMode, false));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiMapToolbar)) {
      localGoogleMapOptions.mapToolbarEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiMapToolbar, true));
    }
    localGoogleMapOptions.camera(CameraPosition.createFromAttributes(paramContext, paramAttributeSet));
    localTypedArray.recycle();
    return localGoogleMapOptions;
  }
  
  public final GoogleMapOptions camera(CameraPosition paramCameraPosition)
  {
    zzapM = paramCameraPosition;
    return this;
  }
  
  public final GoogleMapOptions compassEnabled(boolean paramBoolean)
  {
    zzapO = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final CameraPosition getCamera()
  {
    return zzapM;
  }
  
  public final Boolean getCompassEnabled()
  {
    return zzapO;
  }
  
  public final Boolean getLiteMode()
  {
    return zzapT;
  }
  
  public final Boolean getMapToolbarEnabled()
  {
    return zzapU;
  }
  
  public final int getMapType()
  {
    return zzapL;
  }
  
  public final Boolean getRotateGesturesEnabled()
  {
    return zzapS;
  }
  
  public final Boolean getScrollGesturesEnabled()
  {
    return zzapP;
  }
  
  public final Boolean getTiltGesturesEnabled()
  {
    return zzapR;
  }
  
  public final Boolean getUseViewLifecycleInFragment()
  {
    return zzapK;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final Boolean getZOrderOnTop()
  {
    return zzapJ;
  }
  
  public final Boolean getZoomControlsEnabled()
  {
    return zzapN;
  }
  
  public final Boolean getZoomGesturesEnabled()
  {
    return zzapQ;
  }
  
  public final GoogleMapOptions liteMode(boolean paramBoolean)
  {
    zzapT = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions mapToolbarEnabled(boolean paramBoolean)
  {
    zzapU = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions mapType(int paramInt)
  {
    zzapL = paramInt;
    return this;
  }
  
  public final GoogleMapOptions rotateGesturesEnabled(boolean paramBoolean)
  {
    zzapS = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions scrollGesturesEnabled(boolean paramBoolean)
  {
    zzapP = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions tiltGesturesEnabled(boolean paramBoolean)
  {
    zzapR = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions useViewLifecycleInFragment(boolean paramBoolean)
  {
    zzapK = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzb.zza(this, paramParcel, paramInt);
      return;
    }
    zza.zza(this, paramParcel, paramInt);
  }
  
  public final GoogleMapOptions zOrderOnTop(boolean paramBoolean)
  {
    zzapJ = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions zoomControlsEnabled(boolean paramBoolean)
  {
    zzapN = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final GoogleMapOptions zoomGesturesEnabled(boolean paramBoolean)
  {
    zzapQ = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  final byte zzqh()
  {
    return com.google.android.gms.maps.internal.zza.zzd(zzapJ);
  }
  
  final byte zzqi()
  {
    return com.google.android.gms.maps.internal.zza.zzd(zzapK);
  }
  
  final byte zzqj()
  {
    return com.google.android.gms.maps.internal.zza.zzd(zzapN);
  }
  
  final byte zzqk()
  {
    return com.google.android.gms.maps.internal.zza.zzd(zzapO);
  }
  
  final byte zzql()
  {
    return com.google.android.gms.maps.internal.zza.zzd(zzapP);
  }
  
  final byte zzqm()
  {
    return com.google.android.gms.maps.internal.zza.zzd(zzapQ);
  }
  
  final byte zzqn()
  {
    return com.google.android.gms.maps.internal.zza.zzd(zzapR);
  }
  
  final byte zzqo()
  {
    return com.google.android.gms.maps.internal.zza.zzd(zzapS);
  }
  
  final byte zzqp()
  {
    return com.google.android.gms.maps.internal.zza.zzd(zzapT);
  }
  
  final byte zzqq()
  {
    return com.google.android.gms.maps.internal.zza.zzd(zzapU);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */