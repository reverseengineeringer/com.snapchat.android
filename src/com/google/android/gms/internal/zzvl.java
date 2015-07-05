package com.google.android.gms.internal;

import com.google.android.gms.tagmanager.zzbf;
import com.google.android.gms.tagmanager.zzde;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class zzvl
{
  private static zzd.zza zza(int paramInt, zzc.zzf paramzzf, zzd.zza[] paramArrayOfzza, Set<Integer> paramSet)
  {
    int k = 0;
    int m = 0;
    int j = 0;
    if (paramSet.contains(Integer.valueOf(paramInt))) {
      zzdw("Value cycle detected.  Current value reference: " + paramInt + ".  Previous value references: " + paramSet + ".");
    }
    zzd.zza localzza1 = (zzd.zza)zza(zzfG, paramInt, "values");
    if (paramArrayOfzza[paramInt] != null) {
      return paramArrayOfzza[paramInt];
    }
    Object localObject = null;
    paramSet.add(Integer.valueOf(paramInt));
    switch (type)
    {
    }
    for (;;)
    {
      if (localObject == null) {
        zzdw("Invalid value: " + localzza1);
      }
      paramArrayOfzza[paramInt] = localObject;
      paramSet.remove(Integer.valueOf(paramInt));
      return (zzd.zza)localObject;
      localObject = zzp(localzza1);
      zzd.zza localzza2 = zzo(localzza1);
      zzgw = new zzd.zza[zzgh.length];
      int[] arrayOfInt = zzgh;
      k = arrayOfInt.length;
      int i = 0;
      for (;;)
      {
        localObject = localzza2;
        if (j >= k) {
          break;
        }
        m = arrayOfInt[j];
        zzgw[i] = zza(m, paramzzf, paramArrayOfzza, paramSet);
        j += 1;
        i += 1;
      }
      localzza2 = zzo(localzza1);
      localObject = zzp(localzza1);
      if (zzgi.length != zzgj.length) {
        zzdw("Uneven map keys (" + zzgi.length + ") and map values (" + zzgj.length + ")");
      }
      zzgx = new zzd.zza[zzgi.length];
      zzgy = new zzd.zza[zzgi.length];
      arrayOfInt = zzgi;
      m = arrayOfInt.length;
      j = 0;
      i = 0;
      while (j < m)
      {
        int n = arrayOfInt[j];
        zzgx[i] = zza(n, paramzzf, paramArrayOfzza, paramSet);
        j += 1;
        i += 1;
      }
      arrayOfInt = zzgj;
      m = arrayOfInt.length;
      i = 0;
      j = k;
      for (;;)
      {
        localObject = localzza2;
        if (j >= m) {
          break;
        }
        k = arrayOfInt[j];
        zzgy[i] = zza(k, paramzzf, paramArrayOfzza, paramSet);
        j += 1;
        i += 1;
      }
      localObject = zzo(localzza1);
      zzgz = zzde.zzg(zza(zzpzzgm, paramzzf, paramArrayOfzza, paramSet));
      continue;
      localzza2 = zzo(localzza1);
      localObject = zzp(localzza1);
      zzgD = new zzd.zza[zzgl.length];
      arrayOfInt = zzgl;
      k = arrayOfInt.length;
      i = 0;
      j = m;
      for (;;)
      {
        localObject = localzza2;
        if (j >= k) {
          break;
        }
        m = arrayOfInt[j];
        zzgD[i] = zza(m, paramzzf, paramArrayOfzza, paramSet);
        j += 1;
        i += 1;
      }
      localObject = localzza1;
    }
  }
  
  private static zza zza(zzc.zzb paramzzb, zzc.zzf paramzzf, zzd.zza[] paramArrayOfzza, int paramInt)
  {
    zzb localzzb = zza.zzuu();
    paramzzb = zzfq;
    int i = paramzzb.length;
    paramInt = 0;
    if (paramInt < i)
    {
      int j = paramzzb[paramInt];
      Object localObject = (zzc.zze)zza(zzfH, Integer.valueOf(j).intValue(), "properties");
      String str = (String)zza(zzfF, key, "keys");
      localObject = (zzd.zza)zza(paramArrayOfzza, value, "values");
      if (zzb.zzec.toString().equals(str)) {
        localzzb.zzq((zzd.zza)localObject);
      }
      for (;;)
      {
        paramInt += 1;
        break;
        localzzb.zzb(str, (zzd.zza)localObject);
      }
    }
    return localzzb.zzuw();
  }
  
  private static zze zza(zzc.zzg paramzzg, List<zza> paramList1, List<zza> paramList2, List<zza> paramList3, zzc.zzf paramzzf)
  {
    zzf localzzf = zze.zzuB();
    int[] arrayOfInt = zzfV;
    int j = arrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      localzzf.zzd((zza)paramList3.get(Integer.valueOf(arrayOfInt[i]).intValue()));
      i += 1;
    }
    arrayOfInt = zzfW;
    j = arrayOfInt.length;
    i = 0;
    while (i < j)
    {
      localzzf.zze((zza)paramList3.get(Integer.valueOf(arrayOfInt[i]).intValue()));
      i += 1;
    }
    paramList3 = zzfX;
    j = paramList3.length;
    i = 0;
    while (i < j)
    {
      localzzf.zzf((zza)paramList1.get(Integer.valueOf(paramList3[i]).intValue()));
      i += 1;
    }
    paramList3 = zzfZ;
    j = paramList3.length;
    i = 0;
    int k;
    while (i < j)
    {
      k = paramList3[i];
      localzzf.zzdz(zzfG[Integer.valueOf(k).intValue()].zzgv);
      i += 1;
    }
    paramList3 = zzfY;
    j = paramList3.length;
    i = 0;
    while (i < j)
    {
      localzzf.zzg((zza)paramList1.get(Integer.valueOf(paramList3[i]).intValue()));
      i += 1;
    }
    paramList1 = zzga;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      k = paramList1[i];
      localzzf.zzdA(zzfG[Integer.valueOf(k).intValue()].zzgv);
      i += 1;
    }
    paramList1 = zzgb;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      localzzf.zzh((zza)paramList2.get(Integer.valueOf(paramList1[i]).intValue()));
      i += 1;
    }
    paramList1 = zzgd;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      k = paramList1[i];
      localzzf.zzdB(zzfG[Integer.valueOf(k).intValue()].zzgv);
      i += 1;
    }
    paramList1 = zzgc;
    j = paramList1.length;
    i = 0;
    while (i < j)
    {
      localzzf.zzi((zza)paramList2.get(Integer.valueOf(paramList1[i]).intValue()));
      i += 1;
    }
    paramzzg = zzge;
    j = paramzzg.length;
    i = 0;
    while (i < j)
    {
      k = paramzzg[i];
      localzzf.zzdC(zzfG[Integer.valueOf(k).intValue()].zzgv);
      i += 1;
    }
    return localzzf.zzuM();
  }
  
  private static <T> T zza(T[] paramArrayOfT, int paramInt, String paramString)
  {
    if ((paramInt < 0) || (paramInt >= paramArrayOfT.length)) {
      zzdw("Index out of bounds detected: " + paramInt + " in " + paramString);
    }
    return paramArrayOfT[paramInt];
  }
  
  public static zzc zzb(zzc.zzf paramzzf)
  {
    int j = 0;
    Object localObject = new zzd.zza[zzfG.length];
    int i = 0;
    while (i < zzfG.length)
    {
      zza(i, paramzzf, (zzd.zza[])localObject, new HashSet(0));
      i += 1;
    }
    zzd localzzd = zzc.zzux();
    ArrayList localArrayList1 = new ArrayList();
    i = 0;
    while (i < zzfJ.length)
    {
      localArrayList1.add(zza(zzfJ[i], paramzzf, (zzd.zza[])localObject, i));
      i += 1;
    }
    ArrayList localArrayList2 = new ArrayList();
    i = 0;
    while (i < zzfK.length)
    {
      localArrayList2.add(zza(zzfK[i], paramzzf, (zzd.zza[])localObject, i));
      i += 1;
    }
    ArrayList localArrayList3 = new ArrayList();
    i = 0;
    while (i < zzfI.length)
    {
      zza localzza = zza(zzfI[i], paramzzf, (zzd.zza[])localObject, i);
      localzzd.zzc(localzza);
      localArrayList3.add(localzza);
      i += 1;
    }
    localObject = zzfL;
    int k = localObject.length;
    i = j;
    while (i < k)
    {
      localzzd.zzb(zza(localObject[i], localArrayList1, localArrayList3, localArrayList2, paramzzf));
      i += 1;
    }
    localzzd.zzdy(version);
    localzzd.zzhk(zzfT);
    return localzzd.zzuA();
  }
  
  public static void zzc(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte['Ѐ'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        return;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  private static void zzdw(String paramString)
  {
    zzbf.zzZ(paramString);
    throw new zzg(paramString);
  }
  
  public static zzd.zza zzo(zzd.zza paramzza)
  {
    zzd.zza localzza = new zzd.zza();
    type = type;
    zzgE = ((int[])zzgE.clone());
    if (zzgF) {
      zzgF = zzgF;
    }
    return localzza;
  }
  
  private static zzc.zzh zzp(zzd.zza paramzza)
  {
    if ((zzc.zzh)paramzza.zza(zzc.zzh.zzgf) == null) {
      zzdw("Expected a ServingValue and didn't get one. Value is: " + paramzza);
    }
    return (zzc.zzh)paramzza.zza(zzc.zzh.zzgf);
  }
  
  public static class zza
  {
    private final zzd.zza zzaAo;
    private final Map<String, zzd.zza> zzaCj;
    
    private zza(Map<String, zzd.zza> paramMap, zzd.zza paramzza)
    {
      zzaCj = paramMap;
      zzaAo = paramzza;
    }
    
    public static zzvl.zzb zzuu()
    {
      return new zzvl.zzb(null);
    }
    
    public String toString()
    {
      return "Properties: " + zzuv() + " pushAfterEvaluate: " + zzaAo;
    }
    
    public void zza(String paramString, zzd.zza paramzza)
    {
      zzaCj.put(paramString, paramzza);
    }
    
    public zzd.zza zztK()
    {
      return zzaAo;
    }
    
    public Map<String, zzd.zza> zzuv()
    {
      return Collections.unmodifiableMap(zzaCj);
    }
  }
  
  public static class zzb
  {
    private zzd.zza zzaAo;
    private final Map<String, zzd.zza> zzaCj = new HashMap();
    
    public zzb zzb(String paramString, zzd.zza paramzza)
    {
      zzaCj.put(paramString, paramzza);
      return this;
    }
    
    public zzb zzq(zzd.zza paramzza)
    {
      zzaAo = paramzza;
      return this;
    }
    
    public zzvl.zza zzuw()
    {
      return new zzvl.zza(zzaCj, zzaAo, null);
    }
  }
  
  public static class zzc
  {
    private final String zzYw;
    private final List<zzvl.zze> zzaCk;
    private final Map<String, List<zzvl.zza>> zzaCl;
    private final int zzaCm;
    
    private zzc(List<zzvl.zze> paramList, Map<String, List<zzvl.zza>> paramMap, String paramString, int paramInt)
    {
      zzaCk = Collections.unmodifiableList(paramList);
      zzaCl = Collections.unmodifiableMap(paramMap);
      zzYw = paramString;
      zzaCm = paramInt;
    }
    
    public static zzvl.zzd zzux()
    {
      return new zzvl.zzd(null);
    }
    
    public String getVersion()
    {
      return zzYw;
    }
    
    public String toString()
    {
      return "Rules: " + zzuy() + "  Macros: " + zzaCl;
    }
    
    public List<zzvl.zze> zzuy()
    {
      return zzaCk;
    }
    
    public Map<String, List<zzvl.zza>> zzuz()
    {
      return zzaCl;
    }
  }
  
  public static class zzd
  {
    private String zzYw = "";
    private final List<zzvl.zze> zzaCk = new ArrayList();
    private final Map<String, List<zzvl.zza>> zzaCl = new HashMap();
    private int zzaCm = 0;
    
    public zzd zzb(zzvl.zze paramzze)
    {
      zzaCk.add(paramzze);
      return this;
    }
    
    public zzd zzc(zzvl.zza paramzza)
    {
      String str = zzde.zzg((zzd.zza)paramzza.zzuv().get(zzb.zzdf.toString()));
      List localList = (List)zzaCl.get(str);
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new ArrayList();
        zzaCl.put(str, localObject);
      }
      ((List)localObject).add(paramzza);
      return this;
    }
    
    public zzd zzdy(String paramString)
    {
      zzYw = paramString;
      return this;
    }
    
    public zzd zzhk(int paramInt)
    {
      zzaCm = paramInt;
      return this;
    }
    
    public zzvl.zzc zzuA()
    {
      return new zzvl.zzc(zzaCk, zzaCl, zzYw, zzaCm, null);
    }
  }
  
  public static class zze
  {
    private final List<zzvl.zza> zzaCn;
    private final List<zzvl.zza> zzaCo;
    private final List<zzvl.zza> zzaCp;
    private final List<zzvl.zza> zzaCq;
    private final List<zzvl.zza> zzaCr;
    private final List<zzvl.zza> zzaCs;
    private final List<String> zzaCt;
    private final List<String> zzaCu;
    private final List<String> zzaCv;
    private final List<String> zzaCw;
    
    private zze(List<zzvl.zza> paramList1, List<zzvl.zza> paramList2, List<zzvl.zza> paramList3, List<zzvl.zza> paramList4, List<zzvl.zza> paramList5, List<zzvl.zza> paramList6, List<String> paramList7, List<String> paramList8, List<String> paramList9, List<String> paramList10)
    {
      zzaCn = Collections.unmodifiableList(paramList1);
      zzaCo = Collections.unmodifiableList(paramList2);
      zzaCp = Collections.unmodifiableList(paramList3);
      zzaCq = Collections.unmodifiableList(paramList4);
      zzaCr = Collections.unmodifiableList(paramList5);
      zzaCs = Collections.unmodifiableList(paramList6);
      zzaCt = Collections.unmodifiableList(paramList7);
      zzaCu = Collections.unmodifiableList(paramList8);
      zzaCv = Collections.unmodifiableList(paramList9);
      zzaCw = Collections.unmodifiableList(paramList10);
    }
    
    public static zzvl.zzf zzuB()
    {
      return new zzvl.zzf(null);
    }
    
    public String toString()
    {
      return "Positive predicates: " + zzuC() + "  Negative predicates: " + zzuD() + "  Add tags: " + zzuE() + "  Remove tags: " + zzuF() + "  Add macros: " + zzuG() + "  Remove macros: " + zzuL();
    }
    
    public List<zzvl.zza> zzuC()
    {
      return zzaCn;
    }
    
    public List<zzvl.zza> zzuD()
    {
      return zzaCo;
    }
    
    public List<zzvl.zza> zzuE()
    {
      return zzaCp;
    }
    
    public List<zzvl.zza> zzuF()
    {
      return zzaCq;
    }
    
    public List<zzvl.zza> zzuG()
    {
      return zzaCr;
    }
    
    public List<String> zzuH()
    {
      return zzaCt;
    }
    
    public List<String> zzuI()
    {
      return zzaCu;
    }
    
    public List<String> zzuJ()
    {
      return zzaCv;
    }
    
    public List<String> zzuK()
    {
      return zzaCw;
    }
    
    public List<zzvl.zza> zzuL()
    {
      return zzaCs;
    }
  }
  
  public static class zzf
  {
    private final List<zzvl.zza> zzaCn = new ArrayList();
    private final List<zzvl.zza> zzaCo = new ArrayList();
    private final List<zzvl.zza> zzaCp = new ArrayList();
    private final List<zzvl.zza> zzaCq = new ArrayList();
    private final List<zzvl.zza> zzaCr = new ArrayList();
    private final List<zzvl.zza> zzaCs = new ArrayList();
    private final List<String> zzaCt = new ArrayList();
    private final List<String> zzaCu = new ArrayList();
    private final List<String> zzaCv = new ArrayList();
    private final List<String> zzaCw = new ArrayList();
    
    public zzf zzd(zzvl.zza paramzza)
    {
      zzaCn.add(paramzza);
      return this;
    }
    
    public zzf zzdA(String paramString)
    {
      zzaCw.add(paramString);
      return this;
    }
    
    public zzf zzdB(String paramString)
    {
      zzaCt.add(paramString);
      return this;
    }
    
    public zzf zzdC(String paramString)
    {
      zzaCu.add(paramString);
      return this;
    }
    
    public zzf zzdz(String paramString)
    {
      zzaCv.add(paramString);
      return this;
    }
    
    public zzf zze(zzvl.zza paramzza)
    {
      zzaCo.add(paramzza);
      return this;
    }
    
    public zzf zzf(zzvl.zza paramzza)
    {
      zzaCp.add(paramzza);
      return this;
    }
    
    public zzf zzg(zzvl.zza paramzza)
    {
      zzaCq.add(paramzza);
      return this;
    }
    
    public zzf zzh(zzvl.zza paramzza)
    {
      zzaCr.add(paramzza);
      return this;
    }
    
    public zzf zzi(zzvl.zza paramzza)
    {
      zzaCs.add(paramzza);
      return this;
    }
    
    public zzvl.zze zzuM()
    {
      return new zzvl.zze(zzaCn, zzaCo, zzaCp, zzaCq, zzaCr, zzaCs, zzaCt, zzaCu, zzaCv, zzaCw, null);
    }
  }
  
  public static class zzg
    extends Exception
  {
    public zzg(String paramString)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */