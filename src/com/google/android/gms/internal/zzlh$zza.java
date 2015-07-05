package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class zzlh$zza
  implements SafeParcelable
{
  public static final zzlj CREATOR = new zzlj();
  final String className;
  final int versionCode;
  final ArrayList<zzlh.zzb> zzRc;
  
  zzlh$zza(int paramInt, String paramString, ArrayList<zzlh.zzb> paramArrayList)
  {
    versionCode = paramInt;
    className = paramString;
    zzRc = paramArrayList;
  }
  
  zzlh$zza(String paramString, Map<String, zzld.zza<?, ?>> paramMap)
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlh.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */