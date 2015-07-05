package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManagerImpl;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzx;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

public class zzh
  extends Fragment
  implements DialogInterface.OnCancelListener, LoaderManager.LoaderCallbacks<ConnectionResult>
{
  private boolean zzNu;
  private int zzNv = -1;
  private ConnectionResult zzNw;
  private final Handler zzNx = new Handler(Looper.getMainLooper());
  private final SparseArray<zzb> zzNy = new SparseArray();
  
  public static zzh zza(FragmentActivity paramFragmentActivity)
  {
    zzx.zzbd("Must be called from main thread of process");
    FragmentManagerImpl localFragmentManagerImpl = mFragments;
    try
    {
      zzh localzzh = (zzh)localFragmentManagerImpl.findFragmentByTag("GmsSupportLifecycleFragment");
      if (localzzh != null)
      {
        paramFragmentActivity = localzzh;
        if (!localzzh.isRemoving()) {}
      }
      else
      {
        paramFragmentActivity = new zzh();
        localFragmentManagerImpl.beginTransaction().add(paramFragmentActivity, "GmsSupportLifecycleFragment").commit();
        localFragmentManagerImpl.executePendingTransactions();
      }
      return paramFragmentActivity;
    }
    catch (ClassCastException paramFragmentActivity)
    {
      throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment", paramFragmentActivity);
    }
  }
  
  private void zza(int paramInt, ConnectionResult paramConnectionResult)
  {
    if (!zzNu)
    {
      zzNu = true;
      zzNv = paramInt;
      zzNw = paramConnectionResult;
      zzNx.post(new zzc(paramInt, paramConnectionResult));
    }
  }
  
  private void zzb(int paramInt, ConnectionResult paramConnectionResult)
  {
    Object localObject = (zzb)zzNy.get(paramInt);
    if (localObject != null)
    {
      zzas(paramInt);
      localObject = zzNC;
      if (localObject != null) {
        ((GoogleApiClient.OnConnectionFailedListener)localObject).onConnectionFailed(paramConnectionResult);
      }
    }
    zziq();
  }
  
  private void zziq()
  {
    int i = 0;
    zzNu = false;
    zzNv = -1;
    zzNw = null;
    LoaderManager localLoaderManager = getLoaderManager();
    while (i < zzNy.size())
    {
      int j = zzNy.keyAt(i);
      zza localzza = zzat(j);
      if ((localzza != null) && (localzza.zzir()))
      {
        localLoaderManager.destroyLoader(j);
        localLoaderManager.initLoader$71be8de6(j, this);
      }
      i += 1;
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 1;
    switch (paramInt1)
    {
    default: 
      paramInt1 = 0;
    }
    for (;;)
    {
      if (paramInt1 == 0) {
        break label66;
      }
      zziq();
      return;
      if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(getActivity()) != 0) {
        break;
      }
      paramInt1 = i;
      continue;
      if (paramInt2 != -1) {
        break;
      }
      paramInt1 = i;
    }
    label66:
    zzb(zzNv, zzNw);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    int i = 0;
    if (i < zzNy.size())
    {
      int j = zzNy.keyAt(i);
      paramActivity = zzat(j);
      if ((paramActivity != null) && (zzNy.valueAt(i)).zzNz != zzNz)) {
        getLoaderManager().restartLoader$71be8de6(j, this);
      }
      for (;;)
      {
        i += 1;
        break;
        getLoaderManager().initLoader$71be8de6(j, this);
      }
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    zzb(zzNv, zzNw);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      zzNu = paramBundle.getBoolean("resolving_error", false);
      zzNv = paramBundle.getInt("failed_client_id", -1);
      if (zzNv >= 0) {
        zzNw = new ConnectionResult(paramBundle.getInt("failed_status"), (PendingIntent)paramBundle.getParcelable("failed_resolution"));
      }
    }
  }
  
  public Loader<ConnectionResult> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new zza(getActivity(), zzNy.get(paramInt)).zzNz);
  }
  
  public void onLoaderReset(Loader<ConnectionResult> paramLoader) {}
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("resolving_error", zzNu);
    if (zzNv >= 0)
    {
      paramBundle.putInt("failed_client_id", zzNv);
      paramBundle.putInt("failed_status", zzNw.getErrorCode());
      paramBundle.putParcelable("failed_resolution", zzNw.getResolution());
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (!zzNu)
    {
      int i = 0;
      while (i < zzNy.size())
      {
        getLoaderManager().initLoader$71be8de6(zzNy.keyAt(i), this);
        i += 1;
      }
    }
  }
  
  public void zza(int paramInt, GoogleApiClient paramGoogleApiClient, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    zzx.zzb(paramGoogleApiClient, "GoogleApiClient instance cannot be null");
    if (zzNy.indexOfKey(paramInt) < 0) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zza(bool, "Already managing a GoogleApiClient with id " + paramInt);
      paramGoogleApiClient = new zzb(paramGoogleApiClient, paramOnConnectionFailedListener, null);
      zzNy.put(paramInt, paramGoogleApiClient);
      if (getActivity() != null)
      {
        android.support.v4.app.LoaderManagerImpl.DEBUG = false;
        getLoaderManager().initLoader$71be8de6(paramInt, this);
      }
      return;
    }
  }
  
  public void zza(Loader<ConnectionResult> paramLoader, ConnectionResult paramConnectionResult)
  {
    if (!paramConnectionResult.isSuccess()) {
      zza(paramLoader.getId(), paramConnectionResult);
    }
  }
  
  public GoogleApiClient zzar(int paramInt)
  {
    if (getActivity() != null)
    {
      zza localzza = zzat(paramInt);
      if (localzza != null) {
        return zzNz;
      }
    }
    return null;
  }
  
  public void zzas(int paramInt)
  {
    zzNy.remove(paramInt);
    getLoaderManager().destroyLoader(paramInt);
  }
  
  zza zzat(int paramInt)
  {
    try
    {
      zza localzza = (zza)getLoaderManager().getLoader(paramInt);
      return localzza;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new IllegalStateException("Unknown loader in SupportLifecycleFragment", localClassCastException);
    }
  }
  
  static class zza
    extends Loader<ConnectionResult>
    implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
  {
    private boolean zzNA;
    private ConnectionResult zzNB;
    public final GoogleApiClient zzNz;
    
    public zza(Context paramContext, GoogleApiClient paramGoogleApiClient)
    {
      super();
      zzNz = paramGoogleApiClient;
    }
    
    private void zze(ConnectionResult paramConnectionResult)
    {
      zzNB = paramConnectionResult;
      if ((isStarted()) && (!isAbandoned())) {
        deliverResult(paramConnectionResult);
      }
    }
    
    public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
    {
      super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      zzNz.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    
    public void onConnected(Bundle paramBundle)
    {
      zzNA = false;
      zze(ConnectionResult.zzLr);
    }
    
    public void onConnectionFailed(ConnectionResult paramConnectionResult)
    {
      zzNA = true;
      zze(paramConnectionResult);
    }
    
    public void onConnectionSuspended(int paramInt) {}
    
    protected void onReset()
    {
      zzNB = null;
      zzNA = false;
      zzNz.unregisterConnectionCallbacks(this);
      zzNz.unregisterConnectionFailedListener(this);
      zzNz.disconnect();
    }
    
    protected void onStartLoading()
    {
      super.onStartLoading();
      zzNz.registerConnectionCallbacks(this);
      zzNz.registerConnectionFailedListener(this);
      if (zzNB != null) {
        deliverResult(zzNB);
      }
      if ((!zzNz.isConnected()) && (!zzNz.isConnecting()) && (!zzNA)) {
        zzNz.connect();
      }
    }
    
    protected void onStopLoading()
    {
      zzNz.disconnect();
    }
    
    public boolean zzir()
    {
      return zzNA;
    }
  }
  
  static class zzb
  {
    public final GoogleApiClient.OnConnectionFailedListener zzNC;
    public final GoogleApiClient zzNz;
    
    private zzb(GoogleApiClient paramGoogleApiClient, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
    {
      zzNz = paramGoogleApiClient;
      zzNC = paramOnConnectionFailedListener;
    }
  }
  
  class zzc
    implements Runnable
  {
    private final int zzND;
    private final ConnectionResult zzNE;
    
    public zzc(int paramInt, ConnectionResult paramConnectionResult)
    {
      zzND = paramInt;
      zzNE = paramConnectionResult;
    }
    
    public void run()
    {
      if (zzNE.hasResolution()) {
        try
        {
          int i = getActivity().mFragments.getFragments().indexOf(zzh.this);
          zzNE.startResolutionForResult(getActivity(), (i + 1 << 16) + 1);
          return;
        }
        catch (IntentSender.SendIntentException localSendIntentException)
        {
          zzh.zza(zzh.this);
          return;
        }
      }
      if (GooglePlayServicesUtil.isUserRecoverableError(zzNE.getErrorCode()))
      {
        GooglePlayServicesUtil.showErrorDialogFragment(zzNE.getErrorCode(), getActivity(), zzh.this, 2, zzh.this);
        return;
      }
      zzh.zza(zzh.this, zzND, zzNE);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */