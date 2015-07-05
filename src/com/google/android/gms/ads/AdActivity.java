package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.internal.zzeu;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzhx;

public class AdActivity
  extends Activity
{
  public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
  public static final String SIMPLE_CLASS_NAME = "AdActivity";
  private zzev zzlf;
  
  private void zzX()
  {
    if (zzlf != null) {}
    try
    {
      zzlf.zzX();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward setContentViewSet to ad overlay:", localRemoteException);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    zzlf = zzeu.zzb(this);
    if (zzlf == null)
    {
      zzhx.zzac("Could not create ad overlay.");
      finish();
      return;
    }
    try
    {
      zzlf.onCreate(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      zzhx.zzd("Could not forward onCreate to ad overlay:", paramBundle);
      finish();
    }
  }
  
  protected void onDestroy()
  {
    try
    {
      if (zzlf != null) {
        zzlf.onDestroy();
      }
      super.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        zzhx.zzd("Could not forward onDestroy to ad overlay:", localRemoteException);
      }
    }
  }
  
  protected void onPause()
  {
    try
    {
      if (zzlf != null) {
        zzlf.onPause();
      }
      super.onPause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        zzhx.zzd("Could not forward onPause to ad overlay:", localRemoteException);
        finish();
      }
    }
  }
  
  protected void onRestart()
  {
    super.onRestart();
    try
    {
      if (zzlf != null) {
        zzlf.onRestart();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward onRestart to ad overlay:", localRemoteException);
      finish();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    try
    {
      if (zzlf != null) {
        zzlf.onResume();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward onResume to ad overlay:", localRemoteException);
      finish();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      if (zzlf != null) {
        zzlf.onSaveInstanceState(paramBundle);
      }
      super.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        zzhx.zzd("Could not forward onSaveInstanceState to ad overlay:", localRemoteException);
        finish();
      }
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    try
    {
      if (zzlf != null) {
        zzlf.onStart();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not forward onStart to ad overlay:", localRemoteException);
      finish();
    }
  }
  
  protected void onStop()
  {
    try
    {
      if (zzlf != null) {
        zzlf.onStop();
      }
      super.onStop();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        zzhx.zzd("Could not forward onStop to ad overlay:", localRemoteException);
        finish();
      }
    }
  }
  
  public void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    zzX();
  }
  
  public void setContentView(View paramView)
  {
    super.setContentView(paramView);
    zzX();
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    zzX();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.AdActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */