package com.snapchat.android.analytics.framework;

import android.os.Build;
import android.os.Build.VERSION;

public class ErrorMetric
  extends EasyMetric
{
  private final String f = "ErrorMetric";
  
  public ErrorMetric(String paramString)
  {
    super("ERROR: " + paramString);
    a("DEVICE", Build.DEVICE);
    a("SDK_INT", String.valueOf(Build.VERSION.SDK_INT));
  }
  
  public final ErrorMetric a(Throwable paramThrowable)
  {
    a("error_message", paramThrowable.getMessage());
    return this;
  }
  
  public final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    new StringBuilder("Reporting Error: ").append(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.ErrorMetric
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */