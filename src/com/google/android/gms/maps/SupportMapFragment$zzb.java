package com.google.android.gms.maps;

import android.app.Activity;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.zza;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.maps.internal.IMapFragmentDelegate;
import com.google.android.gms.maps.internal.zzc;
import com.google.android.gms.maps.internal.zzx;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class SupportMapFragment$zzb
  extends zza<SupportMapFragment.zza>
{
  private final Fragment zzPt;
  protected zzf<SupportMapFragment.zza> zzaqa;
  private final List<OnMapReadyCallback> zzaqb = new ArrayList();
  private Activity zzoi;
  
  SupportMapFragment$zzb(Fragment paramFragment)
  {
    zzPt = paramFragment;
  }
  
  private void setActivity(Activity paramActivity)
  {
    zzoi = paramActivity;
    zzqs();
  }
  
  public void getMapAsync(OnMapReadyCallback paramOnMapReadyCallback)
  {
    if (zzlg() != null)
    {
      ((SupportMapFragment.zza)zzlg()).getMapAsync(paramOnMapReadyCallback);
      return;
    }
    zzaqb.add(paramOnMapReadyCallback);
  }
  
  protected void zza(zzf<SupportMapFragment.zza> paramzzf)
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
      Object localObject = zzx.zzac(zzoi).zzj(zze.zzn(zzoi));
      zzaqa.zza(new SupportMapFragment.zza(zzPt, (IMapFragmentDelegate)localObject));
      localObject = zzaqb.iterator();
      while (((Iterator)localObject).hasNext())
      {
        OnMapReadyCallback localOnMapReadyCallback = (OnMapReadyCallback)((Iterator)localObject).next();
        ((SupportMapFragment.zza)zzlg()).getMapAsync(localOnMapReadyCallback);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
      zzaqb.clear();
      return;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.SupportMapFragment.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */