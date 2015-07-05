import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import com.snapchat.android.model.GeofilterMarkup;

public final class ahy
  implements ahv<String, GeofilterMarkup>
{
  private String a;
  private Typeface b;
  private GeofilterMarkup c;
  
  public ahy(String paramString, Typeface paramTypeface, GeofilterMarkup paramGeofilterMarkup)
  {
    a = paramString;
    b = paramTypeface;
    c = paramGeofilterMarkup;
  }
  
  public final void a(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return;
    }
    Canvas localCanvas = new Canvas(paramBitmap);
    Paint localPaint = new Paint(1);
    aix localaix = c.layoutParameters;
    Object localObject = c.displayParameters;
    localPaint.setColor(Color.parseColor(color));
    localPaint.setTextSize(size);
    localPaint.setTypeface(b);
    localObject = new Rect();
    localPaint.getTextBounds(a, 0, a.length(), (Rect)localObject);
    int i = (int)(xOffset * paramBitmap.getWidth());
    int j = (int)(yOffset * paramBitmap.getHeight());
    int k = ((Rect)localObject).width() / 2;
    int m = ((Rect)localObject).height() / 2;
    localCanvas.save();
    localCanvas.rotate(rotation, k + i, m + j);
    localCanvas.drawText(a, i, j, localPaint);
    localCanvas.restore();
  }
}

/* Location:
 * Qualified Name:     ahy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */