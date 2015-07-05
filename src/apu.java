import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import com.snapchat.android.ui.ImageResourceView;

public final class apu
  implements apv
{
  private View a;
  private ImageResourceView b;
  private int c;
  private int d;
  
  public apu(@cgb View paramView, @cgb ImageResourceView paramImageResourceView)
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
 * Qualified Name:     apu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */