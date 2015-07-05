import android.widget.ImageView;
import com.snapchat.android.util.debug.ReleaseManager;

final class adl$1$2
  implements Runnable
{
  adl$1$2(adl.1 param1, adl.b paramb) {}
  
  public final void run()
  {
    aeg localaeg = b.d.a;
    ImageView localImageView = b.c;
    adl.b localb = a;
    bgp.a();
    if (a == null)
    {
      if (ReleaseManager.e()) {
        throw new IllegalStateException("Attempt to load brand icon but bitmap loader not initialized!");
      }
    }
    else
    {
      Object localObject = new avx.a();
      Integer localInteger = Integer.valueOf(2130837705);
      mResId = localInteger;
      mRequestId = Integer.toString(localInteger.intValue());
      mImageView = localImageView;
      mRequireExactDimensions = true;
      mWidth = localImageView.getMeasuredWidth();
      mHeight = localImageView.getMeasuredHeight();
      mExtras = null;
      localObject = ((avx.a)localObject).a();
      a.a((avx)localObject, new avy[] { new aeg.2(localaeg, localb, localImageView) });
    }
  }
}

/* Location:
 * Qualified Name:     adl.1.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */