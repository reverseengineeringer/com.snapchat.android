import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.Window;

final class apa$3
  implements View.OnFocusChangeListener
{
  apa$3(apa paramapa) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean) {
      a.getWindow().setSoftInputMode(5);
    }
  }
}

/* Location:
 * Qualified Name:     apa.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */