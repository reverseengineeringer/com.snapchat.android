package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class zzla
  implements SafeParcelable, zzld.zzb<String, Integer>
{
  public static final zzlb CREATOR = new zzlb();
  private final int zzFG;
  private final HashMap<String, Integer> zzQK;
  private final HashMap<Integer, String> zzQL;
  private final ArrayList<zza> zzQM;
  
  public zzla()
  {
    zzFG = 1;
    zzQK = new HashMap();
    zzQL = new HashMap();
    zzQM = null;
  }
  
  zzla(int paramInt, ArrayList<zza> paramArrayList)
  {
    zzFG = paramInt;
    zzQK = new HashMap();
    zzQL = new HashMap();
    zzQM = null;
    zzb(paramArrayList);
  }
  
  private void zzb(ArrayList<zza> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      zza localzza = (zza)paramArrayList.next();
      zzh(zzQN, zzQO);
    }
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzlb.zza(this, paramParcel, paramInt);
  }
  
  public final String zzb(Integer paramInteger)
  {
    String str = (String)zzQL.get(paramInteger);
    paramInteger = str;
    if (str == null)
    {
      paramInteger = str;
      if (zzQK.containsKey("gms_unknown")) {
        paramInteger = "gms_unknown";
      }
    }
    return paramInteger;
  }
  
  public final zzla zzh(String paramString, int paramInt)
  {
    zzQK.put(paramString, Integer.valueOf(paramInt));
    zzQL.put(Integer.valueOf(paramInt), paramString);
    return this;
  }
  
  final ArrayList<zza> zzjw()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = zzQK.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localArrayList.add(new zza(str, ((Integer)zzQK.get(str)).intValue()));
    }
    return localArrayList;
  }
  
  public final int zzjx()
  {
    return 7;
  }
  
  public final int zzjy()
  {
    return 0;
  }
  
  public static final class zza
    implements SafeParcelable
  {
    public static final zzlc CREATOR = new zzlc();
    final int versionCode;
    final String zzQN;
    final int zzQO;
    
    zza(int paramInt1, String paramString, int paramInt2)
    {
      versionCode = paramInt1;
      zzQN = paramString;
      zzQO = paramInt2;
    }
    
    zza(String paramString, int paramInt)
    {
      versionCode = 1;
      zzQN = paramString;
      zzQO = paramInt;
    }
    
    public final int describeContents()
    {
      return 0;
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      zzlc.zza(this, paramParcel, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzla
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */