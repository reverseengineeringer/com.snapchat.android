package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.zza;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.internal.zzc;
import com.google.android.gms.maps.internal.zzx;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class StreetViewPanoramaView$zzb
  extends zza<StreetViewPanoramaView.zza>
{
  private final Context mContext;
  private final StreetViewPanoramaOptions zzaqG;
  protected zzf<StreetViewPanoramaView.zza> zzaqa;
  private final ViewGroup zzaqh;
  private final List<OnStreetViewPanoramaReadyCallback> zzaqu = new ArrayList();
  
  StreetViewPanoramaView$zzb(ViewGroup paramViewGroup, Context paramContext, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
  {
    zzaqh = paramViewGroup;
    mContext = paramContext;
    zzaqG = paramStreetViewPanoramaOptions;
  }
  
  public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
  {
    if (zzlg() != null)
    {
      ((StreetViewPanoramaView.zza)zzlg()).getStreetViewPanoramaAsync(paramOnStreetViewPanoramaReadyCallback);
      return;
    }
    zzaqu.add(paramOnStreetViewPanoramaReadyCallback);
  }
  
  protected void zza(zzf<StreetViewPanoramaView.zza> paramzzf)
  {
    zzaqa = paramzzf;
    zzqs();
  }
  
  public void zzqs()
  {
    if ((zzaqa != null) && (zzlg() == null)) {}
    try
    {
      Object localObject = zzx.zzac(mContext).zza(zze.zzn(mContext), zzaqG);
      zzaqa.zza(new StreetViewPanoramaView.zza(zzaqh, (IStreetViewPanoramaViewDelegate)localObject));
      localObject = zzaqu.iterator();
      while (((Iterator)localObject).hasNext())
      {
        OnStreetViewPanoramaReadyCallback localOnStreetViewPanoramaReadyCallback = (OnStreetViewPanoramaReadyCallback)((Iterator)localObject).next();
        ((StreetViewPanoramaView.zza)zzlg()).getStreetViewPanoramaAsync(localOnStreetViewPanoramaReadyCallback);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
      zzaqu.clear();
      return;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */