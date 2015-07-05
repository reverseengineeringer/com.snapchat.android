package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzd.zza;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class zzde
{
  private static final Object zzaBl = null;
  private static Long zzaBm = new Long(0L);
  private static Double zzaBn = new Double(0.0D);
  private static zzdd zzaBo = zzdd.zzI(0L);
  private static String zzaBp = new String("");
  private static Boolean zzaBq = new Boolean(false);
  private static List<Object> zzaBr = new ArrayList(0);
  private static Map<Object, Object> zzaBs = new HashMap();
  private static zzd.zza zzaBt = zzx(zzaBp);
  
  private static double getDouble(Object paramObject)
  {
    if ((paramObject instanceof Number)) {
      return ((Number)paramObject).doubleValue();
    }
    zzbf.zzZ("getDouble received non-Number");
    return 0.0D;
  }
  
  private static long zzA(Object paramObject)
  {
    if ((paramObject instanceof Number)) {
      return ((Number)paramObject).longValue();
    }
    zzbf.zzZ("getInt64 received non-Number");
    return 0L;
  }
  
  public static zzd.zza zzdo(String paramString)
  {
    zzd.zza localzza = new zzd.zza();
    type = 5;
    zzgA = paramString;
    return localzza;
  }
  
  private static zzdd zzdp(String paramString)
  {
    try
    {
      zzdd localzzdd = zzdd.zzdn(paramString);
      return localzzdd;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      zzbf.zzZ("Failed to convert '" + paramString + "' to a number.");
    }
    return zzaBo;
  }
  
  private static Long zzdq(String paramString)
  {
    paramString = zzdp(paramString);
    if (paramString == zzaBo) {
      return zzaBm;
    }
    return Long.valueOf(paramString.longValue());
  }
  
  private static Double zzdr(String paramString)
  {
    paramString = zzdp(paramString);
    if (paramString == zzaBo) {
      return zzaBn;
    }
    return Double.valueOf(paramString.doubleValue());
  }
  
  private static Boolean zzds(String paramString)
  {
    if ("true".equalsIgnoreCase(paramString)) {
      return Boolean.TRUE;
    }
    if ("false".equalsIgnoreCase(paramString)) {
      return Boolean.FALSE;
    }
    return zzaBq;
  }
  
  public static String zzg(zzd.zza paramzza)
  {
    return zzs(zzl(paramzza));
  }
  
  public static zzdd zzh(zzd.zza paramzza)
  {
    return zzt(zzl(paramzza));
  }
  
  public static Long zzi(zzd.zza paramzza)
  {
    return zzu(zzl(paramzza));
  }
  
  public static Double zzj(zzd.zza paramzza)
  {
    return zzv(zzl(paramzza));
  }
  
  public static Boolean zzk(zzd.zza paramzza)
  {
    return zzw(zzl(paramzza));
  }
  
  public static Object zzl(zzd.zza paramzza)
  {
    int k = 0;
    int j = 0;
    int i = 0;
    if (paramzza == null) {
      return zzaBl;
    }
    Object localObject1;
    Object localObject2;
    switch (type)
    {
    default: 
      zzbf.zzZ("Failed to convert a value of type: " + type);
      return zzaBl;
    case 1: 
      return zzgv;
    case 2: 
      localObject1 = new ArrayList(zzgw.length);
      paramzza = zzgw;
      j = paramzza.length;
      while (i < j)
      {
        localObject2 = zzl(paramzza[i]);
        if (localObject2 == zzaBl) {
          return zzaBl;
        }
        ((ArrayList)localObject1).add(localObject2);
        i += 1;
      }
      return localObject1;
    case 3: 
      if (zzgx.length != zzgy.length)
      {
        zzbf.zzZ("Converting an invalid value to object: " + paramzza.toString());
        return zzaBl;
      }
      localObject1 = new HashMap(zzgy.length);
      i = k;
      while (i < zzgx.length)
      {
        localObject2 = zzl(zzgx[i]);
        Object localObject3 = zzl(zzgy[i]);
        if ((localObject2 == zzaBl) || (localObject3 == zzaBl)) {
          return zzaBl;
        }
        ((Map)localObject1).put(localObject2, localObject3);
        i += 1;
      }
      return localObject1;
    case 4: 
      zzbf.zzZ("Trying to convert a macro reference to object");
      return zzaBl;
    case 5: 
      zzbf.zzZ("Trying to convert a function id to object");
      return zzaBl;
    case 6: 
      return Long.valueOf(zzgB);
    case 7: 
      localObject1 = new StringBuffer();
      paramzza = zzgD;
      k = paramzza.length;
      i = j;
      while (i < k)
      {
        localObject2 = zzg(paramzza[i]);
        if (localObject2 == zzaBp) {
          return zzaBl;
        }
        ((StringBuffer)localObject1).append((String)localObject2);
        i += 1;
      }
      return ((StringBuffer)localObject1).toString();
    }
    return Boolean.valueOf(zzgC);
  }
  
  public static String zzs(Object paramObject)
  {
    if (paramObject == null) {
      return zzaBp;
    }
    return paramObject.toString();
  }
  
  public static zzdd zzt(Object paramObject)
  {
    if ((paramObject instanceof zzdd)) {
      return (zzdd)paramObject;
    }
    if (zzz(paramObject)) {
      return zzdd.zzI(zzA(paramObject));
    }
    if (zzy(paramObject)) {
      return zzdd.zza(Double.valueOf(getDouble(paramObject)));
    }
    return zzdp(zzs(paramObject));
  }
  
  public static Object zztZ()
  {
    return zzaBl;
  }
  
  public static Long zzu(Object paramObject)
  {
    if (zzz(paramObject)) {
      return Long.valueOf(zzA(paramObject));
    }
    return zzdq(zzs(paramObject));
  }
  
  public static Long zzua()
  {
    return zzaBm;
  }
  
  public static Double zzub()
  {
    return zzaBn;
  }
  
  public static Boolean zzuc()
  {
    return zzaBq;
  }
  
  public static zzdd zzud()
  {
    return zzaBo;
  }
  
  public static String zzue()
  {
    return zzaBp;
  }
  
  public static zzd.zza zzuf()
  {
    return zzaBt;
  }
  
  public static Double zzv(Object paramObject)
  {
    if (zzy(paramObject)) {
      return Double.valueOf(getDouble(paramObject));
    }
    return zzdr(zzs(paramObject));
  }
  
  public static Boolean zzw(Object paramObject)
  {
    if ((paramObject instanceof Boolean)) {
      return (Boolean)paramObject;
    }
    return zzds(zzs(paramObject));
  }
  
  public static zzd.zza zzx(Object paramObject)
  {
    boolean bool = false;
    Object localObject1 = new zzd.zza();
    if ((paramObject instanceof zzd.zza)) {
      return (zzd.zza)paramObject;
    }
    if ((paramObject instanceof String))
    {
      type = 1;
      zzgv = ((String)paramObject);
    }
    for (;;)
    {
      zzgF = bool;
      return (zzd.zza)localObject1;
      Object localObject2;
      Object localObject3;
      if ((paramObject instanceof List))
      {
        type = 2;
        localObject2 = (List)paramObject;
        paramObject = new ArrayList(((List)localObject2).size());
        localObject2 = ((List)localObject2).iterator();
        bool = false;
        if (((Iterator)localObject2).hasNext())
        {
          localObject3 = zzx(((Iterator)localObject2).next());
          if (localObject3 == zzaBt) {
            return zzaBt;
          }
          if ((bool) || (zzgF)) {}
          for (bool = true;; bool = false)
          {
            ((List)paramObject).add(localObject3);
            break;
          }
        }
        zzgw = ((zzd.zza[])((List)paramObject).toArray(new zzd.zza[0]));
      }
      else if ((paramObject instanceof Map))
      {
        type = 3;
        localObject3 = ((Map)paramObject).entrySet();
        paramObject = new ArrayList(((Set)localObject3).size());
        localObject2 = new ArrayList(((Set)localObject3).size());
        localObject3 = ((Set)localObject3).iterator();
        bool = false;
        if (((Iterator)localObject3).hasNext())
        {
          Object localObject4 = (Map.Entry)((Iterator)localObject3).next();
          zzd.zza localzza = zzx(((Map.Entry)localObject4).getKey());
          localObject4 = zzx(((Map.Entry)localObject4).getValue());
          if ((localzza == zzaBt) || (localObject4 == zzaBt)) {
            return zzaBt;
          }
          if ((bool) || (zzgF) || (zzgF)) {}
          for (bool = true;; bool = false)
          {
            ((List)paramObject).add(localzza);
            ((List)localObject2).add(localObject4);
            break;
          }
        }
        zzgx = ((zzd.zza[])((List)paramObject).toArray(new zzd.zza[0]));
        zzgy = ((zzd.zza[])((List)localObject2).toArray(new zzd.zza[0]));
      }
      else if (zzy(paramObject))
      {
        type = 1;
        zzgv = paramObject.toString();
      }
      else if (zzz(paramObject))
      {
        type = 6;
        zzgB = zzA(paramObject);
      }
      else
      {
        if (!(paramObject instanceof Boolean)) {
          break;
        }
        type = 8;
        zzgC = ((Boolean)paramObject).booleanValue();
      }
    }
    localObject1 = new StringBuilder("Converting to Value from unknown object type: ");
    if (paramObject == null) {}
    for (paramObject = "null";; paramObject = paramObject.getClass().toString())
    {
      zzbf.zzZ((String)paramObject);
      return zzaBt;
    }
  }
  
  private static boolean zzy(Object paramObject)
  {
    return ((paramObject instanceof Double)) || ((paramObject instanceof Float)) || (((paramObject instanceof zzdd)) && (((zzdd)paramObject).zztU()));
  }
  
  private static boolean zzz(Object paramObject)
  {
    return ((paramObject instanceof Byte)) || ((paramObject instanceof Short)) || ((paramObject instanceof Integer)) || ((paramObject instanceof Long)) || (((paramObject instanceof zzdd)) && (((zzdd)paramObject).zztV()));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzde
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */