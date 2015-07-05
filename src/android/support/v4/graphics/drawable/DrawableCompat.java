package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;

public final class DrawableCompat
{
  static final DrawableImpl IMPL = new BaseDrawableImpl();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      IMPL = new LDrawableImpl();
      return;
    }
    if (i >= 19)
    {
      IMPL = new KitKatDrawableImpl();
      return;
    }
    if (i >= 11)
    {
      IMPL = new HoneycombDrawableImpl();
      return;
    }
  }
  
  private static boolean isAutoMirrored(Drawable paramDrawable)
  {
    return IMPL.isAutoMirrored(paramDrawable);
  }
  
  private static void jumpToCurrentState(Drawable paramDrawable)
  {
    IMPL.jumpToCurrentState(paramDrawable);
  }
  
  private static void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean)
  {
    IMPL.setAutoMirrored(paramDrawable, paramBoolean);
  }
  
  private static void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    IMPL.setHotspot(paramDrawable, paramFloat1, paramFloat2);
  }
  
  private static void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    IMPL.setHotspotBounds(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  private static void setTint(Drawable paramDrawable, int paramInt)
  {
    IMPL.setTint(paramDrawable, paramInt);
  }
  
  private static void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    IMPL.setTintList(paramDrawable, paramColorStateList);
  }
  
  private static void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    IMPL.setTintMode(paramDrawable, paramMode);
  }
  
  static class BaseDrawableImpl
    implements DrawableCompat.DrawableImpl
  {
    public boolean isAutoMirrored(Drawable paramDrawable)
    {
      return false;
    }
    
    public void jumpToCurrentState(Drawable paramDrawable) {}
    
    public void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean) {}
    
    public void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2) {}
    
    public void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
    
    public void setTint(Drawable paramDrawable, int paramInt) {}
    
    public void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList) {}
    
    public void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode) {}
  }
  
  static abstract interface DrawableImpl
  {
    public abstract boolean isAutoMirrored(Drawable paramDrawable);
    
    public abstract void jumpToCurrentState(Drawable paramDrawable);
    
    public abstract void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean);
    
    public abstract void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2);
    
    public abstract void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public abstract void setTint(Drawable paramDrawable, int paramInt);
    
    public abstract void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList);
    
    public abstract void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode);
  }
  
  static class HoneycombDrawableImpl
    extends DrawableCompat.BaseDrawableImpl
  {
    public final void jumpToCurrentState(Drawable paramDrawable)
    {
      DrawableCompatHoneycomb.jumpToCurrentState(paramDrawable);
    }
  }
  
  static class KitKatDrawableImpl
    extends DrawableCompat.HoneycombDrawableImpl
  {
    public final boolean isAutoMirrored(Drawable paramDrawable)
    {
      return DrawableCompatKitKat.isAutoMirrored(paramDrawable);
    }
    
    public final void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean)
    {
      DrawableCompatKitKat.setAutoMirrored(paramDrawable, paramBoolean);
    }
  }
  
  static final class LDrawableImpl
    extends DrawableCompat.KitKatDrawableImpl
  {
    public final void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2)
    {
      DrawableCompatL.setHotspot(paramDrawable, paramFloat1, paramFloat2);
    }
    
    public final void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      DrawableCompatL.setHotspotBounds(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    public final void setTint(Drawable paramDrawable, int paramInt)
    {
      DrawableCompatL.setTint(paramDrawable, paramInt);
    }
    
    public final void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList)
    {
      DrawableCompatL.setTintList(paramDrawable, paramColorStateList);
    }
    
    public final void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode)
    {
      DrawableCompatL.setTintMode(paramDrawable, paramMode);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */