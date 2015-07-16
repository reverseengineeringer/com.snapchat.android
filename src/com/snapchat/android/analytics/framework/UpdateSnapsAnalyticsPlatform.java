package com.snapchat.android.analytics.framework;

import all;
import all.a;
import android.app.Activity;
import aph;
import chc;
import chd;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class UpdateSnapsAnalyticsPlatform
  implements AnalyticsPlatform
{
  protected List<all> a = new ArrayList();
  private final aph b;
  
  public UpdateSnapsAnalyticsPlatform()
  {
    this(aph.a());
  }
  
  private UpdateSnapsAnalyticsPlatform(aph paramaph)
  {
    b = paramaph;
  }
  
  private void c()
  {
    try
    {
      if (a.size() > 100) {
        b.d();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final List<all> a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 29	com/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform:a	Ljava/util/List;
    //   6: invokeinterface 38 1 0
    //   11: istore_1
    //   12: iload_1
    //   13: ifgt +9 -> 22
    //   16: aconst_null
    //   17: astore_2
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_2
    //   21: areturn
    //   22: aload_0
    //   23: getfield 29	com/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform:a	Ljava/util/List;
    //   26: astore_2
    //   27: aload_0
    //   28: new 26	java/util/ArrayList
    //   31: dup
    //   32: invokespecial 27	java/util/ArrayList:<init>	()V
    //   35: putfield 29	com/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform:a	Ljava/util/List;
    //   38: goto -20 -> 18
    //   41: astore_2
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_2
    //   45: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	this	UpdateSnapsAnalyticsPlatform
    //   11	2	1	i	int
    //   17	10	2	localObject1	Object
    //   41	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	12	41	finally
    //   22	38	41	finally
  }
  
  public final void a(@chc Activity paramActivity) {}
  
  public final void a(@chc String paramString, @chd Map<String, Object> paramMap1, @chd Map<String, Object> paramMap2, @chd Map<String, Long> paramMap3, @chd Map<String, Long> paramMap4)
  {
    if ((PerformanceMetric.b(paramString)) && (!ReleaseManager.f()) && (Math.random() < 0.9D)) {}
    for (int i = 1; i != 0; i = 0) {
      return;
    }
    paramString = new all.a(paramString);
    paramString.a(paramMap1);
    paramString.a(paramMap2);
    if (paramMap3 != null)
    {
      paramMap1 = paramMap3.entrySet().iterator();
      while (paramMap1.hasNext())
      {
        paramMap2 = (Map.Entry)paramMap1.next();
        paramString.a((String)paramMap2.getKey(), Long.toString(((Long)paramMap2.getValue()).longValue()));
      }
    }
    if (paramMap4 != null)
    {
      paramMap1 = paramMap4.entrySet().iterator();
      while (paramMap1.hasNext())
      {
        paramMap2 = (Map.Entry)paramMap1.next();
        paramString.b((String)paramMap2.getKey(), Long.toString(((Long)paramMap2.getValue()).longValue()));
      }
    }
    a.add(paramString.a());
    c();
  }
  
  public final void a(List<all> paramList)
  {
    if (paramList != null) {}
    try
    {
      a.addAll(paramList);
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  public final List<all> b()
  {
    return a;
  }
  
  public final void b(@chc Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */