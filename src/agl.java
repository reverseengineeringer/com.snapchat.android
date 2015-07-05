import android.content.Context;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.support.v7.widget.RecyclerView.s;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.AlertDialogUtils.YesNoOption;
import com.snapchat.android.util.AlertDialogUtils.a;
import java.util.List;

public final class agl
  extends RecyclerView.a<agl.a>
{
  final Context c;
  final List<Friend> d;
  final String e;
  final ajx f;
  
  public agl(Context paramContext, List<Friend> paramList, ajx paramajx)
  {
    c = paramContext;
    d = paramList;
    e = c.getString(2131493117);
    f = paramajx;
  }
  
  public final int a()
  {
    return d.size();
  }
  
  protected final void e(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < a()))
    {
      d.remove(paramInt);
      d(paramInt);
      return;
    }
    a.b();
  }
  
  public static final class a
    extends RecyclerView.s
  {
    public TextView k;
    public View l;
    public View m;
    
    public a(View paramView)
    {
      super();
      k = ((TextView)paramView.findViewById(2131361916));
      l = paramView.findViewById(2131361917);
      m = paramView.findViewById(2131361918);
    }
  }
}

/* Location:
 * Qualified Name:     agl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */