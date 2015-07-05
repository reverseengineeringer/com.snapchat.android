import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import android.widget.TextView;

public class aso
  extends RecyclerView.s
{
  public final TextView X;
  
  public aso(View paramView, int paramInt)
  {
    this(paramView, (TextView)paramView.findViewById(paramInt));
  }
  
  private aso(View paramView, TextView paramTextView)
  {
    super(paramView);
    X = paramTextView;
  }
  
  public final void a(String paramString)
  {
    X.setText(paramString);
  }
  
  public final void b(int paramInt)
  {
    X.setTextColor(paramInt);
  }
}

/* Location:
 * Qualified Name:     aso
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */