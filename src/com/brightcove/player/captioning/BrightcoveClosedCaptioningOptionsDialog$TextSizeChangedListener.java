package com.brightcove.player.captioning;

import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import com.brightcove.player.R.id;

public class BrightcoveClosedCaptioningOptionsDialog$TextSizeChangedListener
  implements RadioGroup.OnCheckedChangeListener
{
  protected BrightcoveClosedCaptioningOptionsDialog$TextSizeChangedListener(BrightcoveClosedCaptioningOptionsDialog paramBrightcoveClosedCaptioningOptionsDialog) {}
  
  private float getTextSize(int paramInt)
  {
    float f2 = 1.0F;
    float f1;
    if (paramInt == R.id.closed_captioning_options_text_size_50_percent) {
      f1 = 0.5F;
    }
    for (;;)
    {
      String.format("sizeMultipler is %f", new Object[] { Float.valueOf(f1) });
      return f1 * 14.0F;
      if (paramInt == R.id.closed_captioning_options_text_size_75_percent)
      {
        f1 = 0.75F;
      }
      else
      {
        f1 = f2;
        if (paramInt != R.id.closed_captioning_options_text_size_100_percent) {
          if (paramInt == R.id.closed_captioning_options_text_size_150_percent)
          {
            f1 = 1.5F;
          }
          else
          {
            f1 = f2;
            if (paramInt == R.id.closed_captioning_options_text_size_200_percent) {
              f1 = 2.0F;
            }
          }
        }
      }
    }
  }
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    String.format("Text Size %d selected", new Object[] { Integer.valueOf(paramInt) });
    BrightcoveClosedCaptioningOptionsDialog.access$200(this$0).setTextSize(getTextSize(paramInt));
    this$0.updateCaptions();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog.TextSizeChangedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */