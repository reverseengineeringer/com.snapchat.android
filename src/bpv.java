import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;

public final class bpv
{
  public static Rect a(View paramView)
  {
    paramView = paramView.getLayoutParams();
    if ((paramView instanceof ViewGroup.MarginLayoutParams))
    {
      paramView = (ViewGroup.MarginLayoutParams)paramView;
      return new Rect(leftMargin, topMargin, rightMargin, bottomMargin);
    }
    return new Rect();
  }
}

/* Location:
 * Qualified Name:     bpv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */