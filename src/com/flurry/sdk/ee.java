package com.flurry.sdk;

import java.util.Comparator;

public class ee
  implements Comparator<Runnable>
{
  private static final String a = ee.class.getSimpleName();
  
  private int a(Runnable paramRunnable)
  {
    int i = Integer.MAX_VALUE;
    if (paramRunnable != null)
    {
      if (!(paramRunnable instanceof ef)) {
        break label36;
      }
      paramRunnable = (fd)((ef)paramRunnable).a();
      if (paramRunnable == null) {
        break label84;
      }
    }
    label36:
    label84:
    for (i = paramRunnable.i();; i = Integer.MAX_VALUE)
    {
      return i;
      if ((paramRunnable instanceof fd)) {
        return ((fd)paramRunnable).i();
      }
      el.a(6, a, "Unknown runnable class: " + paramRunnable.getClass().getName());
      return Integer.MAX_VALUE;
    }
  }
  
  public int a(Runnable paramRunnable1, Runnable paramRunnable2)
  {
    int i = a(paramRunnable1);
    int j = a(paramRunnable2);
    if (i < j) {
      return -1;
    }
    if (i > j) {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */