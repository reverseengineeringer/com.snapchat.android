import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.snapchat.android.model.GeofilterMarkup;

public final class aiq
  implements air<Bitmap, GeofilterMarkup>
{
  private Bitmap a;
  private GeofilterMarkup b;
  
  public aiq(Bitmap paramBitmap, GeofilterMarkup paramGeofilterMarkup)
  {
    a = paramBitmap;
    b = paramGeofilterMarkup;
  }
  
  public final void a(Bitmap paramBitmap)
  {
    if ((a == null) || (paramBitmap == null)) {
      return;
    }
    Canvas localCanvas = new Canvas(paramBitmap);
    Paint localPaint = new Paint(1);
    localPaint.setDither(true);
    Object localObject = b.layoutParameters;
    int i = (int)(xOffset * paramBitmap.getWidth());
    int j = (int)(yOffset * paramBitmap.getHeight());
    int k = (int)((xOffset + xSize) * paramBitmap.getWidth());
    int m = (int)((yOffset + ySize) * paramBitmap.getHeight());
    localCanvas.save();
    localCanvas.rotate(rotation, (k - i) / 2 + i, (m - j) / 2 + j);
    paramBitmap = new Rect(i, j, k, m);
    localObject = new Rect(0, 0, a.getWidth(), a.getHeight());
    localCanvas.drawBitmap(a, (Rect)localObject, paramBitmap, localPaint);
    localCanvas.restore();
  }
}

/* Location:
 * Qualified Name:     aiq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */