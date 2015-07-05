package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.content.Loader;
import com.google.android.gms.common.ConnectionResult;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class zzh$zza
  extends Loader<ConnectionResult>
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  private boolean zzNA;
  private ConnectionResult zzNB;
  public final GoogleApiClient zzNz;
  
  public zzh$zza(Context paramContext, GoogleApiClient paramGoogleApiClient)
  {
    super(paramContext);
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

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzh.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */