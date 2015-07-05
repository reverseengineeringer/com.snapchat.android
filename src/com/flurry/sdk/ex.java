package com.flurry.sdk;

public class ex
{
  private static long a = 1000L;
  private static ex b = null;
  private final ey c = new ey();
  
  public ex()
  {
    c.a(a);
    c.a(true);
  }
  
  public static ex a()
  {
    try
    {
      if (b == null) {
        b = new ex();
      }
      ex localex = b;
      return localex;
    }
    finally {}
  }
  
  public void a(ey.a parama)
  {
    try
    {
      c.a(parama);
      if ((!c.c()) && (c.d() > 0)) {
        c.a();
      }
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  public boolean b(ey.a parama)
  {
    try
    {
      boolean bool = c.b(parama);
      if (c.d() == 0) {
        c.b();
      }
      return bool;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */