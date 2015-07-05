package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

@zzgi
public final class zzbv
{
  private String zzqa;
  private List<String> zzqb;
  private int zzqc = -1;
  
  public zzbv()
  {
    this((String)zzca.zzql.zzbY(), new ArrayList(), -1);
  }
  
  public zzbv(String paramString, List<String> paramList)
  {
    this(paramString, paramList, -1);
  }
  
  public zzbv(String paramString, List<String> paramList, int paramInt)
  {
    if (paramList != null)
    {
      zzqb = paramList;
      if (!TextUtils.isEmpty(paramString)) {
        break label57;
      }
      paramString = (String)zzca.zzql.zzbY();
    }
    label57:
    for (;;)
    {
      zzqa = paramString;
      zzqc = paramInt;
      return;
      paramList = new ArrayList();
      break;
    }
  }
  
  public final String zzbV()
  {
    return zzqa;
  }
  
  public final List<String> zzbW()
  {
    return zzqb;
  }
  
  public final int zzbX()
  {
    return zzqc;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */