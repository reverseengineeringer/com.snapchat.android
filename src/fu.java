import android.graphics.Picture;
import android.graphics.RectF;
import android.graphics.drawable.PictureDrawable;

public final class fu
{
  RectF a = null;
  private final Picture b;
  private final RectF c;
  private PictureDrawable d = null;
  
  fu(Picture paramPicture, RectF paramRectF)
  {
    b = paramPicture;
    c = paramRectF;
  }
  
  public final PictureDrawable a()
  {
    if (d == null) {
      d = new PictureDrawable(b);
    }
    return d;
  }
}

/* Location:
 * Qualified Name:     fu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */