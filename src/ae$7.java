import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import java.util.ArrayList;

final class ae$7
  extends ae.c
{
  ae$7(ae paramae, ae.a parama, ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat)
  {
    super((byte)0);
  }
  
  public final void onAnimationEnd(View paramView)
  {
    b.setListener(null);
    ViewCompat.setAlpha(paramView, 1.0F);
    ViewCompat.setTranslationX(paramView, 0.0F);
    ViewCompat.setTranslationY(paramView, 0.0F);
    c.g(a.a);
    c.g.remove(a.a);
    c.c();
  }
  
  public final void onAnimationStart(View paramView) {}
}

/* Location:
 * Qualified Name:     ae.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */