import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class apa$2
  implements DialogInterface.OnClickListener
{
  apa$2(apa paramapa, EditText paramEditText) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((InputMethodManager)apa.a(b).getSystemService("input_method")).hideSoftInputFromWindow(a.getWindowToken(), 0);
    paramDialogInterface.cancel();
  }
}

/* Location:
 * Qualified Name:     apa.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */