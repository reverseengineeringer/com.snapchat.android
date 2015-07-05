package com.flurry.sdk;

import java.io.PrintStream;
import java.io.PrintWriter;

public abstract class fc
  implements Runnable
{
  private static final String a = fc.class.getSimpleName();
  PrintStream g;
  PrintWriter h;
  
  public abstract void a();
  
  public final void run()
  {
    try
    {
      a();
      return;
    }
    catch (Throwable localThrowable)
    {
      if (g == null) {
        break label33;
      }
    }
    localThrowable.printStackTrace(g);
    for (;;)
    {
      el.a(6, a, "", localThrowable);
      return;
      label33:
      if (h != null) {
        localThrowable.printStackTrace(h);
      } else {
        localThrowable.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */