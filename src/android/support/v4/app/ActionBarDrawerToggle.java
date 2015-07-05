package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.InsetDrawable;
import android.os.Build.VERSION;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.DrawerListener;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import r;

@Deprecated
public final class ActionBarDrawerToggle
  implements DrawerLayout.DrawerListener
{
  private static final int ID_HOME = 16908332;
  private static final ActionBarDrawerToggleImpl IMPL = new ActionBarDrawerToggleImplBase((byte)0);
  private static final float TOGGLE_DRAWABLE_OFFSET = 0.33333334F;
  private final Activity mActivity;
  private final Delegate mActivityImpl;
  private final int mCloseDrawerContentDescRes;
  private Drawable mDrawerImage;
  private final int mDrawerImageResource;
  private boolean mDrawerIndicatorEnabled = true;
  private final DrawerLayout mDrawerLayout;
  private boolean mHasCustomUpIndicator;
  private Drawable mHomeAsUpIndicator;
  private final int mOpenDrawerContentDescRes;
  private Object mSetIndicatorInfo;
  private SlideDrawable mSlider;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 18)
    {
      IMPL = new ActionBarDrawerToggleImplJellybeanMR2((byte)0);
      return;
    }
    if (i >= 11)
    {
      IMPL = new ActionBarDrawerToggleImplHC((byte)0);
      return;
    }
  }
  
  private ActionBarDrawerToggle(Activity paramActivity, DrawerLayout paramDrawerLayout, int paramInt1, int paramInt2, int paramInt3) {}
  
  private ActionBarDrawerToggle(Activity paramActivity, DrawerLayout paramDrawerLayout, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    mActivity = paramActivity;
    if ((paramActivity instanceof DelegateProvider))
    {
      mActivityImpl = ((DelegateProvider)paramActivity).getDrawerToggleDelegate();
      mDrawerLayout = paramDrawerLayout;
      mDrawerImageResource = paramInt1;
      mOpenDrawerContentDescRes = paramInt2;
      mCloseDrawerContentDescRes = paramInt3;
      mHomeAsUpIndicator = getThemeUpIndicator();
      mDrawerImage = ContextCompat.getDrawable(paramActivity, paramInt1);
      mSlider = new SlideDrawable(mDrawerImage, (byte)0);
      paramActivity = mSlider;
      if (!paramBoolean) {
        break label124;
      }
    }
    label124:
    for (float f = 0.33333334F;; f = 0.0F)
    {
      mOffset = f;
      paramActivity.invalidateSelf();
      return;
      mActivityImpl = null;
      break;
    }
  }
  
  private static boolean assumeMaterial(Context paramContext)
  {
    return (getApplicationInfotargetSdkVersion >= 21) && (Build.VERSION.SDK_INT >= 21);
  }
  
  private Drawable getThemeUpIndicator()
  {
    if (mActivityImpl != null) {
      return mActivityImpl.getThemeUpIndicator();
    }
    return IMPL.getThemeUpIndicator(mActivity);
  }
  
  private boolean isDrawerIndicatorEnabled()
  {
    return mDrawerIndicatorEnabled;
  }
  
  private void onConfigurationChanged$308b225b()
  {
    if (!mHasCustomUpIndicator) {
      mHomeAsUpIndicator = getThemeUpIndicator();
    }
    mDrawerImage = ContextCompat.getDrawable(mActivity, mDrawerImageResource);
    SlideDrawable localSlideDrawable;
    if (mDrawerLayout.isDrawerOpen$134632())
    {
      mSlider.setPosition(1.0F);
      if (mDrawerIndicatorEnabled)
      {
        localSlideDrawable = mSlider;
        if (!mDrawerLayout.isDrawerOpen$134632()) {
          break label93;
        }
      }
    }
    label93:
    for (int i = mCloseDrawerContentDescRes;; i = mOpenDrawerContentDescRes)
    {
      setActionBarUpIndicator(localSlideDrawable, i);
      return;
      mSlider.setPosition(0.0F);
      break;
    }
  }
  
  private boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool3 = false;
    boolean bool2 = false;
    boolean bool1 = bool3;
    if (paramMenuItem != null)
    {
      bool1 = bool3;
      if (paramMenuItem.getItemId() == 16908332)
      {
        bool1 = bool3;
        if (mDrawerIndicatorEnabled)
        {
          paramMenuItem = mDrawerLayout.findDrawerWithGravity(8388611);
          bool1 = bool2;
          if (paramMenuItem != null) {
            bool1 = DrawerLayout.isDrawerVisible(paramMenuItem);
          }
          if (!bool1) {
            break label117;
          }
          paramMenuItem = mDrawerLayout;
          View localView = paramMenuItem.findDrawerWithGravity(8388611);
          if (localView == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + DrawerLayout.gravityToString(8388611));
          }
          paramMenuItem.closeDrawer(localView);
        }
      }
    }
    for (;;)
    {
      bool1 = true;
      return bool1;
      label117:
      mDrawerLayout.openDrawer(8388611);
    }
  }
  
  private void setActionBarDescription(int paramInt)
  {
    if (mActivityImpl != null) {
      return;
    }
    mSetIndicatorInfo = IMPL.setActionBarDescription(mSetIndicatorInfo, mActivity, paramInt);
  }
  
  private void setActionBarUpIndicator(Drawable paramDrawable, int paramInt)
  {
    if (mActivityImpl != null) {
      return;
    }
    mSetIndicatorInfo = IMPL.setActionBarUpIndicator(mSetIndicatorInfo, mActivity, paramDrawable, paramInt);
  }
  
  private void setDrawerIndicatorEnabled(boolean paramBoolean)
  {
    int i;
    if (paramBoolean != mDrawerIndicatorEnabled)
    {
      if (!paramBoolean) {
        break label52;
      }
      SlideDrawable localSlideDrawable = mSlider;
      if (!mDrawerLayout.isDrawerOpen$134632()) {
        break label44;
      }
      i = mCloseDrawerContentDescRes;
      setActionBarUpIndicator(localSlideDrawable, i);
    }
    for (;;)
    {
      mDrawerIndicatorEnabled = paramBoolean;
      return;
      label44:
      i = mOpenDrawerContentDescRes;
      break;
      label52:
      setActionBarUpIndicator(mHomeAsUpIndicator, 0);
    }
  }
  
  private void setHomeAsUpIndicator(int paramInt)
  {
    Drawable localDrawable = null;
    if (paramInt != 0) {
      localDrawable = ContextCompat.getDrawable(mActivity, paramInt);
    }
    if (localDrawable == null) {
      mHomeAsUpIndicator = getThemeUpIndicator();
    }
    for (mHasCustomUpIndicator = false;; mHasCustomUpIndicator = true)
    {
      if (!mDrawerIndicatorEnabled) {
        setActionBarUpIndicator(mHomeAsUpIndicator, 0);
      }
      return;
      mHomeAsUpIndicator = localDrawable;
    }
  }
  
  private void setHomeAsUpIndicator(Drawable paramDrawable)
  {
    if (paramDrawable == null) {
      mHomeAsUpIndicator = getThemeUpIndicator();
    }
    for (mHasCustomUpIndicator = false;; mHasCustomUpIndicator = true)
    {
      if (!mDrawerIndicatorEnabled) {
        setActionBarUpIndicator(mHomeAsUpIndicator, 0);
      }
      return;
      mHomeAsUpIndicator = paramDrawable;
    }
  }
  
  private void syncState()
  {
    SlideDrawable localSlideDrawable;
    if (mDrawerLayout.isDrawerOpen$134632())
    {
      mSlider.setPosition(1.0F);
      if (mDrawerIndicatorEnabled)
      {
        localSlideDrawable = mSlider;
        if (!mDrawerLayout.isDrawerOpen$134632()) {
          break label63;
        }
      }
    }
    label63:
    for (int i = mCloseDrawerContentDescRes;; i = mOpenDrawerContentDescRes)
    {
      setActionBarUpIndicator(localSlideDrawable, i);
      return;
      mSlider.setPosition(0.0F);
      break;
    }
  }
  
  public final void onDrawerClosed$3c7ec8c3()
  {
    mSlider.setPosition(0.0F);
    if (mDrawerIndicatorEnabled) {
      setActionBarDescription(mOpenDrawerContentDescRes);
    }
  }
  
  public final void onDrawerOpened$3c7ec8c3()
  {
    mSlider.setPosition(1.0F);
    if (mDrawerIndicatorEnabled) {
      setActionBarDescription(mCloseDrawerContentDescRes);
    }
  }
  
  public final void onDrawerSlide$5359e7dd(float paramFloat)
  {
    float f = mSlider.mPosition;
    if (paramFloat > 0.5F) {}
    for (paramFloat = Math.max(f, Math.max(0.0F, paramFloat - 0.5F) * 2.0F);; paramFloat = Math.min(f, paramFloat * 2.0F))
    {
      mSlider.setPosition(paramFloat);
      return;
    }
  }
  
  public final void onDrawerStateChanged$13462e() {}
  
  static abstract interface ActionBarDrawerToggleImpl
  {
    public abstract Drawable getThemeUpIndicator(Activity paramActivity);
    
    public abstract Object setActionBarDescription(Object paramObject, Activity paramActivity, int paramInt);
    
    public abstract Object setActionBarUpIndicator(Object paramObject, Activity paramActivity, Drawable paramDrawable, int paramInt);
  }
  
  static final class ActionBarDrawerToggleImplBase
    implements ActionBarDrawerToggle.ActionBarDrawerToggleImpl
  {
    public final Drawable getThemeUpIndicator(Activity paramActivity)
    {
      return null;
    }
    
    public final Object setActionBarDescription(Object paramObject, Activity paramActivity, int paramInt)
    {
      return paramObject;
    }
    
    public final Object setActionBarUpIndicator(Object paramObject, Activity paramActivity, Drawable paramDrawable, int paramInt)
    {
      return paramObject;
    }
  }
  
  static final class ActionBarDrawerToggleImplHC
    implements ActionBarDrawerToggle.ActionBarDrawerToggleImpl
  {
    public final Drawable getThemeUpIndicator(Activity paramActivity)
    {
      return ActionBarDrawerToggleHoneycomb.getThemeUpIndicator(paramActivity);
    }
    
    public final Object setActionBarDescription(Object paramObject, Activity paramActivity, int paramInt)
    {
      return ActionBarDrawerToggleHoneycomb.setActionBarDescription(paramObject, paramActivity, paramInt);
    }
    
    public final Object setActionBarUpIndicator(Object paramObject, Activity paramActivity, Drawable paramDrawable, int paramInt)
    {
      return ActionBarDrawerToggleHoneycomb.setActionBarUpIndicator(paramObject, paramActivity, paramDrawable, paramInt);
    }
  }
  
  static final class ActionBarDrawerToggleImplJellybeanMR2
    implements ActionBarDrawerToggle.ActionBarDrawerToggleImpl
  {
    public final Drawable getThemeUpIndicator(Activity paramActivity)
    {
      return ActionBarDrawerToggleJellybeanMR2.getThemeUpIndicator(paramActivity);
    }
    
    public final Object setActionBarDescription(Object paramObject, Activity paramActivity, int paramInt)
    {
      return ActionBarDrawerToggleJellybeanMR2.setActionBarDescription(paramObject, paramActivity, paramInt);
    }
    
    public final Object setActionBarUpIndicator(Object paramObject, Activity paramActivity, Drawable paramDrawable, int paramInt)
    {
      return ActionBarDrawerToggleJellybeanMR2.setActionBarUpIndicator(paramObject, paramActivity, paramDrawable, paramInt);
    }
  }
  
  public static abstract interface Delegate
  {
    @r
    public abstract Drawable getThemeUpIndicator();
    
    public abstract void setActionBarDescription$13462e();
    
    public abstract void setActionBarUpIndicator$4eb471f6();
  }
  
  public static abstract interface DelegateProvider
  {
    @r
    public abstract ActionBarDrawerToggle.Delegate getDrawerToggleDelegate();
  }
  
  final class SlideDrawable
    extends InsetDrawable
    implements Drawable.Callback
  {
    private final boolean mHasMirroring;
    float mOffset;
    float mPosition;
    private final Rect mTmpRect;
    
    private SlideDrawable(Drawable paramDrawable)
    {
      super(0);
      if (Build.VERSION.SDK_INT > 18) {
        bool = true;
      }
      mHasMirroring = bool;
      mTmpRect = new Rect();
    }
    
    private float getPosition()
    {
      return mPosition;
    }
    
    private void setOffset(float paramFloat)
    {
      mOffset = paramFloat;
      invalidateSelf();
    }
    
    public final void draw(Canvas paramCanvas)
    {
      int j = 1;
      copyBounds(mTmpRect);
      paramCanvas.save();
      if (ViewCompat.getLayoutDirection(mActivity.getWindow().getDecorView()) == 1) {}
      for (int i = 1;; i = 0)
      {
        if (i != 0) {
          j = -1;
        }
        int k = mTmpRect.width();
        float f1 = -mOffset;
        float f2 = k;
        float f3 = mPosition;
        paramCanvas.translate(j * (f1 * f2 * f3), 0.0F);
        if ((i != 0) && (!mHasMirroring))
        {
          paramCanvas.translate(k, 0.0F);
          paramCanvas.scale(-1.0F, 1.0F);
        }
        super.draw(paramCanvas);
        paramCanvas.restore();
        return;
      }
    }
    
    public final void setPosition(float paramFloat)
    {
      mPosition = paramFloat;
      invalidateSelf();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ActionBarDrawerToggle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */