package com.google.android.gms.tagmanager;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.PendingResult;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class TagManager
{
  private static TagManager zzaAS;
  private final Context mContext;
  private final zza zzaAP;
  private final zzcs zzaAQ;
  private final ConcurrentMap<zzn, Boolean> zzaAR;
  private final DataLayer zzaxx;
  private final zzr zzazO;
  
  TagManager(Context paramContext, zza paramzza, DataLayer paramDataLayer, zzcs paramzzcs)
  {
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    mContext = paramContext.getApplicationContext();
    zzaAQ = paramzzcs;
    zzaAP = paramzza;
    zzaAR = new ConcurrentHashMap();
    zzaxx = paramDataLayer;
    zzaxx.zza(new DataLayer.zzb()
    {
      public void zzI(Map<String, Object> paramAnonymousMap)
      {
        paramAnonymousMap = paramAnonymousMap.get("event");
        if (paramAnonymousMap != null) {
          TagManager.zza(TagManager.this, paramAnonymousMap.toString());
        }
      }
    });
    zzaxx.zza(new zzd(mContext));
    zzazO = new zzr();
    zztT();
  }
  
  public static TagManager getInstance(Context paramContext)
  {
    try
    {
      if (zzaAS != null) {
        break label68;
      }
      if (paramContext == null)
      {
        zzbf.zzZ("TagManager.getInstance requires non-null context.");
        throw new NullPointerException();
      }
    }
    finally {}
    zzaAS = new TagManager(paramContext, new zza()new DataLayernew zzv
    {
      public final zzo zza(Context paramAnonymousContext, TagManager paramAnonymousTagManager, Looper paramAnonymousLooper, String paramAnonymousString, int paramAnonymousInt, zzr paramAnonymouszzr)
      {
        return new zzo(paramAnonymousContext, paramAnonymousTagManager, paramAnonymousLooper, paramAnonymousString, paramAnonymousInt, paramAnonymouszzr);
      }
    }, new DataLayer(new zzv(paramContext)), zzct.zztR());
    label68:
    paramContext = zzaAS;
    return paramContext;
  }
  
  private void zzdk(String paramString)
  {
    Iterator localIterator = zzaAR.keySet().iterator();
    while (localIterator.hasNext()) {
      ((zzn)localIterator.next()).zzcO(paramString);
    }
  }
  
  private void zztT()
  {
    if (Build.VERSION.SDK_INT >= 14) {
      mContext.registerComponentCallbacks(new ComponentCallbacks2()
      {
        public void onConfigurationChanged(Configuration paramAnonymousConfiguration) {}
        
        public void onLowMemory() {}
        
        public void onTrimMemory(int paramAnonymousInt)
        {
          if (paramAnonymousInt == 20) {
            dispatch();
          }
        }
      });
    }
  }
  
  public void dispatch()
  {
    zzaAQ.dispatch();
  }
  
  public DataLayer getDataLayer()
  {
    return zzaxx;
  }
  
  public PendingResult<ContainerHolder> loadContainerDefaultOnly(String paramString, int paramInt)
  {
    paramString = zzaAP.zza(mContext, this, null, paramString, paramInt, zzazO);
    paramString.zzsN();
    return paramString;
  }
  
  public PendingResult<ContainerHolder> loadContainerDefaultOnly(String paramString, int paramInt, Handler paramHandler)
  {
    paramString = zzaAP.zza(mContext, this, paramHandler.getLooper(), paramString, paramInt, zzazO);
    paramString.zzsN();
    return paramString;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferFresh(String paramString, int paramInt)
  {
    paramString = zzaAP.zza(mContext, this, null, paramString, paramInt, zzazO);
    paramString.zzsP();
    return paramString;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferFresh(String paramString, int paramInt, Handler paramHandler)
  {
    paramString = zzaAP.zza(mContext, this, paramHandler.getLooper(), paramString, paramInt, zzazO);
    paramString.zzsP();
    return paramString;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String paramString, int paramInt)
  {
    paramString = zzaAP.zza(mContext, this, null, paramString, paramInt, zzazO);
    paramString.zzsO();
    return paramString;
  }
  
  public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String paramString, int paramInt, Handler paramHandler)
  {
    paramString = zzaAP.zza(mContext, this, paramHandler.getLooper(), paramString, paramInt, zzazO);
    paramString.zzsO();
    return paramString;
  }
  
  public void setVerboseLoggingEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 2;; i = 5)
    {
      zzbf.setLogLevel(i);
      return;
    }
  }
  
  void zza(zzn paramzzn)
  {
    zzaAR.put(paramzzn, Boolean.valueOf(true));
  }
  
  boolean zzb(zzn paramzzn)
  {
    return zzaAR.remove(paramzzn) != null;
  }
  
  public PendingResult<ContainerHolder> zzc(String paramString1, int paramInt, String paramString2)
  {
    paramString1 = zzaAP.zza(mContext, this, null, paramString1, paramInt, zzazO);
    paramString1.load(paramString2);
    return paramString1;
  }
  
  boolean zzl(Uri paramUri)
  {
    for (;;)
    {
      boolean bool;
      Object localObject2;
      try
      {
        localObject1 = zzca.zztx();
        if (!((zzca)localObject1).zzl(paramUri)) {
          break label229;
        }
        paramUri = ((zzca)localObject1).getContainerId();
        int i = 4.zzaAU[localObject1.zzty().ordinal()];
        switch (i)
        {
        default: 
          bool = true;
          return bool;
        }
      }
      finally {}
      Object localObject1 = zzaAR.keySet().iterator();
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (zzn)((Iterator)localObject1).next();
        if (((zzn)localObject2).getContainerId().equals(paramUri))
        {
          ((zzn)localObject2).zzcQ(null);
          ((zzn)localObject2).refresh();
        }
      }
      else
      {
        continue;
        localObject2 = zzaAR.keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          zzn localzzn = (zzn)((Iterator)localObject2).next();
          if (localzzn.getContainerId().equals(paramUri))
          {
            localzzn.zzcQ(((zzca)localObject1).zztz());
            localzzn.refresh();
          }
          else if (localzzn.zzsK() != null)
          {
            localzzn.zzcQ(null);
            localzzn.refresh();
          }
        }
        continue;
        label229:
        bool = false;
      }
    }
  }
  
  public static abstract interface zza
  {
    public abstract zzo zza(Context paramContext, TagManager paramTagManager, Looper paramLooper, String paramString, int paramInt, zzr paramzzr);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.TagManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */