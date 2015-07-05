import android.graphics.Bitmap;
import com.snapchat.android.model.GeofilterMarkup;
import java.util.Iterator;
import java.util.List;

final class aia$a
  implements ahx.b
{
  private final aiv b;
  private final boolean c;
  
  aia$a(aia paramaia, @cgb aiv paramaiv, boolean paramBoolean)
  {
    b = paramaiv;
    c = paramBoolean;
  }
  
  public final void a(@cgb Bitmap paramBitmap)
  {
    aiv localaiv = b;
    for (;;)
    {
      synchronized (mCompositeLock)
      {
        mCompositeBitmap = paramBitmap;
        localaiv = b;
        ??? = b;
        cgs localcgs = cgs.c();
        paramBitmap = localcgs.a(b.D().a(a, 100));
        Iterator localIterator = ((aiv)???).c().iterator();
        if (localIterator.hasNext())
        {
          GeofilterMarkup localGeofilterMarkup = (GeofilterMarkup)localIterator.next();
          ??? = paramBitmap;
          if (displaySchedule.a(localcgs))
          {
            ??? = paramBitmap;
            if (displaySchedule.end.c(paramBitmap)) {
              ??? = displaySchedule.end;
            }
          }
          if ((!displaySchedule.start.b(localcgs)) || (!displaySchedule.start.c((chb)???))) {
            break label214;
          }
          paramBitmap = displaySchedule.start;
        }
      }
      synchronized (mCompositeLock)
      {
        mCompositeBitmapExpiryTime = paramBitmap;
        if (c) {
          aia.a(a);
        }
        return;
      }
      label214:
      paramBitmap = (Bitmap)???;
    }
  }
}

/* Location:
 * Qualified Name:     aia.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */