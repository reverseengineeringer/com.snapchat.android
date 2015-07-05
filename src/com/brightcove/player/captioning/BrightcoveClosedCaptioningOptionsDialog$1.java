package com.brightcove.player.captioning;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.brightcove.player.R.color;
import com.brightcove.player.R.id;
import com.brightcove.player.R.layout;
import com.brightcove.player.R.string;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class BrightcoveClosedCaptioningOptionsDialog$1
  extends BaseExpandableListAdapter
{
  BrightcoveClosedCaptioningOptionsDialog$1(BrightcoveClosedCaptioningOptionsDialog paramBrightcoveClosedCaptioningOptionsDialog) {}
  
  protected RadioGroup createColorSelection(View paramView, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType paramClosedCaptioningOptionsType)
  {
    RadioGroup localRadioGroup1 = (RadioGroup)paramView.findViewById(R.id.closed_captioning_options_color_selector);
    RadioGroup localRadioGroup2 = (RadioGroup)paramView.findViewById(R.id.closed_captioning_options_opacity_selector);
    paramView = BrightcoveClosedCaptioningOptionsDialog.getChildRadioButtons(localRadioGroup1);
    paramClosedCaptioningOptionsType = new BrightcoveClosedCaptioningOptionsDialog.ColorSelectorClickListener(this$0, paramView, paramClosedCaptioningOptionsType, localRadioGroup2);
    paramView = paramView.iterator();
    while (paramView.hasNext()) {
      ((RadioButton)paramView.next()).setOnClickListener(paramClosedCaptioningOptionsType);
    }
    return localRadioGroup1;
  }
  
  protected RadioGroup createEdgeSelection(View paramView)
  {
    paramView = (RadioGroup)paramView.findViewById(R.id.closed_captioning_options_edge_type_selector);
    paramView.setOnCheckedChangeListener(new BrightcoveClosedCaptioningOptionsDialog.EdgeTypeSelectorClickListener(this$0, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_TYPE));
    return paramView;
  }
  
  protected RadioGroup createOpacitySelection(View paramView, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType paramClosedCaptioningOptionsType)
  {
    paramView = (RadioGroup)paramView.findViewById(R.id.closed_captioning_options_opacity_selector);
    paramView.setOnCheckedChangeListener(new BrightcoveClosedCaptioningOptionsDialog.OpacitySelectorChangedListener(this$0, paramClosedCaptioningOptionsType));
    if (paramClosedCaptioningOptionsType == BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.TEXT_COLOR)
    {
      paramView.findViewById(R.id.closed_captioning_options_opacity_none).setVisibility(8);
      paramView.findViewById(R.id.closed_captioning_options_opacity_semi_transparent_light).setVisibility(0);
    }
    return paramView;
  }
  
  protected int getBuilderCurrentColor(BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType paramClosedCaptioningOptionsType)
  {
    int i = 0;
    switch (BrightcoveClosedCaptioningOptionsDialog.3.$SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType[paramClosedCaptioningOptionsType.ordinal()])
    {
    default: 
      BrightcoveClosedCaptioningOptionsDialog.access$100();
      String.format("Cannot get the color of %s. It is not a color.", new Object[] { paramClosedCaptioningOptionsType });
    }
    for (;;)
    {
      return Color.rgb(Color.red(i), Color.green(i), Color.blue(i));
      i = BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getTextColor();
      continue;
      i = BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getEdgeColor();
      continue;
      i = BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getHighlightColor();
      continue;
      i = BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getBackgroundColor();
    }
  }
  
  protected int getBuilderCurrentOpacity(BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType paramClosedCaptioningOptionsType)
  {
    int i = 0;
    switch (BrightcoveClosedCaptioningOptionsDialog.3.$SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType[paramClosedCaptioningOptionsType.ordinal()])
    {
    default: 
      BrightcoveClosedCaptioningOptionsDialog.access$100();
      String.format("Cannot get the color of %s. It is not a color.", new Object[] { paramClosedCaptioningOptionsType });
    }
    for (;;)
    {
      return Color.alpha(i);
      i = BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getTextColor();
      continue;
      i = BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getEdgeColor();
      continue;
      i = BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getHighlightColor();
      continue;
      i = BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getBackgroundColor();
    }
  }
  
  public Object getChild(int paramInt1, int paramInt2)
  {
    return null;
  }
  
  public long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt1 * 100 + paramInt2;
  }
  
  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramView = View.inflate(BrightcoveClosedCaptioningOptionsDialog.access$000(this$0), ((Integer)this$0.CLOSED_CAPTIONING_OPTIONS_CHILD_VIEWS.get(paramInt1)).intValue(), null);
    paramViewGroup = getGroup(paramInt1);
    paramInt1 = -1;
    switch (paramViewGroup.hashCode())
    {
    }
    for (;;)
    {
      switch (paramInt1)
      {
      default: 
        BrightcoveClosedCaptioningOptionsDialog.access$100();
        return paramView;
        if (paramViewGroup.equals("Font"))
        {
          paramInt1 = 0;
          continue;
          if (paramViewGroup.equals("Text Size"))
          {
            paramInt1 = 1;
            continue;
            if (paramViewGroup.equals("Text Color"))
            {
              paramInt1 = 2;
              continue;
              if (paramViewGroup.equals("Edge Type"))
              {
                paramInt1 = 3;
                continue;
                if (paramViewGroup.equals("Edge Color"))
                {
                  paramInt1 = 4;
                  continue;
                  if (paramViewGroup.equals("Highlight"))
                  {
                    paramInt1 = 5;
                    continue;
                    if (paramViewGroup.equals("Background")) {
                      paramInt1 = 6;
                    }
                  }
                }
              }
            }
          }
        }
        break;
      }
    }
    paramViewGroup = (RadioGroup)paramView;
    paramViewGroup.setOnCheckedChangeListener(new BrightcoveClosedCaptioningOptionsDialog.FontChangedListener(this$0));
    selectCurrentFont(paramViewGroup);
    return paramView;
    paramViewGroup = (RadioGroup)paramView.findViewById(R.id.closed_captioning_options_text_size_selector);
    paramViewGroup.setOnCheckedChangeListener(new BrightcoveClosedCaptioningOptionsDialog.TextSizeChangedListener(this$0));
    selectCurrentTextSize(paramViewGroup);
    return paramView;
    paramViewGroup = createColorSelection(paramView, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.TEXT_COLOR);
    RadioGroup localRadioGroup = createOpacitySelection(paramView, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.TEXT_COLOR);
    selectCurrentColor(paramViewGroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.TEXT_COLOR);
    selectCurrentOpacity(localRadioGroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.TEXT_COLOR);
    return paramView;
    selectCurrentEdgeType(createEdgeSelection(paramView));
    return paramView;
    paramViewGroup = createColorSelection(paramView, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_COLOR);
    localRadioGroup = createOpacitySelection(paramView, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_COLOR);
    selectCurrentColor(paramViewGroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_COLOR);
    selectCurrentOpacity(localRadioGroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_COLOR);
    return paramView;
    paramViewGroup = createColorSelection(paramView, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.HIGHLIGHT);
    localRadioGroup = createOpacitySelection(paramView, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.HIGHLIGHT);
    selectCurrentColor(paramViewGroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.HIGHLIGHT);
    selectCurrentOpacity(localRadioGroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.HIGHLIGHT);
    return paramView;
    paramViewGroup = createColorSelection(paramView, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.BACKGROUND);
    localRadioGroup = createOpacitySelection(paramView, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.BACKGROUND);
    selectCurrentColor(paramViewGroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.BACKGROUND);
    selectCurrentOpacity(localRadioGroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.BACKGROUND);
    return paramView;
  }
  
  public int getChildrenCount(int paramInt)
  {
    return 1;
  }
  
  public String getGroup(int paramInt)
  {
    return (String)this$0.CLOSED_CAPTIONING_OPTIONS.get(paramInt);
  }
  
  public int getGroupCount()
  {
    return this$0.CLOSED_CAPTIONING_OPTIONS.size();
  }
  
  public long getGroupId(int paramInt)
  {
    return paramInt;
  }
  
  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    paramView = ((LayoutInflater)BrightcoveClosedCaptioningOptionsDialog.access$000(this$0).getSystemService("layout_inflater")).inflate(R.layout.closed_captioning_options_group_item, null);
    ((TextView)paramView.findViewById(R.id.closed_captioning_options_group_title)).setText((CharSequence)this$0.CLOSED_CAPTIONING_OPTIONS.get(paramInt));
    return paramView;
  }
  
  protected SparseArray<String> getMapColorsToTags()
  {
    if (BrightcoveClosedCaptioningOptionsDialog.access$300(this$0) == null) {
      BrightcoveClosedCaptioningOptionsDialog.access$302(this$0, new SparseArray() {});
    }
    return BrightcoveClosedCaptioningOptionsDialog.access$300(this$0);
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return false;
  }
  
  protected void selectCurrentColor(RadioGroup paramRadioGroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType paramClosedCaptioningOptionsType)
  {
    int i = getBuilderCurrentColor(paramClosedCaptioningOptionsType);
    paramClosedCaptioningOptionsType = (String)getMapColorsToTags().get(i);
    if (paramClosedCaptioningOptionsType != null)
    {
      BrightcoveClosedCaptioningOptionsDialog.access$100();
      String.format("Checking color button with tag %s", new Object[] { paramClosedCaptioningOptionsType });
      ((RadioButton)paramRadioGroup.findViewWithTag(paramClosedCaptioningOptionsType)).setChecked(true);
    }
  }
  
  protected void selectCurrentEdgeType(RadioGroup paramRadioGroup)
  {
    int i = ((Integer)new EnumMap(BrightcoveClosedCaptioningTextView.EdgeAttribute.class) {}.get(BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getEdgeAttribute())).intValue();
    if (i != 0) {
      ((RadioButton)paramRadioGroup.findViewById(i)).setChecked(true);
    }
  }
  
  protected void selectCurrentFont(RadioGroup paramRadioGroup)
  {
    Typeface localTypeface = BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getTypeface();
    if (localTypeface == Typeface.DEFAULT) {
      paramRadioGroup.check(R.id.closed_captioning_options_font_selection_normal);
    }
    do
    {
      return;
      if (localTypeface == Typeface.MONOSPACE)
      {
        paramRadioGroup.check(R.id.closed_captioning_options_font_selection_monospace);
        return;
      }
      if (localTypeface == Typeface.SANS_SERIF)
      {
        paramRadioGroup.check(R.id.closed_captioning_options_font_selection_sans_serif);
        return;
      }
    } while (localTypeface != Typeface.SERIF);
    paramRadioGroup.check(R.id.closed_captioning_options_font_selection_serif);
  }
  
  protected void selectCurrentOpacity(RadioGroup paramRadioGroup, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType paramClosedCaptioningOptionsType)
  {
    int i = getBuilderCurrentOpacity(paramClosedCaptioningOptionsType);
    if (i == BrightcoveClosedCaptioningStyle.OPACITY_TRANSPARENT) {
      paramRadioGroup.check(R.id.closed_captioning_options_opacity_none);
    }
    do
    {
      return;
      if (i == BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT)
      {
        paramRadioGroup.check(R.id.closed_captioning_options_opacity_semi_transparent);
        return;
      }
      if (i == BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT_LIGHT)
      {
        paramRadioGroup.check(R.id.closed_captioning_options_opacity_semi_transparent_light);
        return;
      }
    } while (i != 255);
    paramRadioGroup.check(R.id.closed_captioning_options_opacity_opaque);
  }
  
  protected void selectCurrentTextSize(RadioGroup paramRadioGroup)
  {
    Float localFloat = Float.valueOf(BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getTextSize());
    if (localFloat.floatValue() == 7.0F) {
      paramRadioGroup.check(R.id.closed_captioning_options_text_size_50_percent);
    }
    do
    {
      return;
      if (localFloat.floatValue() == 10.5F)
      {
        paramRadioGroup.check(R.id.closed_captioning_options_text_size_75_percent);
        return;
      }
      if (localFloat.floatValue() == 14.0F)
      {
        paramRadioGroup.check(R.id.closed_captioning_options_text_size_100_percent);
        return;
      }
      if (localFloat.floatValue() == 21.0F)
      {
        paramRadioGroup.check(R.id.closed_captioning_options_text_size_150_percent);
        return;
      }
    } while (localFloat.floatValue() != 28.0F);
    paramRadioGroup.check(R.id.closed_captioning_options_text_size_200_percent);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */