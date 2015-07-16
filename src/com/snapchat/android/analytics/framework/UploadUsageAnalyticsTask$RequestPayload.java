package com.snapchat.android.analytics.framework;

import com.google.gson.annotations.SerializedName;
import qc;
import ud;

@ud
public class UploadUsageAnalyticsTask$RequestPayload
  extends qc
{
  @SerializedName("events")
  final String a;
  
  UploadUsageAnalyticsTask$RequestPayload(UploadUsageAnalyticsTask paramUploadUsageAnalyticsTask, String paramString)
  {
    a = paramString;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.UploadUsageAnalyticsTask.RequestPayload
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */