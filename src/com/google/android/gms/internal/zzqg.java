package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public class zzqg
  extends zzqj
  implements Place
{
  private final String zzanM;
  private boolean zzaoI;
  private final zzqf zzaoL;
  
  public zzqg(DataHolder paramDataHolder, int paramInt, Context paramContext)
  {
    super(paramDataHolder, paramInt);
    if (paramContext != null) {}
    for (paramDataHolder = zzqf.zzab(paramContext);; paramDataHolder = null)
    {
      zzaoL = paramDataHolder;
      zzaoI = zzj("place_is_logging_enabled", false);
      zzanM = zzz("place_id", "");
      return;
    }
  }
  
  private void zzcn(String paramString)
  {
    if ((zzaoI) && (zzaoL != null)) {
      zzaoL.zzy(zzanM, paramString);
    }
  }
  
  public CharSequence getAddress()
  {
    zzcn("getAddress");
    return zzz("place_address", "");
  }
  
  public String getId()
  {
    zzcn("getId");
    return zzanM;
  }
  
  public LatLng getLatLng()
  {
    zzcn("getLatLng");
    return (LatLng)zza("place_lat_lng", LatLng.CREATOR);
  }
  
  public Locale getLocale()
  {
    zzcn("getLocale");
    String str = zzz("place_locale", "");
    if (!TextUtils.isEmpty(str)) {
      return new Locale(str);
    }
    return Locale.getDefault();
  }
  
  public CharSequence getName()
  {
    zzcn("getName");
    return zzz("place_name", "");
  }
  
  public CharSequence getPhoneNumber()
  {
    zzcn("getPhoneNumber");
    return zzz("place_phone_number", "");
  }
  
  public List<Integer> getPlaceTypes()
  {
    zzcn("getPlaceTypes");
    return zza("place_types", Collections.emptyList());
  }
  
  public int getPriceLevel()
  {
    zzcn("getPriceLevel");
    return zzC("place_price_level", -1);
  }
  
  public float getRating()
  {
    zzcn("getRating");
    return zza("place_rating", -1.0F);
  }
  
  public LatLngBounds getViewport()
  {
    zzcn("getViewport");
    return (LatLngBounds)zza("place_viewport", LatLngBounds.CREATOR);
  }
  
  public Uri getWebsiteUri()
  {
    zzcn("getWebsiteUri");
    String str = zzz("place_website_uri", null);
    if (str == null) {
      return null;
    }
    return Uri.parse(str);
  }
  
  public boolean zzpI()
  {
    zzcn("isPermanentlyClosed");
    return zzj("place_is_permanently_closed", false);
  }
  
  public float zzpO()
  {
    zzcn("getLevelNumber");
    return zza("place_level_number", 0.0F);
  }
  
  public Place zzpV()
  {
    Object localObject = new zzpy.zza().zzY(zzaoI);
    zzaoI = false;
    localObject = ((zzpy.zza)localObject).zzcq(getAddress().toString()).zzp(zzb("place_attributions", Collections.emptyList())).zzco(getId()).zzX(zzpI()).zza(getLatLng()).zzc(zzpO()).zzcp(getName().toString()).zzcr(getPhoneNumber().toString()).zzfH(getPriceLevel()).zzd(getRating()).zzo(getPlaceTypes()).zza(getViewport()).zzk(getWebsiteUri()).zzpW();
    ((zzpy)localObject).setLocale(getLocale());
    ((zzpy)localObject).zza(zzaoL);
    return (Place)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */