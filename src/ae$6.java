import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import java.util.ArrayList;

final class ae$6
  extends ae.c
{
  ae$6(ae paramae, RecyclerView.s params, int paramInt1, int paramInt2, ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat)
  {
    super((byte)0);
  }
  
  public final void onAnimationCancel(View paramView)
  {
    if (b != 0) {
      ViewCompat.setTranslationX(paramView, 0.0F);
    }
    if (c != 0) {
      ViewCompat.setTranslationY(paramView, 0.0F);
    }
  }
  
  public final void onAnimationEnd(View paramView)
  {
    d.setListener(null);
    e.e(a);
    e.e.remove(a);
    e.c();
  }
  
  public final void onAnimationStart(View paramView) {}
}

/* Location:
 * Qualified Name:     ae.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */