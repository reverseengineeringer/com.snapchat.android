package com.snapchat.android.analytics.framework;

import azm;
import com.google.gson.annotations.SerializedName;
import pl;
import tn;
import tv;

public class UploadUsageAnalyticsTask
  extends tv
{
  private final String a;
  
  public UploadUsageAnalyticsTask(String paramString)
  {
    a = paramString;
  }
  
  public final String n_()
  {
    return azm.b("dummy") + "/analytics/bz";
  }
  
  @tn
  public class RequestPayload
    extends pl
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