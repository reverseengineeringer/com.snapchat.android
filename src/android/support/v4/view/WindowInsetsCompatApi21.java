package android.support.v4.view;

import android.graphics.Rect;
import android.view.WindowInsets;

final class WindowInsetsCompatApi21
  extends WindowInsetsCompat
{
  final WindowInsets mSource;
  
  WindowInsetsCompatApi21(WindowInsets paramWindowInsets)
  {
    mSource = paramWindowInsets;
  }
  
  private WindowInsets unwrap()
  {
    return mSource;
  }
  
  public final WindowInsetsCompat consumeStableInsets()
  {
    return new WindowInsetsCompatApi21(mSource.consumeStableInsets());
  }
  
  public final WindowInsetsCompat consumeSystemWindowInsets()
  {
    return new WindowInsetsCompatApi21(mSource.consumeSystemWindowInsets());
  }
  
  public final int getStableInsetBottom()
  {
    return mSource.getStableInsetBottom();
  }
  
  public final int getStableInsetLeft()
  {
    return mSource.getStableInsetLeft();
  }
  
  public final int getStableInsetRight()
  {
    return mSource.getStableInsetRight();
  }
  
  public final int getStableInsetTop()
  {
    return mSource.getStableInsetTop();
  }
  
  public final int getSystemWindowInsetBottom()
  {
    return mSource.getSystemWindowInsetBottom();
  }
  
  public final int getSystemWindowInsetLeft()
  {
    return mSource.getSystemWindowInsetLeft();
  }
  
  public final int getSystemWindowInsetRight()
  {
    return mSource.getSystemWindowInsetRight();
  }
  
  public final int getSystemWindowInsetTop()
  {
    return mSource.getSystemWindowInsetTop();
  }
  
  public final boolean hasInsets()
  {
    return mSource.hasInsets();
  }
  
  public final boolean hasStableInsets()
  {
    return mSource.hasStableInsets();
  }
  
  public final boolean hasSystemWindowInsets()
  {
    return mSource.hasSystemWindowInsets();
  }
  
  public final boolean isConsumed()
  {
    return mSource.isConsumed();
  }
  
  public final boolean isRound()
  {
    return mSource.isRound();
  }
  
  public final WindowInsetsCompat replaceSystemWindowInsets(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new WindowInsetsCompatApi21(mSource.replaceSystemWindowInsets(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public final WindowInsetsCompat replaceSystemWindowInsets(Rect paramRect)
  {
    return new WindowInsetsCompatApi21(mSource.replaceSystemWindowInsets(paramRect));
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.WindowInsetsCompatApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */