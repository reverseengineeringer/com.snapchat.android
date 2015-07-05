package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class zzwt<M extends zzws<M>, T>
{
  public final int tag;
  protected final int type;
  protected final Class<T> zzaHC;
  protected final boolean zzaHD;
  
  private zzwt(int paramInt1, Class<T> paramClass, int paramInt2, boolean paramBoolean)
  {
    type = paramInt1;
    zzaHC = paramClass;
    tag = paramInt2;
    zzaHD = paramBoolean;
  }
  
  @Deprecated
  public static <M extends zzws<M>, T extends zzwy> zzwt<M, T> zza(int paramInt1, Class<T> paramClass, int paramInt2)
  {
    return new zzwt(paramInt1, paramClass, paramInt2, false);
  }
  
  private T zzy(List<zzxa> paramList)
  {
    int j = 0;
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      localObject = (zzxa)paramList.get(i);
      if (zzaHN.length != 0) {
        zza((zzxa)localObject, localArrayList);
      }
      i += 1;
    }
    int k = localArrayList.size();
    if (k == 0)
    {
      paramList = null;
      return paramList;
    }
    Object localObject = zzaHC.cast(Array.newInstance(zzaHC.getComponentType(), k));
    i = j;
    for (;;)
    {
      paramList = (List<zzxa>)localObject;
      if (i >= k) {
        break;
      }
      Array.set(localObject, i, localArrayList.get(i));
      i += 1;
    }
  }
  
  private T zzz(List<zzxa> paramList)
  {
    if (paramList.isEmpty()) {
      return null;
    }
    paramList = (zzxa)paramList.get(paramList.size() - 1);
    return (T)zzaHC.cast(zzz(zzwq.zzt(zzaHN)));
  }
  
  int zzF(Object paramObject)
  {
    if (zzaHD) {
      return zzG(paramObject);
    }
    return zzH(paramObject);
  }
  
  protected int zzG(Object paramObject)
  {
    int j = 0;
    int m = Array.getLength(paramObject);
    int i = 0;
    while (i < m)
    {
      int k = j;
      if (Array.get(paramObject, i) != null) {
        k = j + zzH(Array.get(paramObject, i));
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  protected int zzH(Object paramObject)
  {
    int i = zzxb.zziI(tag);
    switch (type)
    {
    default: 
      throw new IllegalArgumentException("Unknown type " + type);
    case 10: 
      return zzwr.zzb(i, (zzwy)paramObject);
    }
    return zzwr.zzc(i, (zzwy)paramObject);
  }
  
  protected void zza(zzxa paramzzxa, List<Object> paramList)
  {
    paramList.add(zzz(zzwq.zzt(zzaHN)));
  }
  
  void zza(Object paramObject, zzwr paramzzwr)
  {
    if (zzaHD)
    {
      zzc(paramObject, paramzzwr);
      return;
    }
    zzb(paramObject, paramzzwr);
  }
  
  protected void zzb(Object paramObject, zzwr paramzzwr)
  {
    for (;;)
    {
      try
      {
        paramzzwr.zziA(tag);
        switch (type)
        {
        case 10: 
          throw new IllegalArgumentException("Unknown type " + type);
        }
      }
      catch (IOException paramObject)
      {
        throw new IllegalStateException((Throwable)paramObject);
      }
      paramObject = (zzwy)paramObject;
      int i = zzxb.zziI(tag);
      paramzzwr.zzb((zzwy)paramObject);
      paramzzwr.zzC(i, 4);
      return;
      paramzzwr.zzc((zzwy)paramObject);
      return;
    }
  }
  
  protected void zzc(Object paramObject, zzwr paramzzwr)
  {
    int j = Array.getLength(paramObject);
    int i = 0;
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      if (localObject != null) {
        zzb(localObject, paramzzwr);
      }
      i += 1;
    }
  }
  
  final T zzx(List<zzxa> paramList)
  {
    if (paramList == null) {
      return null;
    }
    if (zzaHD) {
      return (T)zzy(paramList);
    }
    return (T)zzz(paramList);
  }
  
  protected Object zzz(zzwq paramzzwq)
  {
    Class localClass;
    if (zzaHD) {
      localClass = zzaHC.getComponentType();
    }
    for (;;)
    {
      try
      {
        switch (type)
        {
        case 10: 
          throw new IllegalArgumentException("Unknown type " + type);
        }
      }
      catch (InstantiationException paramzzwq)
      {
        throw new IllegalArgumentException("Error creating instance of class " + localClass, paramzzwq);
        localClass = zzaHC;
        continue;
        zzwy localzzwy = (zzwy)localClass.newInstance();
        paramzzwq.zza(localzzwy, zzxb.zziI(tag));
        return localzzwy;
        localzzwy = (zzwy)localClass.newInstance();
        paramzzwq.zza(localzzwy);
        return localzzwy;
      }
      catch (IllegalAccessException paramzzwq)
      {
        throw new IllegalArgumentException("Error creating instance of class " + localClass, paramzzwq);
      }
      catch (IOException paramzzwq)
      {
        throw new IllegalArgumentException("Error reading extension field", paramzzwq);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzwt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */