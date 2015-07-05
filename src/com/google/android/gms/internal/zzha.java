package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@zzgi
class zzha
{
  private int zzvR;
  private final List<String> zzxQ;
  private final List<String> zzxR;
  private final String zzxS;
  private final String zzxT;
  private final String zzxU;
  private final String zzxV;
  private final boolean zzxW;
  private String zzxX;
  private final String zzxv;
  
  public zzha(int paramInt, Map<String, String> paramMap)
  {
    zzxX = ((String)paramMap.get("url"));
    zzxT = ((String)paramMap.get("base_uri"));
    zzxU = ((String)paramMap.get("post_parameters"));
    zzxW = parseBoolean((String)paramMap.get("drt_include"));
    zzxS = ((String)paramMap.get("activation_overlay_url"));
    zzxR = zzQ((String)paramMap.get("check_packages"));
    zzxv = ((String)paramMap.get("request_id"));
    zzxV = ((String)paramMap.get("type"));
    zzxQ = zzQ((String)paramMap.get("errors"));
    zzvR = paramInt;
  }
  
  private static boolean parseBoolean(String paramString)
  {
    return (paramString != null) && ((paramString.equals("1")) || (paramString.equals("true")));
  }
  
  private List<String> zzQ(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return Arrays.asList(paramString.split(","));
  }
  
  public int getErrorCode()
  {
    return zzvR;
  }
  
  public String getRequestId()
  {
    return zzxv;
  }
  
  public String getType()
  {
    return zzxV;
  }
  
  public String getUrl()
  {
    return zzxX;
  }
  
  public void setUrl(String paramString)
  {
    zzxX = paramString;
  }
  
  public List<String> zzdU()
  {
    return zzxQ;
  }
  
  public String zzdV()
  {
    return zzxU;
  }
  
  public boolean zzdW()
  {
    return zzxW;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */