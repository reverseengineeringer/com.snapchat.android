package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.dynamic.zza;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate;
import com.google.android.gms.maps.internal.StreetViewLifecycleDelegate;
import com.google.android.gms.maps.internal.zzc;
import com.google.android.gms.maps.internal.zzu.zza;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class StreetViewPanoramaView
  extends FrameLayout
{
  private final zzb zzaqC;
  private StreetViewPanorama zzaqq;
  
  public StreetViewPanoramaView(Context paramContext)
  {
    super(paramContext);
    zzaqC = new zzb(this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    zzaqC = new zzb(this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    zzaqC = new zzb(this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
  {
    super(paramContext);
    zzaqC = new zzb(this, paramContext, paramStreetViewPanoramaOptions);
  }
  
  @Deprecated
  public final StreetViewPanorama getStreetViewPanorama()
  {
    if (zzaqq != null) {
      return zzaqq;
    }
    zzaqC.zzqs();
    if (zzaqC.zzlg() == null) {
      return null;
    }
    try
    {
      zzaqq = new StreetViewPanorama(((zza)zzaqC.zzlg()).zzqz().getStreetViewPanorama());
      return zzaqq;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void getStreetViewPanoramaAsync(OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
  {
    com.google.android.gms.common.internal.zzx.zzbd("getStreetViewPanoramaAsync() must be called on the main thread");
    zzaqC.getStreetViewPanoramaAsync(paramOnStreetViewPanoramaReadyCallback);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    zzaqC.onCreate(paramBundle);
    if (zzaqC.zzlg() == null) {
      zza.zzb(this);
    }
  }
  
  public final void onDestroy()
  {
    zzaqC.onDestroy();
  }
  
  public final void onLowMemory()
  {
    zzaqC.onLowMemory();
  }
  
  public final void onPause()
  {
    zzaqC.onPause();
  }
  
  public final void onResume()
  {
    zzaqC.onResume();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    zzaqC.onSaveInstanceState(paramBundle);
  }
  
  static class zza
    implements StreetViewLifecycleDelegate
  {
    private final IStreetViewPanoramaViewDelegate zzaqD;
    private View zzaqE;
    private final ViewGroup zzaqd;
    
    public zza(ViewGroup paramViewGroup, IStreetViewPanoramaViewDelegate paramIStreetViewPanoramaViewDelegate)
    {
      zzaqD = ((IStreetViewPanoramaViewDelegate)com.google.android.gms.common.internal.zzx.zzl(paramIStreetViewPanoramaViewDelegate));
      zzaqd = ((ViewGroup)com.google.android.gms.common.internal.zzx.zzl(paramViewGroup));
    }
    
    public void getStreetViewPanoramaAsync(final OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback)
    {
      try
      {
        zzaqD.getStreetViewPanoramaAsync(new zzu.zza()
        {
          public void zza(IStreetViewPanoramaDelegate paramAnonymousIStreetViewPanoramaDelegate)
          {
            paramOnStreetViewPanoramaReadyCallback.onStreetViewPanoramaReady(new StreetViewPanorama(paramAnonymousIStreetViewPanoramaDelegate));
          }
        });
        return;
      }
      catch (RemoteException paramOnStreetViewPanoramaReadyCallback)
      {
        throw new RuntimeRemoteException(paramOnStreetViewPanoramaReadyCallback);
      }
    }
    
    public void onCreate(Bundle paramBundle)
    {
      try
      {
        zzaqD.onCreate(paramBundle);
        zzaqE = ((View)zze.zzf(zzaqD.getView()));
        zzaqd.removeAllViews();
        zzaqd.addView(zzaqE);
        return;
      }
      catch (RemoteException paramBundle)
      {
        throw new RuntimeRemoteException(paramBundle);
      }
    }
    
    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
      throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
    }
    
    public void onDestroy()
    {
      try
      {
        zzaqD.onDestroy();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
    
    public void onDestroyView()
    {
      throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
    }
    
    public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
    {
      throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
    }
    
    public void onLowMemory()
    {
      try
      {
        zzaqD.onLowMemory();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
    
    public void onPause()
    {
      try
      {
        zzaqD.onPause();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
    
    public void onResume()
    {
      try
      {
        zzaqD.onResume();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
    
    public void onSaveInstanceState(Bundle paramBundle)
    {
      try
      {
        zzaqD.onSaveInstanceState(paramBundle);
        return;
      }
      catch (RemoteException paramBundle)
      {
        throw new RuntimeRemoteException(paramBundle);
      }
    }
    
    public void onStart() {}
    
    public void onStop() {}
    
    public IStreetViewPanoramaViewDelegate zzqz()
    {
      return zzaqD;
    }
  }
  
  static class zzb
    extends zza<StreetViewPanoramaView.zza>
  {
    private final Context mContext;
    private final StreetViewPanoramaOptions zzaqG;
    protected zzf<StreetViewPanoramaView.zza> zzaqa;
    private final ViewGroup zzaqh;
    private final List<OnStreetViewPanoramaReadyCallback> zzaqu = new ArrayList();
    
    zzb(ViewGroup paramViewGroup, Context paramContext, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
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
        Object localObject = com.google.android.gms.maps.internal.zzx.zzac(mContext).zza(zze.zzn(mContext), zzaqG);
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */