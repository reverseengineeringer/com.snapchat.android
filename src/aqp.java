import android.text.Editable;
import android.view.View;
import android.view.View.OnLongClickListener;
import com.snapchat.android.ui.caption.FatCaptionEditText;

public final class aqp
  implements View.OnLongClickListener
{
  public final boolean onLongClick(View paramView)
  {
    if ((paramView instanceof FatCaptionEditText))
    {
      paramView = (FatCaptionEditText)paramView;
      if (y) {
        break label21;
      }
    }
    label21:
    int i;
    int k;
    Editable localEditable;
    do
    {
      return true;
      i = paramView.getSelectionStart();
      k = paramView.getSelectionEnd();
      localEditable = paramView.getText();
    } while ((i != k) || (i <= 0) || (Character.isWhitespace(localEditable.charAt(i - 1))));
    int j;
    for (;;)
    {
      j = k;
      if (i <= 0) {
        break;
      }
      j = k;
      if (Character.isWhitespace(localEditable.charAt(i - 1))) {
        break;
      }
      i -= 1;
    }
    while ((j < localEditable.length()) && (!Character.isWhitespace(localEditable.charAt(j)))) {
      j += 1;
    }
    paramView.setSelection(i, j);
    return true;
  }
}

/* Location:
 * Qualified Name:     aqp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */