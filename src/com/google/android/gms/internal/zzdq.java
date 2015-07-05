package com.google.android.gms.internal;

import android.os.RemoteException;
import bw;
import bz;
import ca;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.Map;

@zzgi
public final class zzdq
  extends zzdr.zza
{
  private Map<Class<? extends NetworkExtras>, NetworkExtras> zzsP;
  
  private <NETWORK_EXTRAS extends ca, SERVER_PARAMETERS extends bz> zzds zzD(String paramString)
  {
    try
    {
      Object localObject = Class.forName(paramString, false, zzdq.class.getClassLoader());
      if (bw.class.isAssignableFrom((Class)localObject))
      {
        localObject = (bw)((Class)localObject).newInstance();
        return new zzdx((bw)localObject, (ca)zzsP.get(((bw)localObject).a()));
      }
      if (MediationAdapter.class.isAssignableFrom((Class)localObject)) {
        return new zzdv((MediationAdapter)((Class)localObject).newInstance());
      }
      zzhx.zzac("Could not instantiate mediation adapter: " + paramString + " (not a valid adapter).");
      throw new RemoteException();
    }
    catch (Throwable localThrowable)
    {
      zzhx.zzac("Could not instantiate mediation adapter: " + paramString + ". " + localThrowable.getMessage());
      throw new RemoteException();
    }
  }
  
  public final zzds zzB(String paramString)
  {
    return zzD(paramString);
  }
  
  public final boolean zzC(String paramString)
  {
    try
    {
      boolean bool = CustomEvent.class.isAssignableFrom(Class.forName(paramString, false, zzdq.class.getClassLoader()));
      return bool;
    }
    catch (Throwable localThrowable)
    {
      zzhx.zzac("Could not load custom event implementation class: " + paramString + ", assuming old implementation.");
    }
    return false;
  }
  
  public final void zze(Map<Class<? extends NetworkExtras>, NetworkExtras> paramMap)
  {
    zzsP = paramMap;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */