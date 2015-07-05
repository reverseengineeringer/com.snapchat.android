import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

final class bov
  extends boj<ImageView>
{
  bon m;
  
  bov(bpd parambpd, ImageView paramImageView, bpg parambpg, int paramInt1, int paramInt2, int paramInt3, Drawable paramDrawable, String paramString, Object paramObject, bon parambon, boolean paramBoolean)
  {
    super(parambpd, paramImageView, parambpg, paramInt1, paramInt2, paramInt3, paramDrawable, paramString, paramObject, paramBoolean);
    m = parambon;
  }
  
  public final void a()
  {
    ImageView localImageView = (ImageView)c.get();
    if (localImageView == null) {}
    do
    {
      return;
      if (g != 0)
      {
        localImageView.setImageResource(g);
        return;
      }
    } while (h == null);
    localImageView.setImageDrawable(h);
  }
  
  public final void a(Bitmap paramBitmap, bpd.d paramd)
  {
    if (paramBitmap == null) {
      throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", new Object[] { this }));
    }
    ImageView localImageView = (ImageView)c.get();
    if (localImageView == null) {
      return;
    }
    Context localContext = a.f;
    boolean bool = a.n;
    bpe.a(localImageView, localContext, paramBitmap, paramd, d, bool);
  }
  
  final void b()
  {
    super.b();
    if (m != null) {
      m = null;
    }
  }
}

/* Location:
 * Qualified Name:     bov
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */