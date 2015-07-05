package com.google.android.gms.maps;

import android.app.Activity;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.zza;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate;
import com.google.android.gms.maps.internal.zzc;
import com.google.android.gms.maps.internal.zzx;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class SupportStreetViewPanoramaFragment$zzb
  extends zza<SupportStreetViewPanoramaFragment.zza>
{
  private final Fragment zzPt;
  protected zzf<SupportStreetViewPanoramaFragment.zza> zzaqa;
  private final List<OnStreetViewPanoramaReadyCallback> zzaqu = new ArrayList();
  private Activity zzoi;
  
  SupportStreetViewPanoramaFragment$zzb(Fragment paramFragment)
  {
    zzPt = paramFragment;
  }
  
  private void setActivity(Activity paramActivity)
  {
    zzoi = paramActivity;
    zzqs();
  }
  
  public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
  {
    if (zzlg() != null)
    {
      ((SupportStreetViewPanoramaFragment.zza)zzlg()).getStreetViewPanoramaAsync(paramOnStreetViewPanoramaReadyCallback);
      return;
    }
    zzaqu.add(paramOnStreetViewPanoramaReadyCallback);
  }
  
  protected void zza(zzf<SupportStreetViewPanoramaFragment.zza> paramzzf)
  {
    zzaqa = paramzzf;
    zzqs();
  }
  
  public void zzqs()
  {
    if ((zzoi != null) && (zzaqa != null) && (zzlg() == null)) {}
    try
    {
      MapsInitializer.initialize(zzoi);
      Object localObject = zzx.zzac(zzoi).zzk(zze.zzn(zzoi));
      zzaqa.zza(new SupportStreetViewPanoramaFragment.zza(zzPt, (IStreetViewPanoramaFragmentDelegate)localObject));
      localObject = zzaqu.iterator();
      while (((Iterator)localObject).hasNext())
      {
        OnStreetViewPanoramaReadyCallback localOnStreetViewPanoramaReadyCallback = (OnStreetViewPanoramaReadyCallback)((Iterator)localObject).next();
        ((SupportStreetViewPanoramaFragment.zza)zzlg()).getStreetViewPanoramaAsync(localOnStreetViewPanoramaReadyCallback);
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
 * Qualified Name:     com.google.android.gms.maps.SupportStreetViewPanoramaFragment.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */