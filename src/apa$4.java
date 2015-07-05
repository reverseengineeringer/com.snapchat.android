import android.content.Context;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class apa$4
  implements TextView.OnEditorActionListener
{
  apa$4(apa paramapa) {}
  
  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 6) || ((paramKeyEvent != null) && (paramKeyEvent.getAction() == 0) && (paramInt == 0)))
    {
      ((InputMethodManager)apa.a(a).getSystemService("input_method")).hideSoftInputFromWindow(paramTextView.getWindowToken(), 0);
      a.a(paramTextView.getText().toString());
      a.dismiss();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     apa.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */