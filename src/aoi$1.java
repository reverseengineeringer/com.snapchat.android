import android.graphics.Bitmap;
import android.widget.ImageView;
import com.snapchat.android.rendering.SnapMediaRenderer.ErrorCode;
import com.snapchat.android.rendering.SnapMediaRenderer.a;

final class aoi$1
  implements aww
{
  aoi$1(aoi paramaoi, SnapMediaRenderer.a parama, aka paramaka) {}
  
  public final void a(awm paramawm, awv paramawv)
  {
    aoi.a(c);
    paramawm = mBitmap;
    if (paramawm == null)
    {
      a.a(SnapMediaRenderer.ErrorCode.MEDIA_UNAVAILABLE_LOCALLY);
      return;
    }
    paramawv = mImageView;
    if (paramawv != null) {
      paramawv.setImageBitmap(paramawm);
    }
    int i = (int)b.G();
    a.a(i * 1000, paramawm.getWidth(), paramawm.getHeight());
  }
}

/* Location:
 * Qualified Name:     aoi.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */