package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class zzlk
  extends zzld
  implements SafeParcelable
{
  public static final zzll CREATOR = new zzll();
  private final String mClassName;
  private final int zzFG;
  private final zzlh zzQX;
  private final Parcel zzRe;
  private final int zzRf;
  private int zzRg;
  private int zzRh;
  
  zzlk(int paramInt, Parcel paramParcel, zzlh paramzzlh)
  {
    zzFG = paramInt;
    zzRe = ((Parcel)zzx.zzl(paramParcel));
    zzRf = 2;
    zzQX = paramzzlh;
    if (zzQX == null) {}
    for (mClassName = null;; mClassName = zzQX.zzjP())
    {
      zzRg = 2;
      return;
    }
  }
  
  private zzlk(SafeParcelable paramSafeParcelable, zzlh paramzzlh, String paramString)
  {
    zzFG = 1;
    zzRe = Parcel.obtain();
    paramSafeParcelable.writeToParcel(zzRe, 0);
    zzRf = 1;
    zzQX = ((zzlh)zzx.zzl(paramzzlh));
    mClassName = ((String)zzx.zzl(paramString));
    zzRg = 2;
  }
  
  private static HashMap<Integer, Map.Entry<String, zzld.zza<?, ?>>> zzF(Map<String, zzld.zza<?, ?>> paramMap)
  {
    HashMap localHashMap = new HashMap();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localHashMap.put(Integer.valueOf(((zzld.zza)localEntry.getValue()).zzjG()), localEntry);
    }
    return localHashMap;
  }
  
  public static <T extends zzld,  extends SafeParcelable> zzlk zza(T paramT)
  {
    String str = paramT.getClass().getCanonicalName();
    zzlh localzzlh = zzb(paramT);
    return new zzlk((SafeParcelable)paramT, localzzlh, str);
  }
  
  private static void zza(zzlh paramzzlh, zzld paramzzld)
  {
    Object localObject = paramzzld.getClass();
    if (!paramzzlh.zzb((Class)localObject))
    {
      Map localMap = paramzzld.zzjz();
      paramzzlh.zza((Class)localObject, localMap);
      localObject = localMap.keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        paramzzld = (zzld.zza)localMap.get((String)((Iterator)localObject).next());
        Class localClass = paramzzld.zzjH();
        if (localClass != null) {
          try
          {
            zza(paramzzlh, (zzld)localClass.newInstance());
          }
          catch (InstantiationException paramzzlh)
          {
            throw new IllegalStateException("Could not instantiate an object of type " + paramzzld.zzjH().getCanonicalName(), paramzzlh);
          }
          catch (IllegalAccessException paramzzlh)
          {
            throw new IllegalStateException("Could not access object of type " + paramzzld.zzjH().getCanonicalName(), paramzzlh);
          }
        }
      }
    }
  }
  
  private void zza(StringBuilder paramStringBuilder, int paramInt, Object paramObject)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown type = " + paramInt);
    case 0: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
      paramStringBuilder.append(paramObject);
      return;
    case 7: 
      paramStringBuilder.append("\"").append(zzma.zzbt(paramObject.toString())).append("\"");
      return;
    case 8: 
      paramStringBuilder.append("\"").append(zzlt.zze((byte[])paramObject)).append("\"");
      return;
    case 9: 
      paramStringBuilder.append("\"").append(zzlt.zzf((byte[])paramObject));
      paramStringBuilder.append("\"");
      return;
    case 10: 
      zzmb.zza(paramStringBuilder, (HashMap)paramObject);
      return;
    }
    throw new IllegalArgumentException("Method does not accept concrete type.");
  }
  
  private void zza(StringBuilder paramStringBuilder, zzld.zza<?, ?> paramzza, Parcel paramParcel, int paramInt)
  {
    switch (paramzza.zzjy())
    {
    default: 
      throw new IllegalArgumentException("Unknown field out type = " + paramzza.zzjy());
    case 0: 
      zzb(paramStringBuilder, paramzza, zza(paramzza, Integer.valueOf(zza.zzg(paramParcel, paramInt))));
      return;
    case 1: 
      zzb(paramStringBuilder, paramzza, zza(paramzza, zza.zzk(paramParcel, paramInt)));
      return;
    case 2: 
      zzb(paramStringBuilder, paramzza, zza(paramzza, Long.valueOf(zza.zzi(paramParcel, paramInt))));
      return;
    case 3: 
      zzb(paramStringBuilder, paramzza, zza(paramzza, Float.valueOf(zza.zzl(paramParcel, paramInt))));
      return;
    case 4: 
      zzb(paramStringBuilder, paramzza, zza(paramzza, Double.valueOf(zza.zzm(paramParcel, paramInt))));
      return;
    case 5: 
      zzb(paramStringBuilder, paramzza, zza(paramzza, zza.zzn(paramParcel, paramInt)));
      return;
    case 6: 
      zzb(paramStringBuilder, paramzza, zza(paramzza, Boolean.valueOf(zza.zzc(paramParcel, paramInt))));
      return;
    case 7: 
      zzb(paramStringBuilder, paramzza, zza(paramzza, zza.zzo(paramParcel, paramInt)));
      return;
    case 8: 
    case 9: 
      zzb(paramStringBuilder, paramzza, zza(paramzza, zza.zzr(paramParcel, paramInt)));
      return;
    case 10: 
      zzb(paramStringBuilder, paramzza, zza(paramzza, zzk(zza.zzq(paramParcel, paramInt))));
      return;
    }
    throw new IllegalArgumentException("Method does not accept concrete type.");
  }
  
  private void zza(StringBuilder paramStringBuilder, String paramString, zzld.zza<?, ?> paramzza, Parcel paramParcel, int paramInt)
  {
    paramStringBuilder.append("\"").append(paramString).append("\":");
    if (paramzza.zzjJ())
    {
      zza(paramStringBuilder, paramzza, paramParcel, paramInt);
      return;
    }
    zzb(paramStringBuilder, paramzza, paramParcel, paramInt);
  }
  
  private void zza(StringBuilder paramStringBuilder, Map<String, zzld.zza<?, ?>> paramMap, Parcel paramParcel)
  {
    paramMap = zzF(paramMap);
    paramStringBuilder.append('{');
    int j = zza.zzJ(paramParcel);
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      Map.Entry localEntry = (Map.Entry)paramMap.get(Integer.valueOf(zza.zzaP(k)));
      if (localEntry != null)
      {
        if (i != 0) {
          paramStringBuilder.append(",");
        }
        zza(paramStringBuilder, (String)localEntry.getKey(), (zzld.zza)localEntry.getValue(), paramParcel, k);
        i = 1;
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    paramStringBuilder.append('}');
  }
  
  private static zzlh zzb(zzld paramzzld)
  {
    zzlh localzzlh = new zzlh(paramzzld.getClass());
    zza(localzzlh, paramzzld);
    localzzlh.zzjN();
    localzzlh.zzjM();
    return localzzlh;
  }
  
  private void zzb(StringBuilder paramStringBuilder, zzld.zza<?, ?> paramzza, Parcel paramParcel, int paramInt)
  {
    if (paramzza.zzjE())
    {
      paramStringBuilder.append("[");
      switch (paramzza.zzjy())
      {
      default: 
        throw new IllegalStateException("Unknown field type out.");
      case 0: 
        zzls.zza(paramStringBuilder, zza.zzu(paramParcel, paramInt));
      }
      for (;;)
      {
        paramStringBuilder.append("]");
        return;
        zzls.zza(paramStringBuilder, zza.zzw(paramParcel, paramInt));
        continue;
        zzls.zza(paramStringBuilder, zza.zzv(paramParcel, paramInt));
        continue;
        zzls.zza(paramStringBuilder, zza.zzx(paramParcel, paramInt));
        continue;
        zzls.zza(paramStringBuilder, zza.zzy(paramParcel, paramInt));
        continue;
        zzls.zza(paramStringBuilder, zza.zzz(paramParcel, paramInt));
        continue;
        zzls.zza(paramStringBuilder, zza.zzt(paramParcel, paramInt));
        continue;
        zzls.zza(paramStringBuilder, zza.zzA(paramParcel, paramInt));
        continue;
        throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
        paramParcel = zza.zzE(paramParcel, paramInt);
        int i = paramParcel.length;
        paramInt = 0;
        while (paramInt < i)
        {
          if (paramInt > 0) {
            paramStringBuilder.append(",");
          }
          paramParcel[paramInt].setDataPosition(0);
          zza(paramStringBuilder, paramzza.zzjL(), paramParcel[paramInt]);
          paramInt += 1;
        }
      }
    }
    switch (paramzza.zzjy())
    {
    default: 
      throw new IllegalStateException("Unknown field type out");
    case 0: 
      paramStringBuilder.append(zza.zzg(paramParcel, paramInt));
      return;
    case 1: 
      paramStringBuilder.append(zza.zzk(paramParcel, paramInt));
      return;
    case 2: 
      paramStringBuilder.append(zza.zzi(paramParcel, paramInt));
      return;
    case 3: 
      paramStringBuilder.append(zza.zzl(paramParcel, paramInt));
      return;
    case 4: 
      paramStringBuilder.append(zza.zzm(paramParcel, paramInt));
      return;
    case 5: 
      paramStringBuilder.append(zza.zzn(paramParcel, paramInt));
      return;
    case 6: 
      paramStringBuilder.append(zza.zzc(paramParcel, paramInt));
      return;
    case 7: 
      paramzza = zza.zzo(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(zzma.zzbt(paramzza)).append("\"");
      return;
    case 8: 
      paramzza = zza.zzr(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(zzlt.zze(paramzza)).append("\"");
      return;
    case 9: 
      paramzza = zza.zzr(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(zzlt.zzf(paramzza));
      paramStringBuilder.append("\"");
      return;
    case 10: 
      paramzza = zza.zzq(paramParcel, paramInt);
      paramParcel = paramzza.keySet();
      paramParcel.size();
      paramStringBuilder.append("{");
      paramParcel = paramParcel.iterator();
      for (paramInt = 1; paramParcel.hasNext(); paramInt = 0)
      {
        String str = (String)paramParcel.next();
        if (paramInt == 0) {
          paramStringBuilder.append(",");
        }
        paramStringBuilder.append("\"").append(str).append("\"");
        paramStringBuilder.append(":");
        paramStringBuilder.append("\"").append(zzma.zzbt(paramzza.getString(str))).append("\"");
      }
      paramStringBuilder.append("}");
      return;
    }
    paramParcel = zza.zzD(paramParcel, paramInt);
    paramParcel.setDataPosition(0);
    zza(paramStringBuilder, paramzza.zzjL(), paramParcel);
  }
  
  private void zzb(StringBuilder paramStringBuilder, zzld.zza<?, ?> paramzza, Object paramObject)
  {
    if (paramzza.zzjD())
    {
      zzb(paramStringBuilder, paramzza, (ArrayList)paramObject);
      return;
    }
    zza(paramStringBuilder, paramzza.zzjx(), paramObject);
  }
  
  private void zzb(StringBuilder paramStringBuilder, zzld.zza<?, ?> paramzza, ArrayList<?> paramArrayList)
  {
    paramStringBuilder.append("[");
    int j = paramArrayList.size();
    int i = 0;
    while (i < j)
    {
      if (i != 0) {
        paramStringBuilder.append(",");
      }
      zza(paramStringBuilder, paramzza.zzjx(), paramArrayList.get(i));
      i += 1;
    }
    paramStringBuilder.append("]");
  }
  
  public static HashMap<String, String> zzk(Bundle paramBundle)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramBundle.getString(str));
    }
    return localHashMap;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getVersionCode()
  {
    return zzFG;
  }
  
  public String toString()
  {
    zzx.zzb(zzQX, "Cannot convert to JSON on client side.");
    Parcel localParcel = zzjR();
    localParcel.setDataPosition(0);
    StringBuilder localStringBuilder = new StringBuilder(100);
    zza(localStringBuilder, zzQX.zzbs(mClassName), localParcel);
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzll.zza(this, paramParcel, paramInt);
  }
  
  protected Object zzbo(String paramString)
  {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }
  
  protected boolean zzbp(String paramString)
  {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }
  
  public Parcel zzjR()
  {
    switch (zzRg)
    {
    }
    for (;;)
    {
      return zzRe;
      zzRh = zzb.zzK(zzRe);
      zzb.zzH(zzRe, zzRh);
      zzRg = 2;
    }
  }
  
  zzlh zzjS()
  {
    switch (zzRf)
    {
    default: 
      throw new IllegalStateException("Invalid creation type: " + zzRf);
    case 0: 
      return null;
    case 1: 
      return zzQX;
    }
    return zzQX;
  }
  
  public Map<String, zzld.zza<?, ?>> zzjz()
  {
    if (zzQX == null) {
      return null;
    }
    return zzQX.zzbs(mClassName);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */