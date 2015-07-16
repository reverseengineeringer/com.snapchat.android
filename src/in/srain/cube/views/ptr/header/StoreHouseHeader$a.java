package in.srain.cube.views.ptr.header;

import bvy;
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
        bvy localbvy = (bvy)a.a.get(m % n);
        localbvy.setFillAfter(false);
        localbvy.setFillEnabled(true);
        localbvy.setFillBefore(false);
        localbvy.setDuration(StoreHouseHeader.c(a));
        localbvy.a(StoreHouseHeader.d(a), StoreHouseHeader.e(a));
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