package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class zzlh
  implements SafeParcelable
{
  public static final zzli CREATOR = new zzli();
  private final int zzFG;
  private final HashMap<String, Map<String, zzld.zza<?, ?>>> zzQZ;
  private final ArrayList<zza> zzRa;
  private final String zzRb;
  
  zzlh(int paramInt, ArrayList<zza> paramArrayList, String paramString)
  {
    zzFG = paramInt;
    zzRa = null;
    zzQZ = zzc(paramArrayList);
    zzRb = ((String)zzx.zzl(paramString));
    zzjM();
  }
  
  public zzlh(Class<? extends zzld> paramClass)
  {
    zzFG = 1;
    zzRa = null;
    zzQZ = new HashMap();
    zzRb = paramClass.getCanonicalName();
  }
  
  private static HashMap<String, Map<String, zzld.zza<?, ?>>> zzc(ArrayList<zza> paramArrayList)
  {
    HashMap localHashMap = new HashMap();
    int j = paramArrayList.size();
    int i = 0;
    while (i < j)
    {
      zza localzza = (zza)paramArrayList.get(i);
      localHashMap.put(className, localzza.zzjQ());
      i += 1;
    }
    return localHashMap;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  int getVersionCode()
  {
    return zzFG;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator1 = zzQZ.keySet().iterator();
    while (localIterator1.hasNext())
    {
      Object localObject = (String)localIterator1.next();
      localStringBuilder.append((String)localObject).append(":\n");
      localObject = (Map)zzQZ.get(localObject);
      Iterator localIterator2 = ((Map)localObject).keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        localStringBuilder.append("  ").append(str).append(": ");
        localStringBuilder.append(((Map)localObject).get(str));
      }
    }
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzli.zza(this, paramParcel, paramInt);
  }
  
  public void zza(Class<? extends zzld> paramClass, Map<String, zzld.zza<?, ?>> paramMap)
  {
    zzQZ.put(paramClass.getCanonicalName(), paramMap);
  }
  
  public boolean zzb(Class<? extends zzld> paramClass)
  {
    return zzQZ.containsKey(paramClass.getCanonicalName());
  }
  
  public Map<String, zzld.zza<?, ?>> zzbs(String paramString)
  {
    return (Map)zzQZ.get(paramString);
  }
  
  public void zzjM()
  {
    Iterator localIterator1 = zzQZ.keySet().iterator();
    while (localIterator1.hasNext())
    {
      Object localObject = (String)localIterator1.next();
      localObject = (Map)zzQZ.get(localObject);
      Iterator localIterator2 = ((Map)localObject).keySet().iterator();
      while (localIterator2.hasNext()) {
        ((zzld.zza)((Map)localObject).get((String)localIterator2.next())).zza(this);
      }
    }
  }
  
  public void zzjN()
  {
    Iterator localIterator1 = zzQZ.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str1 = (String)localIterator1.next();
      Map localMap = (Map)zzQZ.get(str1);
      HashMap localHashMap = new HashMap();
      Iterator localIterator2 = localMap.keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str2 = (String)localIterator2.next();
        localHashMap.put(str2, ((zzld.zza)localMap.get(str2)).zzjC());
      }
      zzQZ.put(str1, localHashMap);
    }
  }
  
  ArrayList<zza> zzjO()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = zzQZ.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new zza(str, (Map)zzQZ.get(str)));
    }
    return localArrayList;
  }
  
  public String zzjP()
  {
    return zzRb;
  }
  
  public static class zza
    implements SafeParcelable
  {
    public static final zzlj CREATOR = new zzlj();
    final String className;
    final int versionCode;
    final ArrayList<zzlh.zzb> zzRc;
    
    zza(int paramInt, String paramString, ArrayList<zzlh.zzb> paramArrayList)
    {
      versionCode = paramInt;
      className = paramString;
      zzRc = paramArrayList;
    }
    
    zza(String paramString, Map<String, zzld.zza<?, ?>> paramMap)
    {
      versionCode = 1;
      className = paramString;
      zzRc = zzE(paramMap);
    }
    
    private static ArrayList<zzlh.zzb> zzE(Map<String, zzld.zza<?, ?>> paramMap)
    {
      if (paramMap == null) {
        return null;
      }
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localArrayList.add(new zzlh.zzb(str, (zzld.zza)paramMap.get(str)));
      }
      return localArrayList;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      zzlj.zza(this, paramParcel, paramInt);
    }
    
    HashMap<String, zzld.zza<?, ?>> zzjQ()
    {
      HashMap localHashMap = new HashMap();
      int j = zzRc.size();
      int i = 0;
      while (i < j)
      {
        zzlh.zzb localzzb = (zzlh.zzb)zzRc.get(i);
        localHashMap.put(zzfv, zzRd);
        i += 1;
      }
      return localHashMap;
    }
  }
  
  public static class zzb
    implements SafeParcelable
  {
    public static final zzlg CREATOR = new zzlg();
    final int versionCode;
    final zzld.zza<?, ?> zzRd;
    final String zzfv;
    
    zzb(int paramInt, String paramString, zzld.zza<?, ?> paramzza)
    {
      versionCode = paramInt;
      zzfv = paramString;
      zzRd = paramzza;
    }
    
    zzb(String paramString, zzld.zza<?, ?> paramzza)
    {
      versionCode = 1;
      zzfv = paramString;
      zzRd = paramzza;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      zzlg.zza(this, paramParcel, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */