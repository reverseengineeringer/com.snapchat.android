package android.support.v4.app;

import android.view.View;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import l;
import r;

public abstract class FragmentTransaction
{
  public static final int TRANSIT_ENTER_MASK = 4096;
  public static final int TRANSIT_EXIT_MASK = 8192;
  public static final int TRANSIT_FRAGMENT_CLOSE = 8194;
  public static final int TRANSIT_FRAGMENT_FADE = 4099;
  public static final int TRANSIT_FRAGMENT_OPEN = 4097;
  public static final int TRANSIT_NONE = 0;
  public static final int TRANSIT_UNSET = -1;
  
  public abstract FragmentTransaction add(int paramInt, Fragment paramFragment);
  
  public abstract FragmentTransaction add(int paramInt, Fragment paramFragment, @r String paramString);
  
  public abstract FragmentTransaction add(Fragment paramFragment, String paramString);
  
  public abstract FragmentTransaction addSharedElement(View paramView, String paramString);
  
  public abstract FragmentTransaction addToBackStack(@r String paramString);
  
  public abstract FragmentTransaction attach(Fragment paramFragment);
  
  public abstract int commit();
  
  public abstract int commitAllowingStateLoss();
  
  public abstract FragmentTransaction detach(Fragment paramFragment);
  
  public abstract FragmentTransaction disallowAddToBackStack();
  
  public abstract FragmentTransaction hide(Fragment paramFragment);
  
  public abstract boolean isAddToBackStackAllowed();
  
  public abstract boolean isEmpty();
  
  public abstract FragmentTransaction remove(Fragment paramFragment);
  
  public abstract FragmentTransaction replace(int paramInt, Fragment paramFragment);
  
  public abstract FragmentTransaction replace(int paramInt, Fragment paramFragment, @r String paramString);
  
  public abstract FragmentTransaction setBreadCrumbShortTitle(int paramInt);
  
  public abstract FragmentTransaction setBreadCrumbShortTitle(CharSequence paramCharSequence);
  
  public abstract FragmentTransaction setBreadCrumbTitle(int paramInt);
  
  public abstract FragmentTransaction setBreadCrumbTitle(CharSequence paramCharSequence);
  
  public abstract FragmentTransaction setCustomAnimations(int paramInt1, int paramInt2);
  
  public abstract FragmentTransaction setCustomAnimations$366cc4e1(int paramInt1, int paramInt2);
  
  public abstract FragmentTransaction setTransition(int paramInt);
  
  public abstract FragmentTransaction setTransitionStyle(int paramInt);
  
  public abstract FragmentTransaction show(Fragment paramFragment);
  
  @Retention(RetentionPolicy.SOURCE)
  @l
  static @interface Transit {}
}

/* Location:
 * Qualified Name:     android.support.v4.app.FragmentTransaction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */