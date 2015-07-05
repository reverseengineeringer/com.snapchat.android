package com.brightcove.player.captioning;

import android.graphics.Color;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import com.brightcove.player.R.id;

public class BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener
  implements RadioGroup.OnCheckedChangeListener
{
  protected final BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType optionsType;
  
  public BrightcoveClosedCaptioningOptionsDialog$OpacitySelectorChangedListener(BrightcoveClosedCaptioningOptionsDialog paramBrightcoveClosedCaptioningOptionsDialog, BrightcoveClosedCaptioningOptionsDialog.ClosedCaptioningOptionsType paramClosedCaptioningOptionsType)
  {
    optionsType = paramClosedCaptioningOptionsType;
  }
  
  protected int getColorWithOpacity(int paramInt)
  {
    int j = getCurrentColor();
    int i;
    if (paramInt == R.id.closed_captioning_options_opacity_none) {
      i = Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_TRANSPARENT, Color.red(j), Color.green(j), Color.blue(j));
    }
    do
    {
      return i;
      if (paramInt == R.id.closed_captioning_options_opacity_semi_transparent) {
        return Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT, Color.red(j), Color.green(j), Color.blue(j));
      }
      if (paramInt == R.id.closed_captioning_options_opacity_semi_transparent_light) {
        return Color.argb(BrightcoveClosedCaptioningStyle.OPACITY_SEMI_TRANSPARENT_LIGHT, Color.red(j), Color.green(j), Color.blue(j));
      }
      i = j;
    } while (paramInt != R.id.closed_captioning_options_opacity_opaque);
    return Color.argb(255, Color.red(j), Color.green(j), Color.blue(j));
  }
  
  protected int getCurrentColor()
  {
    switch (BrightcoveClosedCaptioningOptionsDialog.3.$SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType[optionsType.ordinal()])
    {
    default: 
      BrightcoveClosedCaptioningOptionsDialog.access$100();
      String.format("Unknown CC Options Type: %s", new Object[] { optionsType.toString() });
      return -1;
    case 1: 
      return BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getTextColor();
    case 2: 
      return BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getEdgeColor();
    case 3: 
      return BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getHighlightColor();
    }
    return BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).getBackgroundColor();
  }
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    setBuilderColor(getColorWithOpacity(paramInt));
    this$0.updateCaptions();
  }
  
  protected void setBuilderColor(int paramInt)
  {
    switch (BrightcoveClosedCaptioningOptionsDialog.3.$SwitchMap$com$brightcove$player$captioning$BrightcoveClosedCaptioningOptionsDialog$ClosedCaptioningOptionsType[optionsType.ordinal()])
    {
    default: 
      return;
    case 1: 
      BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).setTextColor(paramInt);
      return;
    case 2: 
      BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).setEdgeColor(paramInt);
      return;
    case 3: 
      BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).setHighlightColor(paramInt);
      return;
    }
    BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).setBackgroundColor(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog.OpacitySelectorChangedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */