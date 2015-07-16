import android.content.Context;
import android.database.Cursor;
import android.support.v4.widget.CursorAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.snapchat.android.database.schema.HttpMetricSchema;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class mr
  extends CursorAdapter
{
  private LayoutInflater a;
  
  public mr(Context paramContext)
  {
    super(paramContext, null);
    a = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  public final void bindView$4693bf34(View paramView, Cursor paramCursor)
  {
    int i = paramCursor.getInt(HttpMetricSchema.STATUS_CODE.getColumnNumber());
    long l;
    String str;
    TextView localTextView;
    if ((i >= 200) && (i < 300))
    {
      i = 1;
      l = paramCursor.getLong(HttpMetricSchema.TIMESTAMP.getColumnNumber());
      str = new SimpleDateFormat("[hh:mm:ss]").format(new Date(l));
      ((TextView)paramView.findViewById(2131362391)).setText(str);
      ((TextView)paramView.findViewById(2131362390)).setText(paramCursor.getString(HttpMetricSchema.PATH.getColumnNumber()));
      l = paramCursor.getLong(HttpMetricSchema.DURATION.getColumnNumber());
      ((TextView)paramView.findViewById(2131362392)).setText(l + " ms");
      str = paramCursor.getString(HttpMetricSchema.METHOD.getColumnNumber());
      localTextView = (TextView)paramView.findViewById(2131362389);
      localTextView.setText(str);
      if (i == 0) {
        break label339;
      }
    }
    label339:
    for (i = -16729344;; i = -65536)
    {
      localTextView.setBackgroundColor(i);
      str = paramCursor.getString(HttpMetricSchema.STATUS_LINE.getColumnNumber());
      ((TextView)paramView.findViewById(2131362393)).setText(str);
      l = paramCursor.getLong(HttpMetricSchema.SENT_BYTES.getColumnNumber());
      ((TextView)paramView.findViewById(2131362387)).setText(NumberFormat.getNumberInstance(Locale.US).format(l) + " ↑");
      l = paramCursor.getLong(HttpMetricSchema.RECEIVED_BYTES.getColumnNumber());
      ((TextView)paramView.findViewById(2131362388)).setText(NumberFormat.getNumberInstance(Locale.US).format(l) + " ↓");
      return;
      i = 0;
      break;
    }
  }
  
  public final View newView$4b8874c5(ViewGroup paramViewGroup)
  {
    return a.inflate(2130968687, paramViewGroup, false);
  }
}

/* Location:
 * Qualified Name:     mr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */