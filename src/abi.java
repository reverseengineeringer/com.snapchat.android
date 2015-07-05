import android.content.Context;
import android.database.Cursor;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import android.widget.TextView;

public final class abi
  extends CursorAdapter
{
  public boolean a = false;
  private LayoutInflater b;
  
  public abi(Context paramContext)
  {
    super(paramContext, null);
    b = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    paramContext = new SpannableStringBuilder();
    TextView localTextView = (TextView)paramView.findViewById(2131362208);
    int i = 0;
    while (i < paramCursor.getColumnCount())
    {
      if ((a) || (!TextUtils.equals(paramCursor.getColumnName(i), "_id")))
      {
        paramContext.append("[");
        int j = paramContext.length();
        paramContext.append(paramCursor.getColumnName(i));
        paramContext.setSpan(new ForegroundColorSpan(-16776961), j, paramContext.length(), 0);
        paramContext.setSpan(new StyleSpan(1), j, paramContext.length(), 0);
        paramContext.append(":" + paramCursor.getString(i) + "]");
        if (i < paramCursor.getColumnCount() - 1) {
          paramContext.append("\n");
        }
      }
      i += 1;
    }
    if (paramCursor.getPosition() % 2 == 0) {}
    for (float f = 0.8F;; f = 1.0F)
    {
      paramView.setAlpha(f);
      localTextView.setText(paramContext);
      return;
    }
  }
  
  public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return b.inflate(2130968647, paramViewGroup, false);
  }
}

/* Location:
 * Qualified Name:     abi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */