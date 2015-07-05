package com.flurry.sdk;

import java.util.Timer;
import java.util.TimerTask;

class dm
{
  private Timer a;
  private a b;
  private b c;
  
  dm(b paramb)
  {
    c = paramb;
  }
  
  public void a()
  {
    try
    {
      if (a != null)
      {
        a.cancel();
        a = null;
      }
      b = null;
      return;
    }
    finally {}
  }
  
  public void a(long paramLong)
  {
    try
    {
      if (b()) {
        a();
      }
      a = new Timer("FlurrySessionTimer");
      b = new a(c);
      a.schedule(b, paramLong);
      return;
    }
    finally {}
  }
  
  public boolean b()
  {
    return a != null;
  }
  
  class a
    extends TimerTask
  {
    private dm.b b;
    
    a(dm.b paramb)
    {
      b = paramb;
    }
    
    public void run()
    {
      a();
      if (b != null) {
        b.q();
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void q();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */