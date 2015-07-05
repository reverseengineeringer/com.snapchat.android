package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class ViewCompatEclairMr1
{
  public static final String TAG = "ViewCompat";
  private static Method sChildrenDrawingOrderMethod;
  
  public static boolean isOpaque(View paramView)
  {
    return paramView.isOpaque();
  }
  
  public static void setChildrenDrawingOrderEnabled$4d3af60(ViewGroup paramViewGroup)
  {
    if (sChildrenDrawingOrderMethod == null) {}
    try
    {
      sChildrenDrawingOrderMethod = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { Boolean.TYPE });
      sChildrenDrawingOrderMethod.setAccessible(true);
      try
      {
        sChildrenDrawingOrderMethod.invoke(paramViewGroup, new Object[] { Boolean.valueOf(true) });
        return;
      }
      catch (InvocationTargetException paramViewGroup) {}catch (IllegalArgumentException paramViewGroup) {}catch (IllegalAccessException paramViewGroup) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewCompatEclairMr1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */