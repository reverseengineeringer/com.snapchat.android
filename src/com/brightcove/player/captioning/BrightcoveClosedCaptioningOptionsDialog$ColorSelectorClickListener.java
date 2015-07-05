package com.brightcove.player.captioning;

import android.content.res.Resources;
import android.graphics.Color;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.brightcove.player.R.color;
import com.brightcove.player.R.id;
import com.brightcove.player.R.string;
import java.util.Iterator;
import java.util.List;

public class BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener
  implements View.OnClickListener
{
  protected List<RadioButton> colorButtons;
  protected RadioGroup opacityRadioGroup;
  protected BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType optionsType;
  
  public BrightcoveClosedCaptioningOptionsDialog$ColorSelectorClickListener(List<RadioButton> paramList, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType paramClosedCaptioningOptionsType, RadioGroup paramRadioGroup)
  {
    colorButtons = paramClosedCaptioningOptionsType;
    optionsType = paramRadioGroup;
    RadioGroup localRadioGroup;
    opacityRadioGroup = localRadioGroup;
  }
  
  private int getColorWithOpacity(int paramInt1, int paramInt2)
  {
    int i;
    if (paramInt2 == R.id.closed_captioning_options_opacity_none) {
      i = Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_TRANSPARENT, Color.red(paramInt1), Color.green(paramInt1), Color.blue(paramInt1));
    }
    do
    {
      return i;
      if (paramInt2 == R.id.closed_captioning_options_opacity_semi_transparent) {
        return Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT, Color.red(paramInt1), Color.green(paramInt1), Color.blue(paramInt1));
      }
      if (paramInt2 == R.id.closed_captioning_options_opacity_semi_transparent_light) {
        return Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT_LIGHT, Color.red(paramInt1), Color.green(paramInt1), Color.blue(paramInt1));
      }
      i = paramInt1;
    } while (paramInt2 != R.id.closed_captioning_options_opacity_opaque);
    return Color.argb(255, Color.red(paramInt1), Color.green(paramInt1), Color.blue(paramInt1));
  }
  
  private int getSelectedColor(RadioButton paramRadioButton)
  {
    Resources localResources = this$0.getResources();
    paramRadioButton = (String)paramRadioButton.getTag();
    String.format("clickedColorButton tag is %s", new Object[] { paramRadioButton });
    if (paramRadioButton.equalsIgnoreCase(this$0.getResources().getString(R.string.closed_captioning_red_tag))) {
      return localResources.getColor(R.color.closed_captioning_red);
    }
    if (paramRadioButton.equalsIgnoreCase(this$0.getResources().getString(R.string.closed_captioning_yellow_tag))) {
      return localResources.getColor(R.color.closed_captioning_yellow);
    }
    if (paramRadioButton.equalsIgnoreCase(this$0.getResources().getString(R.string.closed_captioning_green_tag))) {
      return localResources.getColor(R.color.closed_captioning_green);
    }
    if (paramRadioButton.equalsIgnoreCase(this$0.getResources().getString(R.string.closed_captioning_cyan_tag))) {
      return localResources.getColor(R.color.closed_captioning_cyan);
    }
    if (paramRadioButton.equalsIgnoreCase(this$0.getResources().getString(R.string.closed_captioning_blue_tag))) {
      return localResources.getColor(R.color.closed_captioning_blue);
    }
    if (paramRadioButton.equalsIgnoreCase(this$0.getResources().getString(R.string.closed_captioning_magenta_tag))) {
      return localResources.getColor(R.color.closed_captioning_magenta);
    }
    if (paramRadioButton.equalsIgnoreCase(this$0.getResources().getString(R.string.closed_captioning_white_tag))) {
      return localResources.getColor(R.color.closed_captioning_white);
    }
    if (paramRadioButton.equalsIgnoreCase(this$0.getResources().getString(R.string.closed_captioning_black_tag))) {
      return localResources.getColor(R.color.closed_captioning_black);
    }
    return -16777216;
  }
  
  private void resetButtons(RadioButton paramRadioButton)
  {
    Iterator localIterator = colorButtons.iterator();
    while (localIterator.hasNext()) {
      ((RadioButton)localIterator.next()).setChecked(false);
    }
    paramRadioButton.setChecked(true);
  }
  
  private void setBuilderColor(int paramInt)
  {
    if (optionsType == BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.TEXT_COLOR) {
      BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).setTextColor(paramInt);
    }
    do
    {
      return;
      if (optionsType == BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.EDGE_COLOR)
      {
        BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).setEdgeColor(paramInt);
        return;
      }
      if (optionsType == BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.BACKGROUND)
      {
        BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).setBackgroundColor(paramInt);
        return;
      }
    } while (optionsType != BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType.HIGHLIGHT);
    BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).setHighlightColor(paramInt);
  }
  
  public void onClick(View paramView)
  {
    int i = opacityRadioGroup.getCheckedRadioButtonId();
    new StringBuilder("Color selected: ").append(paramView);
    paramView = (RadioButton)paramView;
    setBuilderColor(getColorWithOpacity(getSelectedColor(paramView), i));
    resetButtons(paramView);
    this$0.updateCaptions();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog.ColorSelectorClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */