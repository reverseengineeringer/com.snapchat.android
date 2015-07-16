package com.snapchat.android.analytics.framework;

import bal;
import com.google.gson.annotations.SerializedName;
import qc;
import ud;
import ul;

public class UploadUsageAnalyticsTask
  extends ul
{
  private final String a;
  
  public UploadUsageAnalyticsTask(String paramString)
  {
    a = paramString;
  }
  
  public String getUrl()
  {
    return bal.b("dummy") + "/analytics/bz";
  }
  
  @ud
  public class RequestPayload
    extends qc
  {
    @SerializedName("events")
    final String a;
    
    RequestPayload(String paramString)
    {
      a = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.UploadUsageAnalyticsTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */