import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;

public final class avs
{
  private final avq mBitmapPool;
  
  public avs()
  {
    this(avq.a());
  }
  
  private avs(avq paramavq)
  {
    mBitmapPool = paramavq;
  }
  
  public final void a(@cgc ImageView paramImageView, boolean paramBoolean)
  {
    boolean bool = asu.SUPPORTS_UNEQUAL_SIZE_BITMAP_REUSE;
    if (paramImageView != null) {
      if ((!paramBoolean) && (!bool)) {
        break label73;
      }
    }
    label73:
    for (int i = 1;; i = 0)
    {
      Object localObject = paramImageView.getDrawable();
      if ((localObject != null) && ((localObject instanceof BitmapDrawable)) && (i != 0))
      {
        localObject = ((BitmapDrawable)localObject).getBitmap();
        if (localObject != null) {
          mBitmapPool.a((Bitmap)localObject);
        }
      }
      paramImageView.setImageBitmap(null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     avs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */