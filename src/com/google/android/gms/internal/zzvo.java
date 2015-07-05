package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.tagmanager.zzbf;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

public class zzvo
{
  private String zzaya = "https://www.google-analytics.com";
  
  private String zzdv(String paramString)
  {
    try
    {
      String str = URLEncoder.encode(paramString, "UTF-8").replaceAll("\\+", "%20");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      zzbf.zzZ("Cannot encode the string: " + paramString);
    }
    return "";
  }
  
  public void zzdx(String paramString)
  {
    zzaya = paramString;
    zzbf.zzaa("The Ctfe server endpoint was changed to: " + paramString);
  }
  
  public String zzv(List<zzve> paramList)
  {
    return zzaya + "/gtm/android?" + zzw(paramList);
  }
  
  String zzw(List<zzve> paramList)
  {
    boolean bool = true;
    if (paramList.size() <= 1) {}
    for (;;)
    {
      zzx.zzO(bool);
      if (!paramList.isEmpty()) {
        break;
      }
      return "";
      bool = false;
    }
    zzve localzzve = (zzve)paramList.get(0);
    StringBuilder localStringBuilder;
    if (!localzzve.zzul().trim().equals(""))
    {
      paramList = localzzve.zzul().trim();
      localStringBuilder = new StringBuilder();
      if (localzzve.zzui() == null) {
        break label152;
      }
      localStringBuilder.append(localzzve.zzui());
    }
    for (;;)
    {
      localStringBuilder.append("=").append(zzdv(localzzve.getContainerId())).append("&pv=").append(zzdv(paramList));
      if (localzzve.zzuk()) {
        localStringBuilder.append("&gtm_debug=x");
      }
      return localStringBuilder.toString();
      paramList = "-1";
      break;
      label152:
      localStringBuilder.append("id");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */