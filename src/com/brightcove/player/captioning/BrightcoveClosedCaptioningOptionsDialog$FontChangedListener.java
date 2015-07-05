package com.brightcove.player.captioning;

import android.graphics.Typeface;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import com.brightcove.player.R.id;

public class BrightcoveClosedCaptioningOptionsDialog$FontChangedListener
  implements RadioGroup.OnCheckedChangeListener
{
  protected BrightcoveClosedCaptioningOptionsDialog$FontChangedListener(BrightcoveClosedCaptioningOptionsDialog paramBrightcoveClosedCaptioningOptionsDialog) {}
  
  private Typeface getTypeface(int paramInt)
  {
    if (paramInt == R.id.closed_captioning_options_font_selection_normal) {
      return Typeface.DEFAULT;
    }
    if (paramInt == R.id.closed_captioning_options_font_selection_monospace) {
      return Typeface.MONOSPACE;
    }
    if (paramInt == R.id.closed_captioning_options_font_selection_serif) {
      return Typeface.SERIF;
    }
    if (paramInt == R.id.closed_captioning_options_font_selection_sans_serif) {
      return Typeface.SANS_SERIF;
    }
    return Typeface.DEFAULT;
  }
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).setTypeface(getTypeface(paramInt));
    this$0.updateCaptions();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog.FontChangedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */