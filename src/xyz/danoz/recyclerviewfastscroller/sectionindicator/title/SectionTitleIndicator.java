package xyz.danoz.recyclerviewfastscroller.sectionindicator.title;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import cls.a;
import cls.b;
import cls.c;
import xyz.danoz.recyclerviewfastscroller.sectionindicator.AbsSectionIndicator;

public abstract class SectionTitleIndicator<T>
  extends AbsSectionIndicator<T>
{
  private static final int[] a = cls.c.SectionTitleIndicator;
  private static final int b = cls.b.section_indicator_with_title;
  private final View c = findViewById(cls.a.section_title_popup);
  private final TextView d = (TextView)findViewById(cls.a.section_indicator_text);
  
  public SectionTitleIndicator(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SectionTitleIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SectionTitleIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = getContext().getTheme().obtainStyledAttributes(paramAttributeSet, a, 0, 0);
    try
    {
      setIndicatorBackgroundColor(paramContext.getColor(cls.c.SectionTitleIndicator_rfs_backgroundColor, getDefaultBackgroundColor()));
      setIndicatorTextColor(paramContext.getColor(cls.c.SectionTitleIndicator_rfs_textColor, getDefaultBackgroundColor()));
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  protected int getDefaultBackgroundColor()
  {
    return 17170432;
  }
  
  protected int getDefaultLayoutId()
  {
    return b;
  }
  
  protected int getDefaultTextColor()
  {
    return 17170443;
  }
  
  public void setIndicatorBackgroundColor(int paramInt)
  {
    Drawable localDrawable = c.getBackground();
    if ((localDrawable instanceof GradientDrawable))
    {
      ((GradientDrawable)localDrawable).setColor(paramInt);
      return;
    }
    c.setBackgroundColor(paramInt);
  }
  
  public void setIndicatorTextColor(int paramInt)
  {
    d.setTextColor(paramInt);
  }
  
  public void setTitleText(String paramString)
  {
    d.setText(paramString);
  }
}

/* Location:
 * Qualified Name:     xyz.danoz.recyclerviewfastscroller.sectionindicator.title.SectionTitleIndicator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */