import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import java.util.ArrayList;

final class ae$4
  extends ae.c
{
  ae$4(ae paramae, RecyclerView.s params, ViewPropertyAnimatorCompat paramViewPropertyAnimatorCompat)
  {
    super((byte)0);
  }
  
  public final void onAnimationEnd(View paramView)
  {
    b.setListener(null);
    ViewCompat.setAlpha(paramView, 1.0F);
    c.d(a);
    c.f.remove(a);
    c.c();
  }
  
  public final void onAnimationStart(View paramView) {}
}

/* Location:
 * Qualified Name:     ae.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */