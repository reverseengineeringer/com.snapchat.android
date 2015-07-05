package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class zzld
{
  private void zza(StringBuilder paramStringBuilder, zza paramzza, Object paramObject)
  {
    if (paramzza.zzjx() == 11)
    {
      paramStringBuilder.append(((zzld)paramzza.zzjH().cast(paramObject)).toString());
      return;
    }
    if (paramzza.zzjx() == 7)
    {
      paramStringBuilder.append("\"");
      paramStringBuilder.append(zzma.zzbt((String)paramObject));
      paramStringBuilder.append("\"");
      return;
    }
    paramStringBuilder.append(paramObject);
  }
  
  private void zza(StringBuilder paramStringBuilder, zza paramzza, ArrayList<Object> paramArrayList)
  {
    paramStringBuilder.append("[");
    int i = 0;
    int j = paramArrayList.size();
    while (i < j)
    {
      if (i > 0) {
        paramStringBuilder.append(",");
      }
      Object localObject = paramArrayList.get(i);
      if (localObject != null) {
        zza(paramStringBuilder, paramzza, localObject);
      }
      i += 1;
    }
    paramStringBuilder.append("]");
  }
  
  public String toString()
  {
    Map localMap = zzjz();
    StringBuilder localStringBuilder = new StringBuilder(100);
    Iterator localIterator = localMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      zza localzza = (zza)localMap.get(str);
      if (zza(localzza))
      {
        Object localObject = zza(localzza, zzb(localzza));
        if (localStringBuilder.length() == 0) {
          localStringBuilder.append("{");
        }
        for (;;)
        {
          localStringBuilder.append("\"").append(str).append("\":");
          if (localObject != null) {
            break label139;
          }
          localStringBuilder.append("null");
          break;
          localStringBuilder.append(",");
        }
        label139:
        switch (localzza.zzjy())
        {
        default: 
          if (localzza.zzjD()) {
            zza(localStringBuilder, localzza, (ArrayList)localObject);
          }
          break;
        case 8: 
          localStringBuilder.append("\"").append(zzlt.zze((byte[])localObject)).append("\"");
          break;
        case 9: 
          localStringBuilder.append("\"").append(zzlt.zzf((byte[])localObject)).append("\"");
          break;
        case 10: 
          zzmb.zza(localStringBuilder, (HashMap)localObject);
          continue;
          zza(localStringBuilder, localzza, localObject);
        }
      }
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.append("}");
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("{}");
    }
  }
  
  protected <O, I> I zza(zza<I, O> paramzza, Object paramObject)
  {
    Object localObject = paramObject;
    if (zza.zzc(paramzza) != null) {
      localObject = paramzza.convertBack(paramObject);
    }
    return (I)localObject;
  }
  
  protected boolean zza(zza paramzza)
  {
    if (paramzza.zzjy() == 11)
    {
      if (paramzza.zzjE()) {
        return zzbr(paramzza.zzjF());
      }
      return zzbq(paramzza.zzjF());
    }
    return zzbp(paramzza.zzjF());
  }
  
  protected Object zzb(zza paramzza)
  {
    String str = paramzza.zzjF();
    if (paramzza.zzjH() != null)
    {
      boolean bool;
      if (zzbo(paramzza.zzjF()) == null)
      {
        bool = true;
        zzx.zza(bool, "Concrete field shouldn't be value object: %s", new Object[] { paramzza.zzjF() });
        if (!paramzza.zzjE()) {
          break label71;
        }
      }
      label71:
      for (paramzza = zzjB();; paramzza = zzjA())
      {
        if (paramzza == null) {
          break label79;
        }
        return paramzza.get(str);
        bool = false;
        break;
      }
      try
      {
        label79:
        paramzza = "get" + Character.toUpperCase(str.charAt(0)) + str.substring(1);
        paramzza = getClass().getMethod(paramzza, new Class[0]).invoke(this, new Object[0]);
        return paramzza;
      }
      catch (Exception paramzza)
      {
        throw new RuntimeException(paramzza);
      }
    }
    return zzbo(paramzza.zzjF());
  }
  
  protected abstract Object zzbo(String paramString);
  
  protected abstract boolean zzbp(String paramString);
  
  protected boolean zzbq(String paramString)
  {
    throw new UnsupportedOperationException("Concrete types not supported");
  }
  
  protected boolean zzbr(String paramString)
  {
    throw new UnsupportedOperationException("Concrete type arrays not supported");
  }
  
  public HashMap<String, Object> zzjA()
  {
    return null;
  }
  
  public HashMap<String, Object> zzjB()
  {
    return null;
  }
  
  public abstract Map<String, zza<?, ?>> zzjz();
  
  public static class zza<I, O>
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
    
    zza(int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, int paramInt4, String paramString2, zzky paramzzky)
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
    
    protected zza(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString, int paramInt3, Class<? extends zzld> paramClass, zzld.zzb<I, O> paramzzb)
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
  
  public static abstract interface zzb<I, O>
  {
    public abstract I convertBack(O paramO);
    
    public abstract int zzjx();
    
    public abstract int zzjy();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzld
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */