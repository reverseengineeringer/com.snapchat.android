package com.google.android.gms.ads.doubleclick;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzbo.zza;
import java.util.Date;
import java.util.List;

public final class PublisherAdRequest$Builder
{
  private final zzbo.zza zzlh = new zzbo.zza();
  
  public final Builder addCategoryExclusion(String paramString)
  {
    zzlh.zzx(paramString);
    return this;
  }
  
  public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> paramClass, Bundle paramBundle)
  {
    zzlh.zzb(paramClass, paramBundle);
    return this;
  }
  
  public final Builder addCustomTargeting(String paramString1, String paramString2)
  {
    zzlh.zzc(paramString1, paramString2);
    return this;
  }
  
  public final Builder addCustomTargeting(String paramString, List<String> paramList)
  {
    if (paramList != null) {
      zzlh.zzc(paramString, zzv.zzbm(",").zza(paramList));
    }
    return this;
  }
  
  public final Builder addKeyword(String paramString)
  {
    zzlh.zzr(paramString);
    return this;
  }
  
  public final Builder addNetworkExtras(NetworkExtras paramNetworkExtras)
  {
    zzlh.zza(paramNetworkExtras);
    return this;
  }
  
  public final Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> paramClass, Bundle paramBundle)
  {
    zzlh.zza(paramClass, paramBundle);
    return this;
  }
  
  public final Builder addTestDevice(String paramString)
  {
    zzlh.zzs(paramString);
    return this;
  }
  
  public final PublisherAdRequest build()
  {
    return new PublisherAdRequest(this, null);
  }
  
  public final Builder setBirthday(Date paramDate)
  {
    zzlh.zza(paramDate);
    return this;
  }
  
  public final Builder setContentUrl(String paramString)
  {
    zzx.zzb(paramString, "Content URL must be non-null.");
    zzx.zzb(paramString, "Content URL must be non-empty.");
    if (paramString.length() <= 512) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "Content URL must not exceed %d in length.  Provided length was %d.", new Object[] { Integer.valueOf(512), Integer.valueOf(paramString.length()) });
      zzlh.zzu(paramString);
      return this;
    }
  }
  
  public final Builder setGender(int paramInt)
  {
    zzlh.zzh(paramInt);
    return this;
  }
  
  public final Builder setLocation(Location paramLocation)
  {
    zzlh.zza(paramLocation);
    return this;
  }
  
  public final Builder setManualImpressionsEnabled(boolean paramBoolean)
  {
    zzlh.zzj(paramBoolean);
    return this;
  }
  
  public final Builder setPublisherProvidedId(String paramString)
  {
    zzlh.zzv(paramString);
    return this;
  }
  
  public final Builder setRequestAgent(String paramString)
  {
    zzlh.zzw(paramString);
    return this;
  }
  
  public final Builder tagForChildDirectedTreatment(boolean paramBoolean)
  {
    zzlh.zzk(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.doubleclick.PublisherAdRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */