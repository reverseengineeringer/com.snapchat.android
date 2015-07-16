package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzc.zzf;
import com.google.android.gms.internal.zzc.zzi;
import com.google.android.gms.internal.zzc.zzj;
import com.google.android.gms.internal.zzd.zza;
import com.google.android.gms.internal.zzvl;
import com.google.android.gms.internal.zzvl.zzc;
import com.google.android.gms.internal.zzvl.zzg;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Container
{
  private final Context mContext;
  private Map<String, FunctionCallTagCallback> zzaxA = new HashMap();
  private volatile long zzaxB;
  private volatile String zzaxC = "";
  private final String zzaxw;
  private final DataLayer zzaxx;
  private zzco zzaxy;
  private Map<String, FunctionCallMacroCallback> zzaxz = new HashMap();
  
  Container(Context paramContext, DataLayer paramDataLayer, String paramString, long paramLong, zzc.zzj paramzzj)
  {
    mContext = paramContext;
    zzaxx = paramDataLayer;
    zzaxw = paramString;
    zzaxB = paramLong;
    zza(zzgs);
    if (zzgr != null) {
      zza(zzgr);
    }
  }
  
  Container(Context paramContext, DataLayer paramDataLayer, String paramString, long paramLong, zzvl.zzc paramzzc)
  {
    mContext = paramContext;
    zzaxx = paramDataLayer;
    zzaxw = paramString;
    zzaxB = paramLong;
    zza(paramzzc);
  }
  
  private void zza(zzc.zzf paramzzf)
  {
    if (paramzzf == null) {
      throw new NullPointerException();
    }
    try
    {
      zzvl.zzc localzzc = zzvl.zzb(paramzzf);
      zza(localzzc);
      return;
    }
    catch (zzvl.zzg localzzg)
    {
      zzbf.zzZ("Not loading resource: " + paramzzf + " because it is invalid: " + localzzg.toString());
    }
  }
  
  private void zza(zzvl.zzc paramzzc)
  {
    zzaxC = paramzzc.getVersion();
    zzag localzzag = zzcP(zzaxC);
    zza(new zzco(mContext, paramzzc, zzaxx, new zza(null), new zzb(null), localzzag));
  }
  
  private void zza(zzco paramzzco)
  {
    try
    {
      zzaxy = paramzzco;
      return;
    }
    finally
    {
      paramzzco = finally;
      throw paramzzco;
    }
  }
  
  private void zza(zzc.zzi[] paramArrayOfzzi)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramArrayOfzzi.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(paramArrayOfzzi[i]);
      i += 1;
    }
    zzsJ().zzu(localArrayList);
  }
  
  private zzco zzsJ()
  {
    try
    {
      zzco localzzco = zzaxy;
      return localzzco;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean getBoolean(String paramString)
  {
    zzco localzzco = zzsJ();
    if (localzzco == null)
    {
      zzbf.zzZ("getBoolean called for closed container.");
      return zzde.zzuc().booleanValue();
    }
    try
    {
      boolean bool = zzde.zzk((zzd.zza)localzzco.zzdi(paramString).getObject()).booleanValue();
      return bool;
    }
    catch (Exception paramString)
    {
      zzbf.zzZ("Calling getBoolean() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return zzde.zzuc().booleanValue();
  }
  
  public String getContainerId()
  {
    return zzaxw;
  }
  
  public double getDouble(String paramString)
  {
    zzco localzzco = zzsJ();
    if (localzzco == null)
    {
      zzbf.zzZ("getDouble called for closed container.");
      return zzde.zzub().doubleValue();
    }
    try
    {
      double d = zzde.zzj((zzd.zza)localzzco.zzdi(paramString).getObject()).doubleValue();
      return d;
    }
    catch (Exception paramString)
    {
      zzbf.zzZ("Calling getDouble() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return zzde.zzub().doubleValue();
  }
  
  public long getLastRefreshTime()
  {
    return zzaxB;
  }
  
  public long getLong(String paramString)
  {
    zzco localzzco = zzsJ();
    if (localzzco == null)
    {
      zzbf.zzZ("getLong called for closed container.");
      return zzde.zzua().longValue();
    }
    try
    {
      long l = zzde.zzi((zzd.zza)localzzco.zzdi(paramString).getObject()).longValue();
      return l;
    }
    catch (Exception paramString)
    {
      zzbf.zzZ("Calling getLong() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return zzde.zzua().longValue();
  }
  
  public String getString(String paramString)
  {
    zzco localzzco = zzsJ();
    if (localzzco == null)
    {
      zzbf.zzZ("getString called for closed container.");
      return zzde.zzue();
    }
    try
    {
      paramString = zzde.zzg((zzd.zza)localzzco.zzdi(paramString).getObject());
      return paramString;
    }
    catch (Exception paramString)
    {
      zzbf.zzZ("Calling getString() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return zzde.zzue();
  }
  
  public boolean isDefault()
  {
    return getLastRefreshTime() == 0L;
  }
  
  public void registerFunctionCallMacroCallback(String paramString, FunctionCallMacroCallback paramFunctionCallMacroCallback)
  {
    if (paramFunctionCallMacroCallback == null) {
      throw new NullPointerException("Macro handler must be non-null");
    }
    synchronized (zzaxz)
    {
      zzaxz.put(paramString, paramFunctionCallMacroCallback);
      return;
    }
  }
  
  public void registerFunctionCallTagCallback(String paramString, FunctionCallTagCallback paramFunctionCallTagCallback)
  {
    if (paramFunctionCallTagCallback == null) {
      throw new NullPointerException("Tag callback must be non-null");
    }
    synchronized (zzaxA)
    {
      zzaxA.put(paramString, paramFunctionCallTagCallback);
      return;
    }
  }
  
  void release()
  {
    zzaxy = null;
  }
  
  public void unregisterFunctionCallMacroCallback(String paramString)
  {
    synchronized (zzaxz)
    {
      zzaxz.remove(paramString);
      return;
    }
  }
  
  public void unregisterFunctionCallTagCallback(String paramString)
  {
    synchronized (zzaxA)
    {
      zzaxA.remove(paramString);
      return;
    }
  }
  
  FunctionCallMacroCallback zzcM(String paramString)
  {
    synchronized (zzaxz)
    {
      paramString = (FunctionCallMacroCallback)zzaxz.get(paramString);
      return paramString;
    }
  }
  
  FunctionCallTagCallback zzcN(String paramString)
  {
    synchronized (zzaxA)
    {
      paramString = (FunctionCallTagCallback)zzaxA.get(paramString);
      return paramString;
    }
  }
  
  void zzcO(String paramString)
  {
    zzsJ().zzcO(paramString);
  }
  
  zzag zzcP(String paramString)
  {
    zzca.zztx().zzty();
    paramString = zzca.zza.zzazD;
    return new zzbn();
  }
  
  String zzsI()
  {
    return zzaxC;
  }
  
  public static abstract interface FunctionCallMacroCallback
  {
    public abstract Object getValue(String paramString, Map<String, Object> paramMap);
  }
  
  public static abstract interface FunctionCallTagCallback
  {
    public abstract void execute(String paramString, Map<String, Object> paramMap);
  }
  
  class zza
    implements zzs.zza
  {
    private zza() {}
    
    public Object zzc(String paramString, Map<String, Object> paramMap)
    {
      Container.FunctionCallMacroCallback localFunctionCallMacroCallback = zzcM(paramString);
      if (localFunctionCallMacroCallback == null) {
        return null;
      }
      return localFunctionCallMacroCallback.getValue(paramString, paramMap);
    }
  }
  
  class zzb
    implements zzs.zza
  {
    private zzb() {}
    
    public Object zzc(String paramString, Map<String, Object> paramMap)
    {
      Container.FunctionCallTagCallback localFunctionCallTagCallback = zzcN(paramString);
      if (localFunctionCallTagCallback != null) {
        localFunctionCallTagCallback.execute(paramString, paramMap);
      }
      return zzde.zzue();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.Container
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */