package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzc.zzi;
import com.google.android.gms.internal.zzd.zza;
import com.google.android.gms.internal.zzvl;
import com.google.android.gms.internal.zzvl.zza;
import com.google.android.gms.internal.zzvl.zzc;
import com.google.android.gms.internal.zzvl.zze;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class zzco
{
  private static final zzbv<zzd.zza> zzazW = new zzbv(zzde.zzuf(), true);
  private final Map<String, zzaj> zzaAa;
  private final Map<String, zzaj> zzaAb;
  private final zzk<zzvl.zza, zzbv<zzd.zza>> zzaAc;
  private final zzk<String, zzb> zzaAd;
  private final Set<zzvl.zze> zzaAe;
  private final Map<String, zzc> zzaAf;
  private volatile String zzaAg;
  private int zzaAh;
  private final DataLayer zzaxx;
  private final zzvl.zzc zzazX;
  private final zzag zzazY;
  private final Map<String, zzaj> zzazZ;
  
  public zzco(Context paramContext, zzvl.zzc paramzzc, DataLayer paramDataLayer, zzs.zza paramzza1, zzs.zza paramzza2, zzag paramzzag)
  {
    if (paramzzc == null) {
      throw new NullPointerException("resource cannot be null");
    }
    zzazX = paramzzc;
    zzaAe = new HashSet(paramzzc.zzuy());
    zzaxx = paramDataLayer;
    zzazY = paramzzag;
    paramzzc = new zzl.zza()
    {
      public int zza(zzvl.zza paramAnonymouszza, zzbv<zzd.zza> paramAnonymouszzbv)
      {
        return ((zzd.zza)paramAnonymouszzbv.getObject()).zzvX();
      }
    };
    zzaAc = new zzl().zza(1048576, paramzzc);
    paramzzc = new zzl.zza()
    {
      public int zza(String paramAnonymousString, zzco.zzb paramAnonymouszzb)
      {
        return paramAnonymousString.length() + paramAnonymouszzb.getSize();
      }
    };
    zzaAd = new zzl().zza(1048576, paramzzc);
    zzazZ = new HashMap();
    zzb(new zzi(paramContext));
    zzb(new zzs(paramzza2));
    zzb(new zzw(paramDataLayer));
    zzb(new zzdf(paramContext, paramDataLayer));
    zzb(new zzda(paramContext, paramDataLayer));
    zzaAa = new HashMap();
    zzc(new zzq());
    zzc(new zzad());
    zzc(new zzae());
    zzc(new zzal());
    zzc(new zzam());
    zzc(new zzbb());
    zzc(new zzbc());
    zzc(new zzce());
    zzc(new zzcx());
    zzaAb = new HashMap();
    zza(new zzb(paramContext));
    zza(new zzc(paramContext));
    zza(new zze(paramContext));
    zza(new zzf(paramContext));
    zza(new zzg(paramContext));
    zza(new zzh(paramContext));
    zza(new zzm());
    zza(new zzp(zzazX.getVersion()));
    zza(new zzs(paramzza1));
    zza(new zzu(paramDataLayer));
    zza(new zzz(paramContext));
    zza(new zzaa());
    zza(new zzac());
    zza(new zzah(this));
    zza(new zzan());
    zza(new zzao());
    zza(new zzav(paramContext));
    zza(new zzax());
    zza(new zzba());
    zza(new zzbh());
    zza(new zzbj(paramContext));
    zza(new zzbw());
    zza(new zzby());
    zza(new zzcb());
    zza(new zzcd());
    zza(new zzcf(paramContext));
    zza(new zzcp());
    zza(new zzcq());
    zza(new zzcz());
    zza(new zzdg());
    zzaAf = new HashMap();
    paramDataLayer = zzaAe.iterator();
    while (paramDataLayer.hasNext())
    {
      paramzza1 = (zzvl.zze)paramDataLayer.next();
      if (paramzzag.zztg())
      {
        zza(paramzza1.zzuG(), paramzza1.zzuH(), "add macro");
        zza(paramzza1.zzuL(), paramzza1.zzuI(), "remove macro");
        zza(paramzza1.zzuE(), paramzza1.zzuJ(), "add tag");
        zza(paramzza1.zzuF(), paramzza1.zzuK(), "remove tag");
      }
      int i = 0;
      while (i < paramzza1.zzuG().size())
      {
        paramzza2 = (zzvl.zza)paramzza1.zzuG().get(i);
        paramzzc = "Unknown";
        paramContext = paramzzc;
        if (paramzzag.zztg())
        {
          paramContext = paramzzc;
          if (i < paramzza1.zzuH().size()) {
            paramContext = (String)paramzza1.zzuH().get(i);
          }
        }
        paramzzc = zze(zzaAf, zza(paramzza2));
        paramzzc.zza(paramzza1);
        paramzzc.zza(paramzza1, paramzza2);
        paramzzc.zza(paramzza1, paramContext);
        i += 1;
      }
      i = 0;
      while (i < paramzza1.zzuL().size())
      {
        paramzza2 = (zzvl.zza)paramzza1.zzuL().get(i);
        paramzzc = "Unknown";
        paramContext = paramzzc;
        if (paramzzag.zztg())
        {
          paramContext = paramzzc;
          if (i < paramzza1.zzuI().size()) {
            paramContext = (String)paramzza1.zzuI().get(i);
          }
        }
        paramzzc = zze(zzaAf, zza(paramzza2));
        paramzzc.zza(paramzza1);
        paramzzc.zzb(paramzza1, paramzza2);
        paramzzc.zzb(paramzza1, paramContext);
        i += 1;
      }
    }
    paramContext = zzazX.zzuz().entrySet().iterator();
    while (paramContext.hasNext())
    {
      paramzzc = (Map.Entry)paramContext.next();
      paramDataLayer = ((List)paramzzc.getValue()).iterator();
      while (paramDataLayer.hasNext())
      {
        paramzza1 = (zzvl.zza)paramDataLayer.next();
        if (!zzde.zzk((zzd.zza)paramzza1.zzuv().get(com.google.android.gms.internal.zzb.zzdG.toString())).booleanValue()) {
          zze(zzaAf, (String)paramzzc.getKey()).zzb(paramzza1);
        }
      }
    }
  }
  
  private zzbv<zzd.zza> zza(zzd.zza paramzza, Set<String> paramSet, zzdh paramzzdh)
  {
    if (!zzgF) {
      return new zzbv(paramzza, true);
    }
    zzbv localzzbv1;
    switch (type)
    {
    case 5: 
    case 6: 
    default: 
      zzbf.zzZ("Unknown type: " + type);
      return zzazW;
    case 2: 
      localzza = zzvl.zzo(paramzza);
      zzgw = new zzd.zza[zzgw.length];
      i = 0;
      while (i < zzgw.length)
      {
        localzzbv1 = zza(zzgw[i], paramSet, paramzzdh.zzhf(i));
        if (localzzbv1 == zzazW) {
          return zzazW;
        }
        zzgw[i] = ((zzd.zza)localzzbv1.getObject());
        i += 1;
      }
      return new zzbv(localzza, false);
    case 3: 
      localzza = zzvl.zzo(paramzza);
      if (zzgx.length != zzgy.length)
      {
        zzbf.zzZ("Invalid serving value: " + paramzza.toString());
        return zzazW;
      }
      zzgx = new zzd.zza[zzgx.length];
      zzgy = new zzd.zza[zzgx.length];
      i = 0;
      while (i < zzgx.length)
      {
        localzzbv1 = zza(zzgx[i], paramSet, paramzzdh.zzhg(i));
        zzbv localzzbv2 = zza(zzgy[i], paramSet, paramzzdh.zzhh(i));
        if ((localzzbv1 == zzazW) || (localzzbv2 == zzazW)) {
          return zzazW;
        }
        zzgx[i] = ((zzd.zza)localzzbv1.getObject());
        zzgy[i] = ((zzd.zza)localzzbv2.getObject());
        i += 1;
      }
      return new zzbv(localzza, false);
    case 4: 
      if (paramSet.contains(zzgz))
      {
        zzbf.zzZ("Macro cycle detected.  Current macro reference: " + zzgz + ".  Previous macro references: " + paramSet.toString() + ".");
        return zzazW;
      }
      paramSet.add(zzgz);
      paramzzdh = zzdi.zza(zza(zzgz, paramSet, paramzzdh.zztt()), zzgE);
      paramSet.remove(zzgz);
      return paramzzdh;
    }
    zzd.zza localzza = zzvl.zzo(paramzza);
    zzgD = new zzd.zza[zzgD.length];
    int i = 0;
    while (i < zzgD.length)
    {
      localzzbv1 = zza(zzgD[i], paramSet, paramzzdh.zzhi(i));
      if (localzzbv1 == zzazW) {
        return zzazW;
      }
      zzgD[i] = ((zzd.zza)localzzbv1.getObject());
      i += 1;
    }
    return new zzbv(localzza, false);
  }
  
  private zzbv<zzd.zza> zza(String paramString, Set<String> paramSet, zzbi paramzzbi)
  {
    zzaAh += 1;
    Object localObject = (zzb)zzaAd.get(paramString);
    if ((localObject != null) && (!zzazY.zztg()))
    {
      zza(((zzb)localObject).zztK(), paramSet);
      zzaAh -= 1;
      return ((zzb)localObject).zztJ();
    }
    localObject = (zzc)zzaAf.get(paramString);
    if (localObject == null)
    {
      zzbf.zzZ(zztI() + "Invalid macro: " + paramString);
      zzaAh -= 1;
      return zzazW;
    }
    zzbv localzzbv = zza(paramString, ((zzc)localObject).zztL(), ((zzc)localObject).zztM(), ((zzc)localObject).zztN(), ((zzc)localObject).zztP(), ((zzc)localObject).zztO(), paramSet, paramzzbi.zzsX());
    if (((Set)localzzbv.getObject()).isEmpty()) {}
    for (localObject = ((zzc)localObject).zztQ(); localObject == null; localObject = (zzvl.zza)((Set)localzzbv.getObject()).iterator().next())
    {
      zzaAh -= 1;
      return zzazW;
      if (((Set)localzzbv.getObject()).size() > 1) {
        zzbf.zzac(zztI() + "Multiple macros active for macroName " + paramString);
      }
    }
    paramzzbi = zza(zzaAb, (zzvl.zza)localObject, paramSet, paramzzbi.zztl());
    boolean bool;
    if ((localzzbv.zztu()) && (paramzzbi.zztu()))
    {
      bool = true;
      if (paramzzbi != zzazW) {
        break label392;
      }
    }
    label392:
    for (paramzzbi = zzazW;; paramzzbi = new zzbv(paramzzbi.getObject(), bool))
    {
      localObject = ((zzvl.zza)localObject).zztK();
      if (paramzzbi.zztu()) {
        zzaAd.zze(paramString, new zzb(paramzzbi, (zzd.zza)localObject));
      }
      zza((zzd.zza)localObject, paramSet);
      zzaAh -= 1;
      return paramzzbi;
      bool = false;
      break;
    }
  }
  
  private zzbv<zzd.zza> zza(Map<String, zzaj> paramMap, zzvl.zza paramzza, Set<String> paramSet, zzcg paramzzcg)
  {
    boolean bool = true;
    Object localObject1 = (zzd.zza)paramzza.zzuv().get(com.google.android.gms.internal.zzb.zzcU.toString());
    if (localObject1 == null)
    {
      zzbf.zzZ("No function id in properties");
      paramMap = zzazW;
    }
    zzaj localzzaj;
    do
    {
      return paramMap;
      localObject1 = zzgA;
      localzzaj = (zzaj)paramMap.get(localObject1);
      if (localzzaj == null)
      {
        zzbf.zzZ((String)localObject1 + " has no backing implementation.");
        return zzazW;
      }
      paramMap = (zzbv)zzaAc.get(paramzza);
    } while ((paramMap != null) && (!zzazY.zztg()));
    paramMap = new HashMap();
    Iterator localIterator = paramzza.zzuv().entrySet().iterator();
    int i = 1;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject2 = paramzzcg.zzde((String)localEntry.getKey());
      localObject2 = zza((zzd.zza)localEntry.getValue(), paramSet, ((zzci)localObject2).zze((zzd.zza)localEntry.getValue()));
      if (localObject2 == zzazW) {
        return zzazW;
      }
      if (((zzbv)localObject2).zztu()) {
        paramzza.zza((String)localEntry.getKey(), (zzd.zza)((zzbv)localObject2).getObject());
      }
      for (;;)
      {
        paramMap.put(localEntry.getKey(), ((zzbv)localObject2).getObject());
        break;
        i = 0;
      }
    }
    if (!localzzaj.zzb(paramMap.keySet()))
    {
      zzbf.zzZ("Incorrect keys for function " + (String)localObject1 + " required " + localzzaj.zzti() + " had " + paramMap.keySet());
      return zzazW;
    }
    if ((i != 0) && (localzzaj.zzsD())) {}
    for (;;)
    {
      paramMap = new zzbv(localzzaj.zzH(paramMap), bool);
      if (bool) {
        zzaAc.zze(paramzza, paramMap);
      }
      paramzzcg.zzd((zzd.zza)paramMap.getObject());
      return paramMap;
      bool = false;
    }
  }
  
  private zzbv<Set<zzvl.zza>> zza(Set<zzvl.zze> paramSet, Set<String> paramSet1, zza paramzza, zzcn paramzzcn)
  {
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    paramSet = paramSet.iterator();
    boolean bool = true;
    if (paramSet.hasNext())
    {
      zzvl.zze localzze = (zzvl.zze)paramSet.next();
      zzcj localzzcj = paramzzcn.zzts();
      zzbv localzzbv = zza(localzze, paramSet1, localzzcj);
      if (((Boolean)localzzbv.getObject()).booleanValue()) {
        paramzza.zza(localzze, localHashSet1, localHashSet2, localzzcj);
      }
      if ((bool) && (localzzbv.zztu())) {}
      for (bool = true;; bool = false) {
        break;
      }
    }
    localHashSet1.removeAll(localHashSet2);
    paramzzcn.zzc(localHashSet1);
    return new zzbv(localHashSet1, bool);
  }
  
  private static String zza(zzvl.zza paramzza)
  {
    return zzde.zzg((zzd.zza)paramzza.zzuv().get(com.google.android.gms.internal.zzb.zzdf.toString()));
  }
  
  private void zza(zzd.zza paramzza, Set<String> paramSet)
  {
    if (paramzza == null) {}
    for (;;)
    {
      return;
      paramzza = zza(paramzza, paramSet, new zzbt());
      if (paramzza != zzazW)
      {
        paramzza = zzde.zzl((zzd.zza)paramzza.getObject());
        if ((paramzza instanceof Map))
        {
          paramzza = (Map)paramzza;
          zzaxx.push(paramzza);
          return;
        }
        if (!(paramzza instanceof List)) {
          break;
        }
        paramzza = ((List)paramzza).iterator();
        while (paramzza.hasNext())
        {
          paramSet = paramzza.next();
          if ((paramSet instanceof Map))
          {
            paramSet = (Map)paramSet;
            zzaxx.push(paramSet);
          }
          else
          {
            zzbf.zzac("pushAfterEvaluate: value not a Map");
          }
        }
      }
    }
    zzbf.zzac("pushAfterEvaluate: value not a Map or List");
  }
  
  private static void zza(List<zzvl.zza> paramList, List<String> paramList1, String paramString)
  {
    if (paramList.size() != paramList1.size()) {
      zzbf.zzaa("Invalid resource: imbalance of rule names of functions for " + paramString + " operation. Using default rule name instead");
    }
  }
  
  private static void zza(Map<String, zzaj> paramMap, zzaj paramzzaj)
  {
    if (paramMap.containsKey(paramzzaj.zzth())) {
      throw new IllegalArgumentException("Duplicate function type name: " + paramzzaj.zzth());
    }
    paramMap.put(paramzzaj.zzth(), paramzzaj);
  }
  
  private static zzc zze(Map<String, zzc> paramMap, String paramString)
  {
    zzc localzzc2 = (zzc)paramMap.get(paramString);
    zzc localzzc1 = localzzc2;
    if (localzzc2 == null)
    {
      localzzc1 = new zzc();
      paramMap.put(paramString, localzzc1);
    }
    return localzzc1;
  }
  
  private String zztI()
  {
    if (zzaAh <= 1) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(Integer.toString(zzaAh));
    int i = 2;
    while (i < zzaAh)
    {
      localStringBuilder.append(' ');
      i += 1;
    }
    localStringBuilder.append(": ");
    return localStringBuilder.toString();
  }
  
  zzbv<Boolean> zza(zzvl.zza paramzza, Set<String> paramSet, zzcg paramzzcg)
  {
    paramzza = zza(zzaAa, paramzza, paramSet, paramzzcg);
    paramSet = zzde.zzk((zzd.zza)paramzza.getObject());
    paramzzcg.zzd(zzde.zzx(paramSet));
    return new zzbv(paramSet, paramzza.zztu());
  }
  
  zzbv<Boolean> zza(zzvl.zze paramzze, Set<String> paramSet, zzcj paramzzcj)
  {
    Object localObject = paramzze.zzuD().iterator();
    boolean bool = true;
    if (((Iterator)localObject).hasNext())
    {
      zzbv localzzbv = zza((zzvl.zza)((Iterator)localObject).next(), paramSet, paramzzcj.zztm());
      if (((Boolean)localzzbv.getObject()).booleanValue())
      {
        paramzzcj.zzf(zzde.zzx(Boolean.valueOf(false)));
        return new zzbv(Boolean.valueOf(false), localzzbv.zztu());
      }
      if ((bool) && (localzzbv.zztu())) {}
      for (bool = true;; bool = false) {
        break;
      }
    }
    paramzze = paramzze.zzuC().iterator();
    while (paramzze.hasNext())
    {
      localObject = zza((zzvl.zza)paramzze.next(), paramSet, paramzzcj.zztn());
      if (!((Boolean)((zzbv)localObject).getObject()).booleanValue())
      {
        paramzzcj.zzf(zzde.zzx(Boolean.valueOf(false)));
        return new zzbv(Boolean.valueOf(false), ((zzbv)localObject).zztu());
      }
      if ((bool) && (((zzbv)localObject).zztu())) {
        bool = true;
      } else {
        bool = false;
      }
    }
    paramzzcj.zzf(zzde.zzx(Boolean.valueOf(true)));
    return new zzbv(Boolean.valueOf(true), bool);
  }
  
  zzbv<Set<zzvl.zza>> zza(String paramString, Set<zzvl.zze> paramSet, final Map<zzvl.zze, List<zzvl.zza>> paramMap1, final Map<zzvl.zze, List<String>> paramMap2, final Map<zzvl.zze, List<zzvl.zza>> paramMap3, final Map<zzvl.zze, List<String>> paramMap4, Set<String> paramSet1, zzcn paramzzcn)
  {
    zza(paramSet, paramSet1, new zza()
    {
      public void zza(zzvl.zze paramAnonymouszze, Set<zzvl.zza> paramAnonymousSet1, Set<zzvl.zza> paramAnonymousSet2, zzcj paramAnonymouszzcj)
      {
        List localList1 = (List)paramMap1.get(paramAnonymouszze);
        List localList2 = (List)paramMap2.get(paramAnonymouszze);
        if (localList1 != null)
        {
          paramAnonymousSet1.addAll(localList1);
          paramAnonymouszzcj.zzto().zzc(localList1, localList2);
        }
        paramAnonymousSet1 = (List)paramMap3.get(paramAnonymouszze);
        paramAnonymouszze = (List)paramMap4.get(paramAnonymouszze);
        if (paramAnonymousSet1 != null)
        {
          paramAnonymousSet2.addAll(paramAnonymousSet1);
          paramAnonymouszzcj.zztp().zzc(paramAnonymousSet1, paramAnonymouszze);
        }
      }
    }, paramzzcn);
  }
  
  zzbv<Set<zzvl.zza>> zza(Set<zzvl.zze> paramSet, zzcn paramzzcn)
  {
    zza(paramSet, new HashSet(), new zza()
    {
      public void zza(zzvl.zze paramAnonymouszze, Set<zzvl.zza> paramAnonymousSet1, Set<zzvl.zza> paramAnonymousSet2, zzcj paramAnonymouszzcj)
      {
        paramAnonymousSet1.addAll(paramAnonymouszze.zzuE());
        paramAnonymousSet2.addAll(paramAnonymouszze.zzuF());
        paramAnonymouszzcj.zztq().zzc(paramAnonymouszze.zzuE(), paramAnonymouszze.zzuJ());
        paramAnonymouszzcj.zztr().zzc(paramAnonymouszze.zzuF(), paramAnonymouszze.zzuK());
      }
    }, paramzzcn);
  }
  
  void zza(zzaj paramzzaj)
  {
    zza(zzaAb, paramzzaj);
  }
  
  void zzb(zzaj paramzzaj)
  {
    zza(zzazZ, paramzzaj);
  }
  
  void zzc(zzaj paramzzaj)
  {
    zza(zzaAa, paramzzaj);
  }
  
  public void zzcO(String paramString)
  {
    try
    {
      zzdj(paramString);
      paramString = zzazY.zzda(paramString);
      zzt localzzt = paramString.zzte();
      Iterator localIterator = ((Set)zza(zzaAe, localzzt.zzsX()).getObject()).iterator();
      while (localIterator.hasNext())
      {
        zzvl.zza localzza = (zzvl.zza)localIterator.next();
        zza(zzazZ, localzza, new HashSet(), localzzt.zzsW());
      }
      paramString.zztf();
    }
    finally {}
    zzdj(null);
  }
  
  public zzbv<zzd.zza> zzdi(String paramString)
  {
    zzaAh = 0;
    zzaf localzzaf = zzazY.zzcZ(paramString);
    paramString = zza(paramString, new HashSet(), localzzaf.zztd());
    localzzaf.zztf();
    return paramString;
  }
  
  void zzdj(String paramString)
  {
    try
    {
      zzaAg = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  String zztH()
  {
    try
    {
      String str = zzaAg;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void zzu(List<zzc.zzi> paramList)
  {
    for (;;)
    {
      try
      {
        paramList = paramList.iterator();
        if (!paramList.hasNext()) {
          break;
        }
        zzc.zzi localzzi = (zzc.zzi)paramList.next();
        if ((name == null) || (!name.startsWith("gaExperiment:"))) {
          zzbf.zzab("Ignored supplemental: " + localzzi);
        } else {
          zzai.zza(zzaxx, localzzi);
        }
      }
      finally {}
    }
  }
  
  static abstract interface zza
  {
    public abstract void zza(zzvl.zze paramzze, Set<zzvl.zza> paramSet1, Set<zzvl.zza> paramSet2, zzcj paramzzcj);
  }
  
  static class zzb
  {
    private zzbv<zzd.zza> zzaAn;
    private zzd.zza zzaAo;
    
    public zzb(zzbv<zzd.zza> paramzzbv, zzd.zza paramzza)
    {
      zzaAn = paramzzbv;
      zzaAo = paramzza;
    }
    
    public int getSize()
    {
      int j = ((zzd.zza)zzaAn.getObject()).zzvX();
      if (zzaAo == null) {}
      for (int i = 0;; i = zzaAo.zzvX()) {
        return i + j;
      }
    }
    
    public zzbv<zzd.zza> zztJ()
    {
      return zzaAn;
    }
    
    public zzd.zza zztK()
    {
      return zzaAo;
    }
  }
  
  static class zzc
  {
    private final Set<zzvl.zze> zzaAe = new HashSet();
    private final Map<zzvl.zze, List<zzvl.zza>> zzaAp = new HashMap();
    private final Map<zzvl.zze, List<zzvl.zza>> zzaAq = new HashMap();
    private final Map<zzvl.zze, List<String>> zzaAr = new HashMap();
    private final Map<zzvl.zze, List<String>> zzaAs = new HashMap();
    private zzvl.zza zzaAt;
    
    public void zza(zzvl.zze paramzze)
    {
      zzaAe.add(paramzze);
    }
    
    public void zza(zzvl.zze paramzze, zzvl.zza paramzza)
    {
      List localList = (List)zzaAp.get(paramzze);
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new ArrayList();
        zzaAp.put(paramzze, localObject);
      }
      ((List)localObject).add(paramzza);
    }
    
    public void zza(zzvl.zze paramzze, String paramString)
    {
      List localList = (List)zzaAr.get(paramzze);
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new ArrayList();
        zzaAr.put(paramzze, localObject);
      }
      ((List)localObject).add(paramString);
    }
    
    public void zzb(zzvl.zza paramzza)
    {
      zzaAt = paramzza;
    }
    
    public void zzb(zzvl.zze paramzze, zzvl.zza paramzza)
    {
      List localList = (List)zzaAq.get(paramzze);
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new ArrayList();
        zzaAq.put(paramzze, localObject);
      }
      ((List)localObject).add(paramzza);
    }
    
    public void zzb(zzvl.zze paramzze, String paramString)
    {
      List localList = (List)zzaAs.get(paramzze);
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new ArrayList();
        zzaAs.put(paramzze, localObject);
      }
      ((List)localObject).add(paramString);
    }
    
    public Set<zzvl.zze> zztL()
    {
      return zzaAe;
    }
    
    public Map<zzvl.zze, List<zzvl.zza>> zztM()
    {
      return zzaAp;
    }
    
    public Map<zzvl.zze, List<String>> zztN()
    {
      return zzaAr;
    }
    
    public Map<zzvl.zze, List<String>> zztO()
    {
      return zzaAs;
    }
    
    public Map<zzvl.zze, List<zzvl.zza>> zztP()
    {
      return zzaAq;
    }
    
    public zzvl.zza zztQ()
    {
      return zzaAt;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzco
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */