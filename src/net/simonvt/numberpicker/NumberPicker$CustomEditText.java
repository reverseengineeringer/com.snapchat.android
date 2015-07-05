package net.simonvt.numberpicker;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;

public class NumberPicker$CustomEditText
  extends EditText
{
  public NumberPicker$CustomEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void onEditorAction(int paramInt)
  {
    super.onEditorAction(paramInt);
    if (paramInt == 6) {
      clearFocus();
    }
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.NumberPicker.CustomEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */