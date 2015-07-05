package com.flurry.sdk;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class em
  implements eq
{
  private static em a;
  private final List<eq> b = b();
  
  public static em a()
  {
    try
    {
      if (a == null) {
        a = new em();
      }
      em localem = a;
      return localem;
    }
    finally {}
  }
  
  private static List<eq> b()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new en("com.flurry.android.impl.analytics.FlurryAnalyticsModule", 10));
    localArrayList.add(new en("com.flurry.android.impl.ads.FlurryAdModule", 10));
    return Collections.unmodifiableList(localArrayList);
  }
  
  public final void a(dj paramdj)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((eq)localIterator.next()).a(paramdj);
    }
  }
  
  public final void a(dj paramdj, Context paramContext)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((eq)localIterator.next()).a(paramdj, paramContext);
    }
  }
  
  public final void b(dj paramdj, Context paramContext)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((eq)localIterator.next()).b(paramdj, paramContext);
    }
  }
  
  public final void c(dj paramdj, Context paramContext)
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((eq)localIterator.next()).c(paramdj, paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.em
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */