package com.google.android.gms.internal;

import com.google.android.gms.tagmanager.zzbf;
import com.google.android.gms.tagmanager.zzde;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class zzvf
{
  static zzd.zza zza(int paramInt, JSONArray paramJSONArray, zzd.zza[] paramArrayOfzza, Set<Integer> paramSet)
  {
    int j = 0;
    int i = 0;
    if (paramSet.contains(Integer.valueOf(paramInt))) {
      zzdw("Value cycle detected. Current value reference: " + paramInt + ".  Previous value references: " + paramSet + ".");
    }
    Object localObject1 = zza(paramJSONArray, paramInt, "values");
    if (paramArrayOfzza[paramInt] != null) {
      return paramArrayOfzza[paramInt];
    }
    paramSet.add(Integer.valueOf(paramInt));
    zzd.zza localzza = new zzd.zza();
    if ((localObject1 instanceof JSONArray))
    {
      localObject1 = (JSONArray)localObject1;
      type = 2;
      zzgF = true;
      zzgw = new zzd.zza[((JSONArray)localObject1).length()];
      while (i < zzgw.length)
      {
        zzgw[i] = zza(((JSONArray)localObject1).getInt(i), paramJSONArray, paramArrayOfzza, paramSet);
        i += 1;
      }
    }
    Object localObject2;
    if ((localObject1 instanceof JSONObject))
    {
      localObject1 = (JSONObject)localObject1;
      localObject2 = ((JSONObject)localObject1).optJSONArray("escaping");
      if (localObject2 != null)
      {
        zzgE = new int[((JSONArray)localObject2).length()];
        i = 0;
        while (i < zzgE.length)
        {
          zzgE[i] = ((JSONArray)localObject2).getInt(i);
          i += 1;
        }
      }
      if (((JSONObject)localObject1).has("function_id"))
      {
        type = 5;
        zzgA = ((JSONObject)localObject1).getString("function_id");
      }
    }
    for (;;)
    {
      paramArrayOfzza[paramInt] = localzza;
      paramSet.remove(Integer.valueOf(paramInt));
      return localzza;
      if (((JSONObject)localObject1).has("macro_reference"))
      {
        type = 4;
        zzgF = true;
        zzgz = zzde.zzg(zza(((JSONObject)localObject1).getInt("macro_reference"), paramJSONArray, paramArrayOfzza, paramSet));
      }
      else if (((JSONObject)localObject1).has("template_token"))
      {
        type = 7;
        zzgF = true;
        localObject1 = ((JSONObject)localObject1).getJSONArray("template_token");
        zzgD = new zzd.zza[((JSONArray)localObject1).length()];
        i = j;
        while (i < zzgD.length)
        {
          zzgD[i] = zza(((JSONArray)localObject1).getInt(i), paramJSONArray, paramArrayOfzza, paramSet);
          i += 1;
        }
      }
      else
      {
        type = 3;
        zzgF = true;
        i = ((JSONObject)localObject1).length();
        zzgx = new zzd.zza[i];
        zzgy = new zzd.zza[i];
        localObject2 = ((JSONObject)localObject1).keys();
        i = 0;
        while (((Iterator)localObject2).hasNext())
        {
          String str = (String)((Iterator)localObject2).next();
          zzgx[i] = zza(new Integer(str).intValue(), paramJSONArray, paramArrayOfzza, paramSet);
          zzgy[i] = zza(((JSONObject)localObject1).getInt(str), paramJSONArray, paramArrayOfzza, paramSet);
          i += 1;
        }
        continue;
        if ((localObject1 instanceof String))
        {
          zzgv = ((String)localObject1);
          type = 1;
        }
        else if ((localObject1 instanceof Boolean))
        {
          zzgC = ((Boolean)localObject1).booleanValue();
          type = 8;
        }
        else if ((localObject1 instanceof Integer))
        {
          zzgB = ((Integer)localObject1).intValue();
          type = 6;
        }
        else
        {
          zzdw("Invalid value type: " + localObject1);
        }
      }
    }
  }
  
  static zzvl.zza zza(JSONObject paramJSONObject, JSONArray paramJSONArray1, JSONArray paramJSONArray2, zzd.zza[] paramArrayOfzza, int paramInt)
  {
    zzvl.zzb localzzb = zzvl.zza.zzuu();
    paramJSONObject = paramJSONObject.getJSONArray("property");
    paramInt = 0;
    if (paramInt < paramJSONObject.length())
    {
      Object localObject = (JSONObject)zza(paramJSONArray1, paramJSONObject.getInt(paramInt), "properties");
      String str = (String)zza(paramJSONArray2, ((JSONObject)localObject).getInt("key"), "key");
      localObject = (zzd.zza)zza(paramArrayOfzza, ((JSONObject)localObject).getInt("value"), "value");
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
  
  static zzvl.zze zza(JSONObject paramJSONObject, List<zzvl.zza> paramList1, List<zzvl.zza> paramList2, List<zzvl.zza> paramList3, zzd.zza[] paramArrayOfzza)
  {
    zzvl.zzf localzzf = zzvl.zze.zzuB();
    JSONArray localJSONArray1 = paramJSONObject.optJSONArray("positive_predicate");
    JSONArray localJSONArray2 = paramJSONObject.optJSONArray("negative_predicate");
    JSONArray localJSONArray3 = paramJSONObject.optJSONArray("add_tag");
    JSONArray localJSONArray4 = paramJSONObject.optJSONArray("remove_tag");
    JSONArray localJSONArray5 = paramJSONObject.optJSONArray("add_tag_rule_name");
    JSONArray localJSONArray6 = paramJSONObject.optJSONArray("remove_tag_rule_name");
    JSONArray localJSONArray7 = paramJSONObject.optJSONArray("add_macro");
    JSONArray localJSONArray8 = paramJSONObject.optJSONArray("remove_macro");
    JSONArray localJSONArray9 = paramJSONObject.optJSONArray("add_macro_rule_name");
    paramJSONObject = paramJSONObject.optJSONArray("remove_macro_rule_name");
    int i;
    if (localJSONArray1 != null)
    {
      i = 0;
      while (i < localJSONArray1.length())
      {
        localzzf.zzd((zzvl.zza)paramList3.get(localJSONArray1.getInt(i)));
        i += 1;
      }
    }
    if (localJSONArray2 != null)
    {
      i = 0;
      while (i < localJSONArray2.length())
      {
        localzzf.zze((zzvl.zza)paramList3.get(localJSONArray2.getInt(i)));
        i += 1;
      }
    }
    if (localJSONArray3 != null)
    {
      i = 0;
      while (i < localJSONArray3.length())
      {
        localzzf.zzf((zzvl.zza)paramList1.get(localJSONArray3.getInt(i)));
        i += 1;
      }
    }
    if (localJSONArray4 != null)
    {
      i = 0;
      while (i < localJSONArray4.length())
      {
        localzzf.zzg((zzvl.zza)paramList1.get(localJSONArray4.getInt(i)));
        i += 1;
      }
    }
    if (localJSONArray5 != null)
    {
      i = 0;
      while (i < localJSONArray5.length())
      {
        localzzf.zzdz(getIntzzgv);
        i += 1;
      }
    }
    if (localJSONArray6 != null)
    {
      i = 0;
      while (i < localJSONArray6.length())
      {
        localzzf.zzdA(getIntzzgv);
        i += 1;
      }
    }
    if (localJSONArray7 != null)
    {
      i = 0;
      while (i < localJSONArray7.length())
      {
        localzzf.zzh((zzvl.zza)paramList2.get(localJSONArray7.getInt(i)));
        i += 1;
      }
    }
    if (localJSONArray8 != null)
    {
      i = 0;
      while (i < localJSONArray8.length())
      {
        localzzf.zzi((zzvl.zza)paramList2.get(localJSONArray8.getInt(i)));
        i += 1;
      }
    }
    if (localJSONArray9 != null)
    {
      i = 0;
      while (i < localJSONArray9.length())
      {
        localzzf.zzdB(getIntzzgv);
        i += 1;
      }
    }
    if (paramJSONObject != null)
    {
      i = 0;
      while (i < paramJSONObject.length())
      {
        localzzf.zzdC(getIntzzgv);
        i += 1;
      }
    }
    return localzzf.zzuM();
  }
  
  private static <T> T zza(JSONArray paramJSONArray, int paramInt, String paramString)
  {
    if ((paramInt >= 0) && (paramInt < paramJSONArray.length())) {
      try
      {
        paramJSONArray = paramJSONArray.get(paramInt);
        return paramJSONArray;
      }
      catch (JSONException paramJSONArray) {}
    }
    zzdw("Index out of bounds detected: " + paramInt + " in " + paramString);
    return null;
  }
  
  private static <T> T zza(T[] paramArrayOfT, int paramInt, String paramString)
  {
    if ((paramInt < 0) || (paramInt >= paramArrayOfT.length)) {
      zzdw("Index out of bounds detected: " + paramInt + " in " + paramString);
    }
    return paramArrayOfT[paramInt];
  }
  
  static List<zzvl.zza> zza(JSONArray paramJSONArray1, JSONArray paramJSONArray2, JSONArray paramJSONArray3, zzd.zza[] paramArrayOfzza)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray1.length())
    {
      localArrayList.add(zza(paramJSONArray1.getJSONObject(i), paramJSONArray2, paramJSONArray3, paramArrayOfzza, i));
      i += 1;
    }
    return localArrayList;
  }
  
  static zzvl.zzc zzdd(String paramString)
  {
    paramString = new JSONObject(paramString);
    Object localObject1 = paramString.get("resource");
    zzd.zza[] arrayOfzza;
    Object localObject3;
    List localList1;
    List localList2;
    if ((localObject1 instanceof JSONObject))
    {
      localObject2 = (JSONObject)localObject1;
      localObject1 = zzvl.zzc.zzux();
      arrayOfzza = zzf((JSONObject)localObject2);
      localObject3 = ((JSONObject)localObject2).getJSONArray("properties");
      Object localObject4 = ((JSONObject)localObject2).getJSONArray("key");
      localList1 = zza(((JSONObject)localObject2).getJSONArray("tags"), (JSONArray)localObject3, (JSONArray)localObject4, arrayOfzza);
      localList2 = zza(((JSONObject)localObject2).getJSONArray("predicates"), (JSONArray)localObject3, (JSONArray)localObject4, arrayOfzza);
      localObject3 = zza(((JSONObject)localObject2).getJSONArray("macros"), (JSONArray)localObject3, (JSONArray)localObject4, arrayOfzza);
      localObject4 = ((List)localObject3).iterator();
      while (((Iterator)localObject4).hasNext()) {
        ((zzvl.zzd)localObject1).zzc((zzvl.zza)((Iterator)localObject4).next());
      }
    }
    throw new zzvl.zzg("Resource map not found");
    Object localObject2 = ((JSONObject)localObject2).getJSONArray("rules");
    int i = 0;
    while (i < ((JSONArray)localObject2).length())
    {
      ((zzvl.zzd)localObject1).zzb(zza(((JSONArray)localObject2).getJSONObject(i), localList1, (List)localObject3, localList2, arrayOfzza));
      i += 1;
    }
    ((zzvl.zzd)localObject1).zzdy("1");
    ((zzvl.zzd)localObject1).zzhk(1);
    paramString.optJSONArray("runtime");
    return ((zzvl.zzd)localObject1).zzuA();
  }
  
  private static void zzdw(String paramString)
  {
    zzbf.zzZ(paramString);
    throw new zzvl.zzg(paramString);
  }
  
  static zzd.zza[] zzf(JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.opt("values");
    zzd.zza[] arrayOfzza;
    if ((paramJSONObject instanceof JSONArray))
    {
      paramJSONObject = (JSONArray)paramJSONObject;
      arrayOfzza = new zzd.zza[paramJSONObject.length()];
      int i = 0;
      while (i < arrayOfzza.length)
      {
        zza(i, paramJSONObject, arrayOfzza, new HashSet(0));
        i += 1;
      }
    }
    throw new zzvl.zzg("Missing Values list");
    return arrayOfzza;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */