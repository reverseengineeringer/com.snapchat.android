package com.flurry.sdk;

import java.util.TimerTask;

class dm$a
  extends TimerTask
{
  private dm.b b;
  
  dm$a(dm paramdm, dm.b paramb)
  {
    b = paramb;
  }
  
  public void run()
  {
    a.a();
    if (b != null) {
      b.q();
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */