import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class apq
{
  final ImageView a;
  final TextView b;
  final ProgressBar c;
  final String d;
  
  public apq(String paramString, View paramView)
  {
    d = paramString;
    a = ((ImageView)paramView.findViewById(2131362408));
    b = ((TextView)paramView.findViewById(2131362410));
    c = ((ProgressBar)paramView.findViewById(2131362409));
  }
  
  protected apq(String paramString, ImageView paramImageView, TextView paramTextView, ProgressBar paramProgressBar)
  {
    d = paramString;
    a = paramImageView;
    b = paramTextView;
    c = paramProgressBar;
  }
}

/* Location:
 * Qualified Name:     apq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */