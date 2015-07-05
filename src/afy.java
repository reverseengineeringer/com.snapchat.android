import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.a;
import java.util.List;
import javax.inject.Inject;

public final class afy
  extends apf<Friend>
  implements bfe.a<Friend>, StickyListHeadersAdapter
{
  @Inject
  protected azo a;
  private final Context b;
  private final LayoutInflater c;
  private List<Friend> d;
  private final List<Friend> e;
  private final Friend.a f;
  private final Filter g;
  private final afy.a h;
  
  public afy(@cgb Context paramContext, @cgb List<Friend> paramList, @cgb Friend.a parama, @cgb afy.a parama1)
  {
    super(paramContext, 2130968629, paramList);
    SnapchatApplication.b().c().a(this);
    b = paramContext;
    c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    d = paramList;
    e = paramList;
    f = parama;
    g = new aga(e, a, this);
    h = parama1;
  }
  
  public final void a(@cgc List<Friend> paramList)
  {
    if (paramList == null) {}
    for (d = e;; d = paramList)
    {
      h.a(d);
      notifyDataSetChanged();
      return;
    }
  }
  
  public final int getCount()
  {
    return d.size();
  }
  
  public final Filter getFilter()
  {
    return g;
  }
  
  public final long getHeaderId(int paramInt)
  {
    Friend localFriend = (Friend)d.get(paramInt);
    return Friend.a.a(Friend.a.a(localFriend), localFriend, b).hashCode();
  }
  
  public final View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    if (paramView == null)
    {
      localObject = new afy.c((byte)0);
      paramView = c.inflate(2130968649, paramViewGroup, false);
      a = ((TextView)paramView);
      a.setTextColor(b.getResources().getColor(2131230727));
      paramView.setTag(localObject);
    }
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (afy.c)paramView.getTag())
    {
      localObject = (Friend)d.get(paramInt);
      localObject = Friend.a.a(Friend.a.a((Friend)localObject), localObject, b);
      a.setText((CharSequence)localObject);
      return paramView;
    }
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = c.inflate(2130968629, paramViewGroup, false);
      paramViewGroup = new afy.b();
      a = ((TextView)paramView.findViewById(2131362129));
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      Friend localFriend = (Friend)d.get(paramInt);
      a.setText(localFriend.k());
      b = localFriend;
      return paramView;
      paramViewGroup = (afy.b)paramView.getTag();
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(List<Friend> paramList);
  }
  
  public static final class b
  {
    TextView a;
    public Friend b;
  }
  
  static final class c
  {
    TextView a;
  }
}

/* Location:
 * Qualified Name:     afy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */