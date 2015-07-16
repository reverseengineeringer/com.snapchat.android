import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

public final class bpr
  implements ViewTreeObserver.OnPreDrawListener
{
  final bqi a;
  final WeakReference<ImageView> b;
  bpo c;
  
  bpr(bqi parambqi, ImageView paramImageView, bpo parambpo)
  {
    a = parambqi;
    b = new WeakReference(paramImageView);
    c = parambpo;
    paramImageView.getViewTreeObserver().addOnPreDrawListener(this);
  }
  
  public final void a()
  {
    c = null;
    Object localObject = (ImageView)b.get();
    if (localObject == null) {}
    do
    {
      return;
      localObject = ((ImageView)localObject).getViewTreeObserver();
    } while (!((ViewTreeObserver)localObject).isAlive());
    ((ViewTreeObserver)localObject).removeOnPreDrawListener(this);
  }
  
  public final boolean onPreDraw()
  {
    ImageView localImageView = (ImageView)b.get();
    if (localImageView == null) {}
    int i;
    int j;
    do
    {
      do
      {
        return true;
        localObject = localImageView.getViewTreeObserver();
      } while (!((ViewTreeObserver)localObject).isAlive());
      i = localImageView.getWidth();
      j = localImageView.getHeight();
    } while ((i <= 0) || (j <= 0));
    ((ViewTreeObserver)localObject).removeOnPreDrawListener(this);
    Object localObject = a;
    c = false;
    a.a(i, j);
    ((bqi)localObject).a(localImageView, c);
    return true;
  }
}

/* Location:
 * Qualified Name:     bpr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */