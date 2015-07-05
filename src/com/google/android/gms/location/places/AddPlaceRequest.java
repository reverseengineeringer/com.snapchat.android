package com.google.android.gms.location.places;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.List;

public class AddPlaceRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<AddPlaceRequest> CREATOR = new zza();
  private final String mName;
  final int zzFG;
  private final String zzYy;
  private final LatLng zzant;
  private final List<Integer> zzanu;
  private final String zzanv;
  private final Uri zzanw;
  
  AddPlaceRequest(int paramInt, String paramString1, LatLng paramLatLng, String paramString2, List<Integer> paramList, String paramString3, Uri paramUri)
  {
    zzFG = paramInt;
    mName = zzx.zzbn(paramString1);
    zzant = ((LatLng)zzx.zzl(paramLatLng));
    zzYy = paramString2;
    zzanu = new ArrayList(paramList);
    if ((!TextUtils.isEmpty(paramString3)) || (paramUri != null)) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "One of phone number or URI should be provided.");
      zzanv = paramString3;
      zzanw = paramUri;
      return;
    }
  }
  
  public AddPlaceRequest(String paramString1, LatLng paramLatLng, String paramString2, List<Integer> paramList, Uri paramUri)
  {
    this(paramString1, paramLatLng, paramString2, paramList, null, (Uri)zzx.zzl(paramUri));
  }
  
  public AddPlaceRequest(String paramString1, LatLng paramLatLng, String paramString2, List<Integer> paramList, String paramString3)
  {
    this(paramString1, paramLatLng, paramString2, paramList, zzx.zzbn(paramString3), null);
  }
  
  public AddPlaceRequest(String paramString1, LatLng paramLatLng, String paramString2, List<Integer> paramList, String paramString3, Uri paramUri)
  {
    this(0, paramString1, paramLatLng, paramString2, paramList, paramString3, paramUri);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAddress()
  {
    return zzYy;
  }
  
  public LatLng getLatLng()
  {
    return zzant;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public String getPhoneNumber()
  {
    return zzanv;
  }
  
  public List<Integer> getPlaceTypes()
  {
    return zzanu;
  }
  
  public Uri getWebsiteUri()
  {
    return zzanw;
  }
  
  public String toString()
  {
    return zzw.zzk(this).zza("name", mName).zza("latLng", zzant).zza("address", zzYy).zza("placeTypes", zzanu).zza("phoneNumer", zzanv).zza("websiteUri", zzanw).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zza.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.AddPlaceRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */