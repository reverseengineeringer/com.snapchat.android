package in.srain.cube.views.ptr.header;

import bux;
import java.util.ArrayList;

final class StoreHouseHeader$a
  implements Runnable
{
  private int b = 0;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private boolean f = true;
  
  private StoreHouseHeader$a(StoreHouseHeader paramStoreHouseHeader) {}
  
  public final void run()
  {
    int j = b;
    int k = c;
    int i = 0;
    while (i < d)
    {
      int m = c * i + j % k;
      if (m <= b)
      {
        int n = a.a.size();
        bux localbux = (bux)a.a.get(m % n);
        localbux.setFillAfter(false);
        localbux.setFillEnabled(true);
        localbux.setFillBefore(false);
        localbux.setDuration(StoreHouseHeader.c(a));
        localbux.a(StoreHouseHeader.d(a), StoreHouseHeader.e(a));
      }
      i += 1;
    }
    b += 1;
    if (f) {
      a.postDelayed(this, e);
    }
  }
}

/* Location:
 * Qualified Name:     in.srain.cube.views.ptr.header.StoreHouseHeader.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */