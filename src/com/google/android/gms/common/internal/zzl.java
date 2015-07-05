package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import java.util.ArrayList;
import java.util.Iterator;

public final class zzl
  implements Handler.Callback
{
  private final Handler mHandler;
  private final zza zzPX;
  private final ArrayList<GoogleApiClient.ConnectionCallbacks> zzPY = new ArrayList();
  final ArrayList<GoogleApiClient.ConnectionCallbacks> zzPZ = new ArrayList();
  private boolean zzQa = false;
  private final ArrayList<GoogleApiClient.OnConnectionFailedListener> zzQb = new ArrayList();
  
  public zzl(Looper paramLooper, zza paramzza)
  {
    zzPX = paramzza;
    mHandler = new Handler(paramLooper, this);
  }
  
  public final boolean handleMessage(Message arg1)
  {
    if (what == 1)
    {
      GoogleApiClient.ConnectionCallbacks localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)obj;
      synchronized (zzPY)
      {
        if ((zzPX.zzin()) && (zzPX.isConnected()) && (zzPY.contains(localConnectionCallbacks))) {
          localConnectionCallbacks.onConnected(zzPX.zzhp());
        }
        return true;
      }
    }
    Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
    return false;
  }
  
  public final boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    zzx.zzl(paramConnectionCallbacks);
    synchronized (zzPY)
    {
      boolean bool = zzPY.contains(paramConnectionCallbacks);
      return bool;
    }
  }
  
  public final boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    zzx.zzl(paramOnConnectionFailedListener);
    synchronized (zzQb)
    {
      boolean bool = zzQb.contains(paramOnConnectionFailedListener);
      return bool;
    }
  }
  
  public final void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    zzx.zzl(paramConnectionCallbacks);
    synchronized (zzPY)
    {
      if (zzPY.contains(paramConnectionCallbacks))
      {
        new StringBuilder("registerConnectionCallbacks(): listener ").append(paramConnectionCallbacks).append(" is already registered");
        if (zzPX.isConnected()) {
          mHandler.sendMessage(mHandler.obtainMessage(1, paramConnectionCallbacks));
        }
        return;
      }
      zzPY.add(paramConnectionCallbacks);
    }
  }
  
  public final void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    zzx.zzl(paramOnConnectionFailedListener);
    synchronized (zzQb)
    {
      if (zzQb.contains(paramOnConnectionFailedListener))
      {
        new StringBuilder("registerConnectionFailedListener(): listener ").append(paramOnConnectionFailedListener).append(" is already registered");
        return;
      }
      zzQb.add(paramOnConnectionFailedListener);
    }
  }
  
  public final void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    zzx.zzl(paramConnectionCallbacks);
    synchronized (zzPY)
    {
      if (!zzPY.remove(paramConnectionCallbacks)) {
        new StringBuilder("unregisterConnectionCallbacks(): listener ").append(paramConnectionCallbacks).append(" not found");
      }
      while (!zzQa) {
        return;
      }
      zzPZ.add(paramConnectionCallbacks);
    }
  }
  
  public final void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    zzx.zzl(paramOnConnectionFailedListener);
    synchronized (zzQb)
    {
      if (!zzQb.remove(paramOnConnectionFailedListener)) {
        new StringBuilder("unregisterConnectionFailedListener(): listener ").append(paramOnConnectionFailedListener).append(" not found");
      }
      return;
    }
  }
  
  public final void zzaJ(int paramInt)
  {
    mHandler.removeMessages(1);
    synchronized (zzPY)
    {
      zzQa = true;
      Iterator localIterator = new ArrayList(zzPY).iterator();
      while (localIterator.hasNext())
      {
        GoogleApiClient.ConnectionCallbacks localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)localIterator.next();
        if (zzPX.zzin()) {
          if (zzPY.contains(localConnectionCallbacks)) {
            localConnectionCallbacks.onConnectionSuspended(paramInt);
          }
        }
      }
    }
    zzPZ.clear();
    zzQa = false;
  }
  
  protected final void zzfe()
  {
    synchronized (zzPY)
    {
      zzj(zzPX.zzhp());
      return;
    }
  }
  
  public final void zzg(ConnectionResult paramConnectionResult)
  {
    mHandler.removeMessages(1);
    synchronized (zzQb)
    {
      Iterator localIterator = new ArrayList(zzQb).iterator();
      while (localIterator.hasNext())
      {
        GoogleApiClient.OnConnectionFailedListener localOnConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener)localIterator.next();
        if (!zzPX.zzin()) {
          return;
        }
        if (zzQb.contains(localOnConnectionFailedListener)) {
          localOnConnectionFailedListener.onConnectionFailed(paramConnectionResult);
        }
      }
    }
  }
  
  public final void zzj(Bundle paramBundle)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (zzPY)
      {
        if (!zzQa)
        {
          bool1 = true;
          zzx.zzN(bool1);
          mHandler.removeMessages(1);
          zzQa = true;
          if (zzPZ.size() != 0) {
            break label149;
          }
          bool1 = bool2;
          zzx.zzN(bool1);
          Iterator localIterator = new ArrayList(zzPY).iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          GoogleApiClient.ConnectionCallbacks localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)localIterator.next();
          if ((!zzPX.zzin()) || (!zzPX.isConnected())) {
            break;
          }
          if (zzPZ.contains(localConnectionCallbacks)) {
            continue;
          }
          localConnectionCallbacks.onConnected(paramBundle);
        }
      }
      boolean bool1 = false;
      continue;
      label149:
      bool1 = false;
    }
    zzPZ.clear();
    zzQa = false;
  }
  
  public static abstract interface zza
  {
    public abstract boolean isConnected();
    
    public abstract Bundle zzhp();
    
    public abstract boolean zzin();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */