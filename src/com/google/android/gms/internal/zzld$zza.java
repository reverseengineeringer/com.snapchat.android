package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;
import java.util.Map;

public class zzld$zza<I, O>
  implements SafeParcelable
{
  public static final zzlf CREATOR = new zzlf();
  private final int zzFG;
  protected final int zzQP;
  protected final boolean zzQQ;
  protected final int zzQR;
  protected final boolean zzQS;
  protected final String zzQT;
  protected final int zzQU;
  protected final Class<? extends zzld> zzQV;
  protected final String zzQW;
  private zzlh zzQX;
  private zzld.zzb<I, O> zzQY;
  
  zzld$zza(int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, int paramInt4, String paramString2, zzky paramzzky)
  {
    zzFG = paramInt1;
    zzQP = paramInt2;
    zzQQ = paramBoolean1;
    zzQR = paramInt3;
    zzQS = paramBoolean2;
    zzQT = paramString1;
    zzQU = paramInt4;
    if (paramString2 == null) {
      zzQV = null;
    }
    for (zzQW = null; paramzzky == null; zzQW = paramString2)
    {
      zzQY = null;
      return;
      zzQV = zzlk.class;
    }
    zzQY = paramzzky.zzjv();
  }
  
  protected zzld$zza(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString, int paramInt3, Class<? extends zzld> paramClass, zzld.zzb<I, O> paramzzb)
  {
    zzFG = 1;
    zzQP = paramInt1;
    zzQQ = paramBoolean1;
    zzQR = paramInt2;
    zzQS = paramBoolean2;
    zzQT = paramString;
    zzQU = paramInt3;
    zzQV = paramClass;
    if (paramClass == null) {}
    for (zzQW = null;; zzQW = paramClass.getCanonicalName())
    {
      zzQY = paramzzb;
      return;
    }
  }
  
  public static zza zza(String paramString, int paramInt, zzld.zzb<?, ?> paramzzb, boolean paramBoolean)
  {
    return new zza(paramzzb.zzjx(), paramBoolean, paramzzb.zzjy(), false, paramString, paramInt, null, paramzzb);
  }
  
  public static <T extends zzld> zza<T, T> zza(String paramString, int paramInt, Class<T> paramClass)
  {
    return new zza(11, false, 11, false, paramString, paramInt, paramClass, null);
  }
  
  public static <T extends zzld> zza<ArrayList<T>, ArrayList<T>> zzb(String paramString, int paramInt, Class<T> paramClass)
  {
    return new zza(11, true, 11, true, paramString, paramInt, paramClass, null);
  }
  
  public static zza<Integer, Integer> zzi(String paramString, int paramInt)
  {
    return new zza(0, false, 0, false, paramString, paramInt, null, null);
  }
  
  public static zza<Double, Double> zzj(String paramString, int paramInt)
  {
    return new zza(4, false, 4, false, paramString, paramInt, null, null);
  }
  
  public static zza<Boolean, Boolean> zzk(String paramString, int paramInt)
  {
    return new zza(6, false, 6, false, paramString, paramInt, null, null);
  }
  
  public static zza<String, String> zzl(String paramString, int paramInt)
  {
    return new zza(7, false, 7, false, paramString, paramInt, null, null);
  }
  
  public static zza<ArrayList<String>, ArrayList<String>> zzm(String paramString, int paramInt)
  {
    return new zza(7, true, 7, true, paramString, paramInt, null, null);
  }
  
  public I convertBack(O paramO)
  {
    return (I)zzQY.convertBack(paramO);
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
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("Field\n");
    localStringBuilder1.append("            versionCode=").append(zzFG).append('\n');
    localStringBuilder1.append("                 typeIn=").append(zzQP).append('\n');
    localStringBuilder1.append("            typeInArray=").append(zzQQ).append('\n');
    localStringBuilder1.append("                typeOut=").append(zzQR).append('\n');
    localStringBuilder1.append("           typeOutArray=").append(zzQS).append('\n');
    localStringBuilder1.append("        outputFieldName=").append(zzQT).append('\n');
    localStringBuilder1.append("      safeParcelFieldId=").append(zzQU).append('\n');
    localStringBuilder1.append("       concreteTypeName=").append(zzjI()).append('\n');
    if (zzjH() != null) {
      localStringBuilder1.append("     concreteType.class=").append(zzjH().getCanonicalName()).append('\n');
    }
    StringBuilder localStringBuilder2 = localStringBuilder1.append("          converterName=");
    if (zzQY == null) {}
    for (String str = "null";; str = zzQY.getClass().getCanonicalName())
    {
      localStringBuilder2.append(str).append('\n');
      return localStringBuilder1.toString();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzlf.zza(this, paramParcel, paramInt);
  }
  
  public void zza(zzlh paramzzlh)
  {
    zzQX = paramzzlh;
  }
  
  public zza<I, O> zzjC()
  {
    return new zza(zzFG, zzQP, zzQQ, zzQR, zzQS, zzQT, zzQU, zzQW, zzjK());
  }
  
  public boolean zzjD()
  {
    return zzQQ;
  }
  
  public boolean zzjE()
  {
    return zzQS;
  }
  
  public String zzjF()
  {
    return zzQT;
  }
  
  public int zzjG()
  {
    return zzQU;
  }
  
  public Class<? extends zzld> zzjH()
  {
    return zzQV;
  }
  
  String zzjI()
  {
    if (zzQW == null) {
      return null;
    }
    return zzQW;
  }
  
  public boolean zzjJ()
  {
    return zzQY != null;
  }
  
  zzky zzjK()
  {
    if (zzQY == null) {
      return null;
    }
    return zzky.zza(zzQY);
  }
  
  public Map<String, zza<?, ?>> zzjL()
  {
    zzx.zzl(zzQW);
    zzx.zzl(zzQX);
    return zzQX.zzbs(zzQW);
  }
  
  public int zzjx()
  {
    return zzQP;
  }
  
  public int zzjy()
  {
    return zzQR;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzld.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */