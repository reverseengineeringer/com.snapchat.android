import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import java.util.ArrayList;

final class ae$8
  extends ae.c
{
  ae$8(ae paramae, ae.a parama, ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat, View paramView)
  {
    super((byte)0);
  }
  
  public final void onAnimationEnd(View paramView)
  {
    b.setListener(null);
    ViewCompat.setAlpha(c, 1.0F);
    ViewCompat.setTranslationX(c, 0.0F);
    ViewCompat.setTranslationY(c, 0.0F);
    d.g(a.b);
    d.g.remove(a.b);
    d.c();
  }
  
  public final void onAnimationStart(View paramView) {}
}

/* Location:
 * Qualified Name:     ae.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */