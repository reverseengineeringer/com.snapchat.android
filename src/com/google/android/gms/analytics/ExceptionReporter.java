package com.google.android.gms.analytics;

import android.content.Context;
import java.util.ArrayList;

public class ExceptionReporter
  implements Thread.UncaughtExceptionHandler
{
  private final Context mContext;
  private final Thread.UncaughtExceptionHandler zzBK;
  private final Tracker zzBL;
  private ExceptionParser zzBM;
  private GoogleAnalytics zzBN;
  
  public ExceptionReporter(Tracker paramTracker, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, Context paramContext)
  {
    if (paramTracker == null) {
      throw new NullPointerException("tracker cannot be null");
    }
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    zzBK = paramUncaughtExceptionHandler;
    zzBL = paramTracker;
    zzBM = new StandardExceptionParser(paramContext, new ArrayList());
    mContext = paramContext.getApplicationContext();
    paramContext = new StringBuilder("ExceptionReporter created, original handler is ");
    if (paramUncaughtExceptionHandler == null) {}
    for (paramTracker = "null";; paramTracker = paramUncaughtExceptionHandler.getClass().getName())
    {
      zzae.zzab(paramTracker);
      return;
    }
  }
  
  public ExceptionParser getExceptionParser()
  {
    return zzBM;
  }
  
  public void setExceptionParser(ExceptionParser paramExceptionParser)
  {
    zzBM = paramExceptionParser;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Object localObject = "UncaughtException";
    if (zzBM != null) {
      if (paramThread == null) {
        break label112;
      }
    }
    label112:
    for (localObject = paramThread.getName();; localObject = null)
    {
      localObject = zzBM.getDescription((String)localObject, paramThrowable);
      zzae.zzab("Tracking Exception: " + (String)localObject);
      zzBL.send(new HitBuilders.ExceptionBuilder().setDescription((String)localObject).setFatal(true).build());
      localObject = zzfC();
      ((GoogleAnalytics)localObject).dispatchLocalHits();
      ((GoogleAnalytics)localObject).zzfj();
      if (zzBK != null)
      {
        zzae.zzab("Passing exception to original handler.");
        zzBK.uncaughtException(paramThread, paramThrowable);
      }
      return;
    }
  }
  
  GoogleAnalytics zzfC()
  {
    if (zzBN == null) {
      zzBN = GoogleAnalytics.getInstance(mContext);
    }
    return zzBN;
  }
  
  Thread.UncaughtExceptionHandler zzfD()
  {
    return zzBK;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ExceptionReporter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */