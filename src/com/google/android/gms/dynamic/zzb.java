package com.google.android.gms.dynamic;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public final class zzb
  extends zzc.zza
{
  private Fragment zzXZ;
  
  private zzb(Fragment paramFragment)
  {
    zzXZ = paramFragment;
  }
  
  public static zzb zza(Fragment paramFragment)
  {
    if (paramFragment != null) {
      return new zzb(paramFragment);
    }
    return null;
  }
  
  public final Bundle getArguments()
  {
    return zzXZ.getArguments();
  }
  
  public final int getId()
  {
    return zzXZ.getId();
  }
  
  public final boolean getRetainInstance()
  {
    return zzXZ.getRetainInstance();
  }
  
  public final String getTag()
  {
    return zzXZ.getTag();
  }
  
  public final int getTargetRequestCode()
  {
    return zzXZ.getTargetRequestCode();
  }
  
  public final boolean getUserVisibleHint()
  {
    return zzXZ.getUserVisibleHint();
  }
  
  public final zzd getView()
  {
    return zze.zzn(zzXZ.getView());
  }
  
  public final boolean isAdded()
  {
    return zzXZ.isAdded();
  }
  
  public final boolean isDetached()
  {
    return zzXZ.isDetached();
  }
  
  public final boolean isHidden()
  {
    return zzXZ.isHidden();
  }
  
  public final boolean isInLayout()
  {
    return zzXZ.isInLayout();
  }
  
  public final boolean isRemoving()
  {
    return zzXZ.isRemoving();
  }
  
  public final boolean isResumed()
  {
    return zzXZ.isResumed();
  }
  
  public final boolean isVisible()
  {
    return zzXZ.isVisible();
  }
  
  public final void setHasOptionsMenu(boolean paramBoolean)
  {
    zzXZ.setHasOptionsMenu(paramBoolean);
  }
  
  public final void setMenuVisibility(boolean paramBoolean)
  {
    zzXZ.setMenuVisibility(paramBoolean);
  }
  
  public final void setRetainInstance(boolean paramBoolean)
  {
    zzXZ.setRetainInstance(paramBoolean);
  }
  
  public final void setUserVisibleHint(boolean paramBoolean)
  {
    zzXZ.setUserVisibleHint(paramBoolean);
  }
  
  public final void startActivity(Intent paramIntent)
  {
    zzXZ.startActivity(paramIntent);
  }
  
  public final void startActivityForResult(Intent paramIntent, int paramInt)
  {
    zzXZ.startActivityForResult(paramIntent, paramInt);
  }
  
  public final void zzd(zzd paramzzd)
  {
    paramzzd = (View)zze.zzf(paramzzd);
    zzXZ.registerForContextMenu(paramzzd);
  }
  
  public final void zze(zzd paramzzd)
  {
    paramzzd = (View)zze.zzf(paramzzd);
    zzXZ.unregisterForContextMenu(paramzzd);
  }
  
  public final zzd zzlh()
  {
    return zze.zzn(zzXZ.getActivity());
  }
  
  public final zzc zzli()
  {
    return zza(zzXZ.getParentFragment());
  }
  
  public final zzd zzlj()
  {
    return zze.zzn(zzXZ.getResources());
  }
  
  public final zzc zzlk()
  {
    return zza(zzXZ.getTargetFragment());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */