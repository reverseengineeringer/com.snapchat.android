import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import com.snapchat.android.ui.ImageResourceView;

public final class aqt
  implements aqu
{
  private View a;
  private ImageResourceView b;
  private int c;
  private int d;
  
  public aqt(@chc View paramView, @chc ImageResourceView paramImageResourceView)
  {
    a = paramView;
    b = paramImageResourceView;
    paramView = (ViewGroup.MarginLayoutParams)b.getLayoutParams();
    c = topMargin;
    d = bottomMargin;
  }
  
  public final int[] a()
  {
    int[] arrayOfInt = new int[2];
    b.getLocationOnScreen(arrayOfInt);
    return arrayOfInt;
  }
  
  public final int b()
  {
    return b.getHeight();
  }
  
  public final int c()
  {
    return c;
  }
  
  public final float d()
  {
    return a.getTranslationY();
  }
}

/* Location:
 * Qualified Name:     aqt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */