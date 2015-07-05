package com.flurry.sdk;

import android.widget.Toast;

class dd$1
  implements ei.a<byte[], Void>
{
  dd$1(dd paramdd, String paramString1, String paramString2) {}
  
  public void a(ei<byte[], Void> paramei, Void paramVoid)
  {
    final int i = paramei.e();
    if (i > 0)
    {
      el.d(dd.b(), "FlurryDataSender: report " + a + " sent. HTTP response: " + i);
      if ((el.c() <= 3) && (el.d())) {
        do.a().a(new Runnable()
        {
          public void run()
          {
            Toast.makeText(do.a().b(), "SD HTTP Response Code: " + i, 0).show();
          }
        });
      }
      c.a(a, b, i);
      c.d();
      return;
    }
    c.b(a, b);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */