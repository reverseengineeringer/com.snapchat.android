package com.google.android.gms.dynamic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;

class zza$4
  implements zza.zza
{
  zza$4(zza paramzza, FrameLayout paramFrameLayout, LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {}
  
  public int getState()
  {
    return 2;
  }
  
  public void zzb(LifecycleDelegate paramLifecycleDelegate)
  {
    zzXV.removeAllViews();
    zzXV.addView(zza.zzb(zzXR).onCreateView(zzXW, zzXX, zzXU));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.zza.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */