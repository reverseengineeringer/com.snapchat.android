package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient.zza;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzmh;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class zzk<T extends IInterface>
  implements Api.zza, zzl.zza
{
  public static final String[] zzPR = { "service_esmobile", "service_googleme" };
  private final Context mContext;
  final Handler mHandler;
  private final Account zzFN;
  private final List<String> zzMM;
  private final Looper zzMc;
  private final zzl zzMu;
  private final zzf zzPG;
  private final zzm zzPH;
  private zzs zzPI;
  private boolean zzPJ = false;
  private GoogleApiClient.zza zzPK;
  private T zzPL;
  private final ArrayList<zzk<T>.zzc<?>> zzPM = new ArrayList();
  private zzk<T>.zze zzPN;
  private int zzPO = 1;
  boolean zzPP = false;
  private final int zzPQ;
  private final Object zznh = new Object();
  
  @Deprecated
  public zzk(Context paramContext, Looper paramLooper, int paramInt, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    mContext = ((Context)zzx.zzl(paramContext));
    zzMc = ((Looper)zzx.zzb(paramLooper, "Looper must not be null"));
    zzPH = zzm.zzP(paramContext);
    zzMu = new zzl(paramLooper, this);
    mHandler = new zzb(paramLooper);
    zzPQ = paramInt;
    zzFN = null;
    zzMM = null;
    zzPG = new GoogleApiClient.Builder(paramContext).zzhY();
    registerConnectionCallbacks((GoogleApiClient.ConnectionCallbacks)zzx.zzl(paramConnectionCallbacks));
    registerConnectionFailedListener((GoogleApiClient.OnConnectionFailedListener)zzx.zzl(paramOnConnectionFailedListener));
  }
  
  public zzk(Context paramContext, Looper paramLooper, int paramInt, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, zzf paramzzf)
  {
    this(paramContext, paramLooper, zzm.zzP(paramContext), paramInt, paramzzf, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  protected zzk(Context paramContext, Looper paramLooper, zzm paramzzm, int paramInt, zzf paramzzf)
  {
    mContext = ((Context)zzx.zzb(paramContext, "Context must not be null"));
    zzMc = ((Looper)zzx.zzb(paramLooper, "Looper must not be null"));
    zzPH = ((zzm)zzx.zzb(paramzzm, "Supervisor must not be null"));
    zzMu = new zzl(paramLooper, this);
    mHandler = new zzb(paramLooper);
    zzPQ = paramInt;
    zzPG = ((zzf)zzx.zzl(paramzzf));
    zzFN = paramzzf.getAccount();
    zzMM = zzh(paramzzf.zziP());
  }
  
  protected zzk(Context paramContext, Looper paramLooper, zzm paramzzm, int paramInt, zzf paramzzf, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this(paramContext, paramLooper, paramzzm, paramInt, paramzzf);
    registerConnectionCallbacks((GoogleApiClient.ConnectionCallbacks)zzx.zzl(paramConnectionCallbacks));
    registerConnectionFailedListener((GoogleApiClient.OnConnectionFailedListener)zzx.zzl(paramOnConnectionFailedListener));
  }
  
  private void zza(int paramInt, T paramT)
  {
    boolean bool = true;
    int i;
    int j;
    if (paramInt == 3)
    {
      i = 1;
      if (paramT == null) {
        break label62;
      }
      j = 1;
      label17:
      if (i != j) {
        break label68;
      }
    }
    for (;;)
    {
      zzx.zzO(bool);
      synchronized (zznh)
      {
        zzPO = paramInt;
        zzPL = paramT;
        return;
      }
      i = 0;
      break;
      label62:
      j = 0;
      break label17;
      label68:
      bool = false;
    }
  }
  
  private boolean zza(int paramInt1, int paramInt2, T paramT)
  {
    synchronized (zznh)
    {
      if (zzPO != paramInt1) {
        return false;
      }
      zza(paramInt2, paramT);
      return true;
    }
  }
  
  private List<String> zzh(List<String> paramList)
  {
    List localList = zzf(paramList);
    if ((localList == null) || (localList == paramList)) {
      return localList;
    }
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext()) {
      if (!paramList.contains((String)localIterator.next())) {
        throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
      }
    }
    return localList;
  }
  
  public void connect()
  {
    zzPP = true;
    zza(2, null);
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(mContext);
    if (i != 0)
    {
      zza(1, null);
      mHandler.sendMessage(mHandler.obtainMessage(3, Integer.valueOf(i)));
    }
    do
    {
      return;
      if (zzPN != null)
      {
        new StringBuilder("Calling connect() while still connected, missing disconnect() for ").append(zzcF());
        zzPH.zzb(zzcF(), zzPN, zziZ());
      }
      zzPN = new zze();
    } while (zzPH.zza(zzcF(), zzPN, zziZ()));
    new StringBuilder("unable to connect to service: ").append(zzcF());
    mHandler.sendMessage(mHandler.obtainMessage(3, Integer.valueOf(9)));
  }
  
  public void disconnect()
  {
    zzPP = false;
    synchronized (zzPM)
    {
      int j = zzPM.size();
      int i = 0;
      while (i < j)
      {
        ((zzc)zzPM.get(i)).zzjh();
        i += 1;
      }
      zzPM.clear();
      zza(1, null);
      if (zzPN != null)
      {
        zzPH.zzb(zzcF(), zzPN, zziZ());
        zzPN = null;
      }
      return;
    }
  }
  
  public void dump(String arg1, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.append(???).println("GmsClient:");
    paramFileDescriptor = ??? + "  ";
    paramPrintWriter.append(paramFileDescriptor).append("mStartServiceAction=").println(zzcF());
    for (;;)
    {
      synchronized (zznh)
      {
        int i = zzPO;
        paramArrayOfString = zzPL;
        paramPrintWriter.append(paramFileDescriptor).append("mConnectState=");
        switch (i)
        {
        default: 
          paramPrintWriter.print("UNKNOWN");
          paramPrintWriter.append(" mService=");
          if (paramArrayOfString != null) {
            break label189;
          }
          paramPrintWriter.println("null");
          return;
        }
      }
      paramPrintWriter.print("CONNECTING");
      continue;
      paramPrintWriter.print("CONNECTED");
      continue;
      paramPrintWriter.print("DISCONNECTING");
      continue;
      paramPrintWriter.print("DISCONNECTED");
    }
    label189:
    paramPrintWriter.append(zzcG()).append("@").println(Integer.toHexString(System.identityHashCode(paramArrayOfString.asBinder())));
  }
  
  public final Context getContext()
  {
    return mContext;
  }
  
  public final Looper getLooper()
  {
    return zzMc;
  }
  
  public boolean isConnected()
  {
    for (;;)
    {
      synchronized (zznh)
      {
        if (zzPO == 3)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public boolean isConnecting()
  {
    for (;;)
    {
      synchronized (zznh)
      {
        if (zzPO == 2)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    zzMu.registerConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    zzMu.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  protected void zza(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    mHandler.sendMessage(mHandler.obtainMessage(1, new zzf(paramInt, paramIBinder, paramBundle)));
  }
  
  public void zza(GoogleApiClient.zza paramzza)
  {
    zzPK = ((GoogleApiClient.zza)zzx.zzb(paramzza, "Must provide a non-null ConnectionStatusReportCallbacks"));
    zzPJ = true;
  }
  
  @Deprecated
  public final void zza(zzk<T>.zzc<?> paramzzk)
  {
    synchronized (zzPM)
    {
      zzPM.add(paramzzk);
      mHandler.sendMessage(mHandler.obtainMessage(2, paramzzk));
      return;
    }
  }
  
  public void zza(zzq paramzzq)
  {
    Bundle localBundle = zzjc();
    if (zzMM == null) {}
    for (Scope[] arrayOfScope = null;; arrayOfScope = zzmh.zzi(zzMM))
    {
      paramzzq = new zzae(paramzzq, arrayOfScope, mContext.getPackageName(), localBundle);
      try
      {
        zzPI.zza(new zzd(this), paramzzq);
        return;
      }
      catch (DeadObjectException paramzzq)
      {
        zzaI(1);
        return;
      }
      catch (RemoteException paramzzq) {}
    }
  }
  
  public void zzaI(int paramInt)
  {
    mHandler.sendMessage(mHandler.obtainMessage(4, Integer.valueOf(paramInt)));
  }
  
  protected void zzb(int paramInt, Bundle paramBundle)
  {
    mHandler.sendMessage(mHandler.obtainMessage(5, new zzh(paramInt, paramBundle)));
  }
  
  public void zzb(zzq paramzzq)
  {
    try
    {
      Object localObject = zzhq();
      localObject = new zzi(zzPQ).zzbg(mContext.getPackageName()).zzi((Bundle)localObject);
      if (zzMM != null) {
        ((zzi)localObject).zza(zzmh.zzi(zzMM));
      }
      if (zzhc()) {
        ((zzi)localObject).zzb(zziN()).zzd(paramzzq);
      }
      for (;;)
      {
        zzPI.zza(new zzd(this), (zzi)localObject);
        return;
        if (zzjd()) {
          ((zzi)localObject).zzb(zzFN);
        }
      }
      return;
    }
    catch (DeadObjectException paramzzq)
    {
      zzaI(1);
      return;
    }
    catch (RemoteException paramzzq) {}
  }
  
  public abstract String zzcF();
  
  public abstract String zzcG();
  
  protected List<String> zzf(List<String> paramList)
  {
    return paramList;
  }
  
  public final void zzfc()
  {
    if (!isConnected()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public boolean zzhc()
  {
    return false;
  }
  
  public Bundle zzhp()
  {
    return null;
  }
  
  public Bundle zzhq()
  {
    return new Bundle();
  }
  
  public final Account zziN()
  {
    if (zzFN != null) {
      return zzFN;
    }
    return new Account("<<default account>>", "com.google");
  }
  
  public final List<String> zziP()
  {
    return zzMM;
  }
  
  protected String zziZ()
  {
    return zzPG.zziS();
  }
  
  public boolean zzin()
  {
    return zzPP;
  }
  
  protected final zzf zzja()
  {
    return zzPG;
  }
  
  public final T zzjb()
  {
    synchronized (zznh)
    {
      if (zzPO == 4) {
        throw new DeadObjectException();
      }
    }
    zzfc();
    if (zzPL != null) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zza(bool, "Client is connected but service is null");
      IInterface localIInterface = zzPL;
      return localIInterface;
    }
  }
  
  protected Bundle zzjc()
  {
    return null;
  }
  
  public boolean zzjd()
  {
    return false;
  }
  
  public abstract T zzp(IBinder paramIBinder);
  
  abstract class zza
    extends zzk<T>.zzc<Boolean>
  {
    public final int statusCode;
    public final Bundle zzPS;
    
    protected zza(int paramInt, Bundle paramBundle)
    {
      super(Boolean.valueOf(true));
      statusCode = paramInt;
      zzPS = paramBundle;
    }
    
    protected void zzc(Boolean paramBoolean)
    {
      if (paramBoolean == null)
      {
        zzk.zza(zzk.this, 1, null);
        return;
      }
      switch (statusCode)
      {
      default: 
        if (zzPS == null) {
          break;
        }
      }
      for (paramBoolean = (PendingIntent)zzPS.getParcelable("pendingIntent");; paramBoolean = null)
      {
        if (zzk.zzf(zzk.this) != null)
        {
          zzk.zzg(zzk.this).zzb(zzcF(), zzk.zzf(zzk.this), zziZ());
          zzk.zza(zzk.this, null);
        }
        zzk.zza(zzk.this, 1, null);
        zzf(new ConnectionResult(statusCode, paramBoolean));
        return;
        if (zzje()) {
          break;
        }
        if (zzk.zzf(zzk.this) != null)
        {
          zzk.zzg(zzk.this).zzb(zzcF(), zzk.zzf(zzk.this), zziZ());
          zzk.zza(zzk.this, null);
        }
        zzk.zza(zzk.this, 1, null);
        zzf(new ConnectionResult(8, null));
        return;
        zzk.zza(zzk.this, 1, null);
        throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
      }
    }
    
    protected void zzf(ConnectionResult paramConnectionResult)
    {
      zzk.zza(zzk.this).zzg(paramConnectionResult);
    }
    
    protected abstract boolean zzje();
    
    protected void zzjf() {}
  }
  
  final class zzb
    extends Handler
  {
    public zzb(Looper paramLooper)
    {
      super();
    }
    
    public final void handleMessage(Message paramMessage)
    {
      if (((what == 1) || (what == 5) || (what == 6)) && (!isConnecting()))
      {
        paramMessage = (zzk.zzc)obj;
        paramMessage.zzjf();
        paramMessage.unregister();
        return;
      }
      if (what == 3)
      {
        zzk.zza(zzk.this).zzg(new ConnectionResult(((Integer)obj).intValue(), null));
        return;
      }
      if (what == 4)
      {
        zzk.zza(zzk.this, 4, null);
        zzk.zza(zzk.this).zzaJ(((Integer)obj).intValue());
        zzk.zza(zzk.this, 4, 1, null);
        return;
      }
      if ((what == 2) && (!isConnected()))
      {
        paramMessage = (zzk.zzc)obj;
        paramMessage.zzjf();
        paramMessage.unregister();
        return;
      }
      if ((what == 2) || (what == 1) || (what == 5) || (what == 6))
      {
        ((zzk.zzc)obj).zzjg();
        return;
      }
      Log.wtf("GmsClient", "Don't know how to handle this message.");
    }
  }
  
  public abstract class zzc<TListener>
  {
    private TListener mListener;
    private boolean zzPU;
    
    public zzc()
    {
      Object localObject;
      mListener = localObject;
      zzPU = false;
    }
    
    public void unregister()
    {
      zzjh();
      synchronized (zzk.zzb(zzk.this))
      {
        zzk.zzb(zzk.this).remove(this);
        return;
      }
    }
    
    public abstract void zzi(TListener paramTListener);
    
    public abstract void zzjf();
    
    /* Error */
    public void zzjg()
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 24	com/google/android/gms/common/internal/zzk$zzc:mListener	Ljava/lang/Object;
      //   6: astore_1
      //   7: aload_0
      //   8: getfield 26	com/google/android/gms/common/internal/zzk$zzc:zzPU	Z
      //   11: ifeq +22 -> 33
      //   14: new 51	java/lang/StringBuilder
      //   17: dup
      //   18: ldc 53
      //   20: invokespecial 56	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   23: aload_0
      //   24: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   27: ldc 62
      //   29: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   32: pop
      //   33: aload_0
      //   34: monitorexit
      //   35: aload_1
      //   36: ifnull +34 -> 70
      //   39: aload_0
      //   40: aload_1
      //   41: invokevirtual 67	com/google/android/gms/common/internal/zzk$zzc:zzi	(Ljava/lang/Object;)V
      //   44: aload_0
      //   45: monitorenter
      //   46: aload_0
      //   47: iconst_1
      //   48: putfield 26	com/google/android/gms/common/internal/zzk$zzc:zzPU	Z
      //   51: aload_0
      //   52: monitorexit
      //   53: aload_0
      //   54: invokevirtual 69	com/google/android/gms/common/internal/zzk$zzc:unregister	()V
      //   57: return
      //   58: astore_1
      //   59: aload_0
      //   60: monitorexit
      //   61: aload_1
      //   62: athrow
      //   63: astore_1
      //   64: aload_0
      //   65: invokevirtual 71	com/google/android/gms/common/internal/zzk$zzc:zzjf	()V
      //   68: aload_1
      //   69: athrow
      //   70: aload_0
      //   71: invokevirtual 71	com/google/android/gms/common/internal/zzk$zzc:zzjf	()V
      //   74: goto -30 -> 44
      //   77: astore_1
      //   78: aload_0
      //   79: monitorexit
      //   80: aload_1
      //   81: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	82	0	this	zzc
      //   6	35	1	localObject1	Object
      //   58	4	1	localObject2	Object
      //   63	6	1	localRuntimeException	RuntimeException
      //   77	4	1	localObject3	Object
      // Exception table:
      //   from	to	target	type
      //   2	33	58	finally
      //   33	35	58	finally
      //   59	61	58	finally
      //   39	44	63	java/lang/RuntimeException
      //   46	53	77	finally
      //   78	80	77	finally
    }
    
    public void zzjh()
    {
      try
      {
        mListener = null;
        return;
      }
      finally {}
    }
  }
  
  public static final class zzd
    extends zzr.zza
  {
    private zzk zzPV;
    
    public zzd(zzk paramzzk)
    {
      zzPV = paramzzk;
    }
    
    private void zzji()
    {
      zzPV = null;
    }
    
    public final void zzb(int paramInt, IBinder paramIBinder, Bundle paramBundle)
    {
      zzx.zzb(zzPV, "onPostInitComplete can be called only once per call to getRemoteService");
      zzPV.zza(paramInt, paramIBinder, paramBundle);
      zzji();
    }
    
    public final void zzc(int paramInt, Bundle paramBundle)
    {
      zzx.zzb(zzPV, "onAccountValidationComplete can be called only once per call to validateAccount");
      zzPV.zzb(paramInt, paramBundle);
      zzji();
    }
  }
  
  public final class zze
    implements ServiceConnection
  {
    public zze() {}
    
    public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      zzx.zzb(paramIBinder, "Expecting a valid IBinder");
      zzk.zza(zzk.this, zzs.zza.zzU(paramIBinder));
      mHandler.sendMessage(mHandler.obtainMessage(6, new zzk.zzg(zzk.this)));
    }
    
    public final void onServiceDisconnected(ComponentName paramComponentName)
    {
      mHandler.sendMessage(mHandler.obtainMessage(4, Integer.valueOf(1)));
    }
  }
  
  public final class zzf
    extends zzk<T>.zza
  {
    public final IBinder zzPW;
    
    public zzf(int paramInt, IBinder paramIBinder, Bundle paramBundle)
    {
      super(paramInt, paramBundle);
      zzPW = paramIBinder;
    }
    
    protected final boolean zzje()
    {
      try
      {
        Object localObject = zzPW.getInterfaceDescriptor();
        if (!zzcG().equals(localObject)) {}
        do
        {
          return false;
          localObject = zzp(zzPW);
        } while ((localObject == null) || (!zzk.zza(zzk.this, 2, 3, (IInterface)localObject)));
        zzk.zza(zzk.this).zzfe();
        GooglePlayServicesUtil.zzL(zzk.zze(zzk.this));
        return true;
      }
      catch (RemoteException localRemoteException) {}
      return false;
    }
  }
  
  public final class zzg
    extends zzk<T>.zza
  {
    public zzg()
    {
      super(0, null);
    }
    
    protected final boolean zzje()
    {
      if (zzk.zzc(zzk.this))
      {
        if (zzk.zzd(zzk.this) != null) {}
        for (boolean bool = true;; bool = false)
        {
          zzx.zza(bool, "mConnectionProgressReportCallbacks should not be null if mReportProgress");
          zzk.zzd(zzk.this).zzia();
          return true;
        }
      }
      zzb(null);
      return true;
    }
  }
  
  public final class zzh
    extends zzk<T>.zza
  {
    public zzh(int paramInt, Bundle paramBundle)
    {
      super(paramInt, paramBundle);
    }
    
    protected final boolean zzje()
    {
      if ((zzk.zzc(zzk.this)) && (zzk.zzd(zzk.this) != null)) {}
      for (boolean bool = true;; bool = false)
      {
        zzx.zza(bool, "PostValidationCallback should not happen when mReportProgress is false ormConnectionProgressReportCallbacks is null");
        zzk.zzd(zzk.this).zzib();
        return true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */