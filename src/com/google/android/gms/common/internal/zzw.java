package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class zzw
{
  public static boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public static int hashCode(Object... paramVarArgs)
  {
    return Arrays.hashCode(paramVarArgs);
  }
  
  public static zza zzk(Object paramObject)
  {
    return new zza(paramObject, null);
  }
  
  public static final class zza
  {
    private final List<String> zzQr;
    private final Object zzzF;
    
    private zza(Object paramObject)
    {
      zzzF = zzx.zzl(paramObject);
      zzQr = new ArrayList();
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(100).append(zzzF.getClass().getSimpleName()).append('{');
      int j = zzQr.size();
      int i = 0;
      while (i < j)
      {
        localStringBuilder.append((String)zzQr.get(i));
        if (i < j - 1) {
          localStringBuilder.append(", ");
        }
        i += 1;
      }
      return '}';
    }
    
    public final zza zza(String paramString, Object paramObject)
    {
      zzQr.add((String)zzx.zzl(paramString) + "=" + String.valueOf(paramObject));
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */