package com.google.android.gms.internal;

import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzx;
import java.util.List;

public final class zzmh
{
  public static Scope[] zzi(List<String> paramList)
  {
    zzx.zzb(paramList, "scopeStrings can't be null.");
    Scope[] arrayOfScope = new Scope[paramList.size()];
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      arrayOfScope[i] = new Scope((String)paramList.get(i));
      i += 1;
    }
    return arrayOfScope;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzmh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */