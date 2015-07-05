import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import net.hockeyapp.android.views.AttachmentListView;
import net.hockeyapp.android.views.AttachmentView;
import net.hockeyapp.android.views.FeedbackMessageView;

public final class bvo
  extends BaseAdapter
{
  public ArrayList<bvt> a;
  private Context b;
  private SimpleDateFormat c;
  private SimpleDateFormat d;
  private Date e;
  private TextView f;
  private TextView g;
  private TextView h;
  private AttachmentListView i;
  
  public bvo(Context paramContext, ArrayList<bvt> paramArrayList)
  {
    b = paramContext;
    a = paramArrayList;
    c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
    d = new SimpleDateFormat("d MMM h:mm a");
  }
  
  public final int getCount()
  {
    return a.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return a.get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = (bvt)a.get(paramInt);
    if (paramView == null) {
      paramView = new FeedbackMessageView(b);
    }
    for (;;)
    {
      if (paramViewGroup != null)
      {
        f = ((TextView)paramView.findViewById(12289));
        g = ((TextView)paramView.findViewById(12290));
        h = ((TextView)paramView.findViewById(12291));
        i = ((AttachmentListView)paramView.findViewById(12292));
        try
        {
          e = c.parse(f);
          g.setText(d.format(e));
          f.setText(l);
          h.setText(b);
          i.removeAllViews();
          paramViewGroup = n.iterator();
          while (paramViewGroup.hasNext())
          {
            bvs localbvs = (bvs)paramViewGroup.next();
            AttachmentView localAttachmentView = new AttachmentView(b, i, localbvs);
            bvv localbvv = bvv.a.a;
            a.add(new bvv.b(localbvs, localAttachmentView, (byte)0));
            localbvv.a();
            i.addView(localAttachmentView);
            continue;
            paramView = (FeedbackMessageView)paramView;
          }
        }
        catch (ParseException localParseException)
        {
          for (;;)
          {
            localParseException.printStackTrace();
          }
        }
      }
    }
    if (paramInt % 2 == 0) {}
    for (paramInt = 0;; paramInt = 1)
    {
      paramView.setFeedbackMessageViewBgAndTextColor(paramInt);
      return paramView;
    }
  }
}

/* Location:
 * Qualified Name:     bvo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */