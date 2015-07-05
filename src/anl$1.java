import android.graphics.Bitmap;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode;
import com.snapchat.android.rendering.SnapMediaRenderer.a;

final class anl$1
  implements avy
{
  anl$1(anl paramanl, SnapMediaRenderer.a parama, aje paramaje) {}
  
  public final void a(avo paramavo, avx paramavx)
  {
    Timber.c(anl.e(), "SNAP-VIEW: onBitmap loaded for %s", new Object[] { anl.a(c) });
    paramavo = mBitmap;
    if (paramavo == null)
    {
      a.a(SnapMediaRenderer.ErrorCode.MEDIA_UNAVAILABLE_LOCALLY);
      return;
    }
    paramavx = mImageView;
    if (paramavx != null) {
      paramavx.setImageBitmap(paramavo);
    }
    int i = (int)b.F();
    a.a(i * 1000, paramavo.getWidth(), paramavo.getHeight());
  }
}

/* Location:
 * Qualified Name:     anl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */