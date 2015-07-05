package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;

final class DrawableCompatL
{
  public static void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    paramDrawable.setHotspot(paramFloat1, paramFloat2);
  }
  
  public static void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramDrawable.setHotspotBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void setTint(Drawable paramDrawable, int paramInt)
  {
    paramDrawable.setTint(paramInt);
  }
  
  public static void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    paramDrawable.setTintList(paramColorStateList);
  }
  
  public static void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    paramDrawable.setTintMode(paramMode);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableCompatL
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */