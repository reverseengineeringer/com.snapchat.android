import android.widget.ImageView;
import com.snapchat.android.util.debug.ReleaseManager;

final class ael$1$2
  implements Runnable
{
  ael$1$2(ael.1 param1, ael.b paramb) {}
  
  public final void run()
  {
    afg localafg = b.d.a;
    ImageView localImageView = b.c;
    ael.b localb = a;
    bhp.a();
    if (a == null)
    {
      if (ReleaseManager.e()) {
        throw new IllegalStateException("Attempt to load brand icon but bitmap loader not initialized!");
      }
    }
    else
    {
      Object localObject = new awv.a();
      Integer localInteger = Integer.valueOf(2130837705);
      mResId = localInteger;
      mRequestId = Integer.toString(localInteger.intValue());
      mImageView = localImageView;
      mRequireExactDimensions = true;
      mWidth = localImageView.getMeasuredWidth();
      mHeight = localImageView.getMeasuredHeight();
      mExtras = null;
      localObject = ((awv.a)localObject).a();
      a.a((awv)localObject, new aww[] { new afg.2(localafg, localb, localImageView) });
    }
  }
}

/* Location:
 * Qualified Name:     ael.1.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */