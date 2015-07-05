package android.support.v4.widget;

import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.WindowInsets;

final class DrawerLayoutCompatApi21
{
  public static void applyMarginInsets(ViewGroup.MarginLayoutParams paramMarginLayoutParams, Object paramObject, int paramInt)
  {
    WindowInsets localWindowInsets = (WindowInsets)paramObject;
    if (paramInt == 3) {
      paramObject = localWindowInsets.replaceSystemWindowInsets(localWindowInsets.getSystemWindowInsetLeft(), localWindowInsets.getSystemWindowInsetTop(), 0, localWindowInsets.getSystemWindowInsetBottom());
    }
    for (;;)
    {
      leftMargin = ((WindowInsets)paramObject).getSystemWindowInsetLeft();
      topMargin = ((WindowInsets)paramObject).getSystemWindowInsetTop();
      rightMargin = ((WindowInsets)paramObject).getSystemWindowInsetRight();
      bottomMargin = ((WindowInsets)paramObject).getSystemWindowInsetBottom();
      return;
      paramObject = localWindowInsets;
      if (paramInt == 5) {
        paramObject = localWindowInsets.replaceSystemWindowInsets(0, localWindowInsets.getSystemWindowInsetTop(), localWindowInsets.getSystemWindowInsetRight(), localWindowInsets.getSystemWindowInsetBottom());
      }
    }
  }
  
  public static void configureApplyInsets(View paramView)
  {
    if ((paramView instanceof DrawerLayoutImpl))
    {
      paramView.setOnApplyWindowInsetsListener(new InsetsListener());
      paramView.setSystemUiVisibility(1280);
    }
  }
  
  public static void dispatchChildInsets(View paramView, Object paramObject, int paramInt)
  {
    WindowInsets localWindowInsets = (WindowInsets)paramObject;
    if (paramInt == 3) {
      paramObject = localWindowInsets.replaceSystemWindowInsets(localWindowInsets.getSystemWindowInsetLeft(), localWindowInsets.getSystemWindowInsetTop(), 0, localWindowInsets.getSystemWindowInsetBottom());
    }
    for (;;)
    {
      paramView.dispatchApplyWindowInsets((WindowInsets)paramObject);
      return;
      paramObject = localWindowInsets;
      if (paramInt == 5) {
        paramObject = localWindowInsets.replaceSystemWindowInsets(0, localWindowInsets.getSystemWindowInsetTop(), localWindowInsets.getSystemWindowInsetRight(), localWindowInsets.getSystemWindowInsetBottom());
      }
    }
  }
  
  public static int getTopInset(Object paramObject)
  {
    if (paramObject != null) {
      return ((WindowInsets)paramObject).getSystemWindowInsetTop();
    }
    return 0;
  }
  
  static final class InsetsListener
    implements View.OnApplyWindowInsetsListener
  {
    public final WindowInsets onApplyWindowInsets(View paramView, WindowInsets paramWindowInsets)
    {
      paramView = (DrawerLayoutImpl)paramView;
      if (paramWindowInsets.getSystemWindowInsetTop() > 0) {}
      for (boolean bool = true;; bool = false)
      {
        paramView.setChildInsets(paramWindowInsets, bool);
        return paramWindowInsets.consumeSystemWindowInsets();
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayoutCompatApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */