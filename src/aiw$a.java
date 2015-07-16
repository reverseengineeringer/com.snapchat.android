import android.graphics.Bitmap;
import com.snapchat.android.model.GeofilterMarkup;
import java.util.Iterator;
import java.util.List;

final class aiw$a
  implements ait.b
{
  private final ajr b;
  private final boolean c;
  
  aiw$a(aiw paramaiw, @chc ajr paramajr, boolean paramBoolean)
  {
    b = paramajr;
    c = paramBoolean;
  }
  
  public final void a(@chc Bitmap paramBitmap)
  {
    ajr localajr = b;
    for (;;)
    {
      synchronized (mCompositeLock)
      {
        mCompositeBitmap = paramBitmap;
        localajr = b;
        ??? = b;
        cht localcht = cht.c();
        paramBitmap = localcht.a(b.D().a(a, 100));
        Iterator localIterator = ((ajr)???).c().iterator();
        if (localIterator.hasNext())
        {
          GeofilterMarkup localGeofilterMarkup = (GeofilterMarkup)localIterator.next();
          ??? = paramBitmap;
          if (displaySchedule.a(localcht))
          {
            ??? = paramBitmap;
            if (displaySchedule.end.c(paramBitmap)) {
              ??? = displaySchedule.end;
            }
          }
          if ((!displaySchedule.start.b(localcht)) || (!displaySchedule.start.c((cic)???))) {
            break label214;
          }
          paramBitmap = displaySchedule.start;
        }
      }
      synchronized (mCompositeLock)
      {
        mCompositeBitmapExpiryTime = paramBitmap;
        if (c) {
          aiw.a(a);
        }
        return;
      }
      label214:
      paramBitmap = (Bitmap)???;
    }
  }
}

/* Location:
 * Qualified Name:     aiw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */