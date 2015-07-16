import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import android.widget.TextView;

public class atn
  extends RecyclerView.s
{
  public final TextView V;
  
  public atn(View paramView, int paramInt)
  {
    this(paramView, (TextView)paramView.findViewById(paramInt));
  }
  
  private atn(View paramView, TextView paramTextView)
  {
    super(paramView);
    V = paramTextView;
  }
  
  public final void a(String paramString)
  {
    V.setText(paramString);
  }
  
  public final void b(int paramInt)
  {
    V.setTextColor(paramInt);
  }
}

/* Location:
 * Qualified Name:     atn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */