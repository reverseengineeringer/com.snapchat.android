import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

public final class boq
  implements ViewTreeObserver.OnPreDrawListener
{
  final bph a;
  final WeakReference<ImageView> b;
  bon c;
  
  boq(bph parambph, ImageView paramImageView, bon parambon)
  {
    a = parambph;
    b = new WeakReference(paramImageView);
    c = parambon;
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
    ((bph)localObject).a(localImageView, c);
    return true;
  }
}

/* Location:
 * Qualified Name:     boq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */