package xyz.danoz.recyclerviewfastscroller.sectionindicator;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import ckr.c;
import cks;
import cks.a;
import ckt;
import cky;
import ckz;

public abstract class AbsSectionIndicator<T>
  extends FrameLayout
  implements cky<T>
{
  private static final int[] a = ckr.c.AbsSectionIndicator;
  private ckt b;
  private ckz c;
  
  public AbsSectionIndicator(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AbsSectionIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AbsSectionIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = getContext().getTheme().obtainStyledAttributes(paramAttributeSet, a, 0, 0);
    try
    {
      paramInt = paramAttributeSet.getResourceId(ckr.c.AbsSectionIndicator_rfs_section_indicator_layout, getDefaultLayoutId());
      ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(paramInt, this, true);
      paramAttributeSet.recycle();
      c = new ckz(this);
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  public abstract int getDefaultBackgroundColor();
  
  public abstract int getDefaultLayoutId();
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (b == null) {
      b = new ckt(new cks(new cks.a()new cks.a
      {
        public final float a()
        {
          return 0.0F;
        }
      }, new cks.a()
      {
        public final float a()
        {
          return ((ViewGroup)getParent()).getHeight() - getHeight();
        }
      }));
    }
  }
  
  public void setProgress(float paramFloat)
  {
    setY(b.a(paramFloat));
  }
  
  public abstract void setSection(T paramT);
}

/* Location:
 * Qualified Name:     xyz.danoz.recyclerviewfastscroller.sectionindicator.AbsSectionIndicator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */