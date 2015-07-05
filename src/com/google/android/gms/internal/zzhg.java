package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

@zzgi
public class zzhg
{
  private Context mContext;
  private zzae zzlG;
  private boolean zzmE = false;
  private final Object zznh = new Object();
  private zzhy zznl;
  private zzam zzol = null;
  private zzal zzom = null;
  private final zzgh zzon = null;
  private boolean zzxO = true;
  private boolean zzxP = true;
  private final String zzyL;
  private final zzhh zzyM;
  private BigInteger zzyN = BigInteger.ONE;
  private final HashSet<zzhf> zzyO = new HashSet();
  private final HashMap<String, zzhj> zzyP = new HashMap();
  private boolean zzyQ = false;
  private int zzyR = 0;
  private zzcc zzyS = null;
  private zzan zzyT = null;
  private final LinkedList<Thread> zzyU = new LinkedList();
  private Boolean zzyV = null;
  private String zzyW;
  
  public zzhg(zzho paramzzho)
  {
    zzyL = paramzzho.zzeu();
    zzyM = new zzhh(zzyL);
  }
  
  public String getSessionId()
  {
    return zzyL;
  }
  
  public Bundle zza(Context paramContext, zzhi paramzzhi, String paramString)
  {
    Bundle localBundle;
    synchronized (zznh)
    {
      localBundle = new Bundle();
      localBundle.putBundle("app", zzyM.zzc(paramContext, paramString));
      paramContext = new Bundle();
      paramString = zzyP.keySet().iterator();
      if (paramString.hasNext())
      {
        String str = (String)paramString.next();
        paramContext.putBundle(str, ((zzhj)zzyP.get(str)).toBundle());
      }
    }
    localBundle.putBundle("slots", paramContext);
    paramContext = new ArrayList();
    paramString = zzyO.iterator();
    while (paramString.hasNext()) {
      paramContext.add(((zzhf)paramString.next()).toBundle());
    }
    localBundle.putParcelableArrayList("ads", paramContext);
    paramzzhi.zza(zzyO);
    zzyO.clear();
    return localBundle;
  }
  
  public void zza(Context paramContext, boolean paramBoolean)
  {
    synchronized (zznh)
    {
      if (paramBoolean != zzxO)
      {
        zzxO = paramBoolean;
        zzhm.zza(paramContext, paramBoolean);
      }
      return;
    }
  }
  
  public void zza(zzhf paramzzhf)
  {
    synchronized (zznh)
    {
      zzyO.add(paramzzhf);
      return;
    }
  }
  
  public void zza(String paramString, zzhj paramzzhj)
  {
    synchronized (zznh)
    {
      zzyP.put(paramString, paramzzhj);
      return;
    }
  }
  
  public void zza(final Thread paramThread)
  {
    zzca.zza(new Runnable()
    {
      public void run()
      {
        zzgh.zza(zzhg.zza(zzhg.this), paramThread, zzhg.zzb(zzhg.this));
      }
    });
  }
  
  public void zzb(Context paramContext, zzhy paramzzhy)
  {
    synchronized (zznh)
    {
      if (!zzmE)
      {
        mContext = paramContext.getApplicationContext();
        zznl = paramzzhy;
        zzxO = zzhm.zzr(paramContext);
        zzyR = zzhm.zzs(paramContext);
        zza(Thread.currentThread());
        zzyW = zzab.zzaM().zze(paramContext, zzzH);
        zzlG = new zzae(paramContext.getApplicationContext(), zznl, new zzdf(paramContext.getApplicationContext(), zznl, (String)zzca.zzql.get()));
        zzen();
        zzmE = true;
      }
      return;
    }
  }
  
  public void zzb(Boolean paramBoolean)
  {
    synchronized (zznh)
    {
      zzyV = paramBoolean;
      return;
    }
  }
  
  public void zzb(HashSet<zzhf> paramHashSet)
  {
    synchronized (zznh)
    {
      zzyO.addAll(paramHashSet);
      return;
    }
  }
  
  public String zzc(int paramInt, String paramString)
  {
    if (zznl.zzzK) {}
    for (Resources localResources = mContext.getResources(); localResources == null; localResources = GooglePlayServicesUtil.getRemoteResource(mContext)) {
      return paramString;
    }
    return localResources.getString(paramInt);
  }
  
  public void zze(Throwable paramThrowable)
  {
    new zzgh(mContext, zznl, null, null).zzb(paramThrowable);
  }
  
  public boolean zzed()
  {
    synchronized (zznh)
    {
      boolean bool = zzxP;
      return bool;
    }
  }
  
  public String zzee()
  {
    synchronized (zznh)
    {
      String str = zzyN.toString();
      zzyN = zzyN.add(BigInteger.ONE);
      return str;
    }
  }
  
  public zzhh zzef()
  {
    synchronized (zznh)
    {
      zzhh localzzhh = zzyM;
      return localzzhh;
    }
  }
  
  public zzcc zzeg()
  {
    synchronized (zznh)
    {
      zzcc localzzcc = zzyS;
      return localzzcc;
    }
  }
  
  public boolean zzeh()
  {
    synchronized (zznh)
    {
      boolean bool = zzyQ;
      zzyQ = true;
      return bool;
    }
  }
  
  public boolean zzei()
  {
    synchronized (zznh)
    {
      boolean bool = zzxO;
      return bool;
    }
  }
  
  public String zzej()
  {
    synchronized (zznh)
    {
      String str = zzyW;
      return str;
    }
  }
  
  public Boolean zzek()
  {
    synchronized (zznh)
    {
      Boolean localBoolean = zzyV;
      return localBoolean;
    }
  }
  
  public zzae zzel()
  {
    return zzlG;
  }
  
  public boolean zzem()
  {
    synchronized (zznh)
    {
      if (zzyR < ((Integer)zzca.zzqN.get()).intValue())
      {
        zzyR = ((Integer)zzca.zzqN.get()).intValue();
        zzhm.zza(mContext, zzyR);
        return true;
      }
      return false;
    }
  }
  
  void zzen()
  {
    zzca.zza(new Runnable()
    {
      public void run()
      {
        zzcb localzzcb = new zzcb();
        localzzcb.zzb(zzhg.zza(zzhg.this), zzbzzzH);
        try
        {
          zzhg.zza(zzhg.this, zzab.zzaR().zza(localzzcb));
          return;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          zzhx.zzac("Cannot initialize CSI reporter." + localIllegalArgumentException.getMessage());
        }
      }
    });
  }
  
  public zzan zzo(Context paramContext)
  {
    if ((!((Boolean)zzca.zzqB.get()).booleanValue()) || (!zzme.zzkg()) || (zzed())) {
      return null;
    }
    synchronized (zznh)
    {
      if (zzol == null)
      {
        if (!(paramContext instanceof Activity)) {
          return null;
        }
        zzol = new zzam((Application)paramContext.getApplicationContext(), (Activity)paramContext);
      }
      if (zzom == null) {
        zzom = new zzal();
      }
      if (zzyT == null) {
        zzyT = new zzan(zzol, zzom, new zzgh(mContext, zznl, null, null));
      }
      zzyT.zzbt();
      paramContext = zzyT;
      return paramContext;
    }
  }
  
  public void zzz(boolean paramBoolean)
  {
    synchronized (zznh)
    {
      zzxP = paramBoolean;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */