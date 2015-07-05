package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;

public final class zzh
  extends zzc.zza
{
  private Fragment zzPt;
  
  private zzh(Fragment paramFragment)
  {
    zzPt = paramFragment;
  }
  
  public static zzh zza(Fragment paramFragment)
  {
    if (paramFragment != null) {
      return new zzh(paramFragment);
    }
    return null;
  }
  
  public final Bundle getArguments()
  {
    return zzPt.getArguments();
  }
  
  public final int getId()
  {
    return zzPt.getId();
  }
  
  public final boolean getRetainInstance()
  {
    return zzPt.getRetainInstance();
  }
  
  public final String getTag()
  {
    return zzPt.getTag();
  }
  
  public final int getTargetRequestCode()
  {
    return zzPt.getTargetRequestCode();
  }
  
  public final boolean getUserVisibleHint()
  {
    return zzPt.getUserVisibleHint();
  }
  
  public final zzd getView()
  {
    return zze.zzn(zzPt.getView());
  }
  
  public final boolean isAdded()
  {
    return zzPt.isAdded();
  }
  
  public final boolean isDetached()
  {
    return zzPt.isDetached();
  }
  
  public final boolean isHidden()
  {
    return zzPt.isHidden();
  }
  
  public final boolean isInLayout()
  {
    return zzPt.isInLayout();
  }
  
  public final boolean isRemoving()
  {
    return zzPt.isRemoving();
  }
  
  public final boolean isResumed()
  {
    return zzPt.isResumed();
  }
  
  public final boolean isVisible()
  {
    return zzPt.isVisible();
  }
  
  public final void setHasOptionsMenu(boolean paramBoolean)
  {
    zzPt.setHasOptionsMenu(paramBoolean);
  }
  
  public final void setMenuVisibility(boolean paramBoolean)
  {
    zzPt.setMenuVisibility(paramBoolean);
  }
  
  public final void setRetainInstance(boolean paramBoolean)
  {
    zzPt.setRetainInstance(paramBoolean);
  }
  
  public final void setUserVisibleHint(boolean paramBoolean)
  {
    zzPt.setUserVisibleHint(paramBoolean);
  }
  
  public final void startActivity(Intent paramIntent)
  {
    zzPt.startActivity(paramIntent);
  }
  
  public final void startActivityForResult(Intent paramIntent, int paramInt)
  {
    zzPt.startActivityForResult(paramIntent, paramInt);
  }
  
  public final void zzd(zzd paramzzd)
  {
    paramzzd = (View)zze.zzf(paramzzd);
    zzPt.registerForContextMenu(paramzzd);
  }
  
  public final void zze(zzd paramzzd)
  {
    paramzzd = (View)zze.zzf(paramzzd);
    zzPt.unregisterForContextMenu(paramzzd);
  }
  
  public final zzd zzlh()
  {
    return zze.zzn(zzPt.getActivity());
  }
  
  public final zzc zzli()
  {
    return zza(zzPt.getParentFragment());
  }
  
  public final zzd zzlj()
  {
    return zze.zzn(zzPt.getResources());
  }
  
  public final zzc zzlk()
  {
    return zza(zzPt.getTargetFragment());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */