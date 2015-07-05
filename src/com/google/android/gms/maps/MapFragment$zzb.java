package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.RemoteException;
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

class MapFragment$zzb
  extends zza<MapFragment.zza>
{
  private final Fragment zzXZ;
  protected zzf<MapFragment.zza> zzaqa;
  private final List<OnMapReadyCallback> zzaqb = new ArrayList();
  private Activity zzoi;
  
  MapFragment$zzb(Fragment paramFragment)
  {
    zzXZ = paramFragment;
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
      ((MapFragment.zza)zzlg()).getMapAsync(paramOnMapReadyCallback);
      return;
    }
    zzaqb.add(paramOnMapReadyCallback);
  }
  
  protected void zza(zzf<MapFragment.zza> paramzzf)
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
      zzaqa.zza(new MapFragment.zza(zzXZ, (IMapFragmentDelegate)localObject));
      localObject = zzaqb.iterator();
      while (((Iterator)localObject).hasNext())
      {
        OnMapReadyCallback localOnMapReadyCallback = (OnMapReadyCallback)((Iterator)localObject).next();
        ((MapFragment.zza)zzlg()).getMapAsync(localOnMapReadyCallback);
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
 * Qualified Name:     com.google.android.gms.maps.MapFragment.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */