import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Friend.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class agn
  extends apf<Friend>
  implements StickyListHeadersAdapter
{
  private Context a;
  private List<Friend> b;
  private List<Friend> c;
  private List<Friend> d;
  private LayoutInflater e;
  private Friend.a f;
  private Filter g;
  private agn.a h;
  
  public agn(Context paramContext, ArrayList<Friend> paramArrayList, Friend.a parama, agn.a parama1)
  {
    super(paramContext, 2130968644, paramArrayList);
    b = paramArrayList;
    d = ((List)paramArrayList.clone());
    c = ajv.g().o();
    e = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    a = paramContext;
    f = parama;
    h = parama1;
  }
  
  public final int getCount()
  {
    return b.size();
  }
  
  public final Filter getFilter()
  {
    if (g == null) {
      g = new agn.b((byte)0);
    }
    return g;
  }
  
  public final long getHeaderId(int paramInt)
  {
    Friend localFriend = (Friend)b.get(paramInt);
    return Friend.a.a(Friend.a.a(localFriend), localFriend, a).hashCode();
  }
  
  public final View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    if (paramView == null)
    {
      localObject = new agn.c();
      paramView = e.inflate(2130968681, paramViewGroup, false);
      a = ((TextView)paramView.findViewById(2131361919));
      paramView.setTag(localObject);
    }
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (agn.c)paramView.getTag())
    {
      localObject = (Friend)b.get(paramInt);
      localObject = Friend.a.a(Friend.a.a((Friend)localObject), localObject, a);
      a.setText((CharSequence)localObject);
      return paramView;
    }
  }
  
  public final View getView(int paramInt, final View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = e.inflate(2130968644, paramViewGroup, false);
    }
    paramView = (Friend)b.get(paramInt);
    if (paramView != null)
    {
      paramViewGroup = (TextView)localView.findViewById(2131362129);
      if ((paramViewGroup != null) && (paramView.g()))
      {
        if (!mIsPending) {
          break label167;
        }
        if (!paramView.j()) {
          break label156;
        }
        paramViewGroup.setText(paramView.a());
      }
      paramViewGroup = (CheckBox)localView.findViewById(2131362196);
      if (paramViewGroup != null)
      {
        paramViewGroup.setOnCheckedChangeListener(null);
        if (!h.a(paramView)) {
          break label222;
        }
        paramViewGroup.setChecked(true);
      }
    }
    for (;;)
    {
      paramViewGroup.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            agn.a(agn.this).b(paramView);
            return;
          }
          agn.a(agn.this).c(paramView);
        }
      });
      if (!h.a(paramView)) {
        break label230;
      }
      localView.setBackgroundResource(2131230799);
      return localView;
      label156:
      paramViewGroup.setText(paramView.h());
      break;
      label167:
      if (paramView.j()) {
        paramViewGroup.setText(paramView.a());
      }
      for (;;)
      {
        if (!paramView.h().equals(ajx.l())) {
          break label220;
        }
        paramViewGroup.append(getContext().getString(2131493234));
        break;
        paramViewGroup.setText(paramView.h());
      }
      label220:
      break;
      label222:
      paramViewGroup.setChecked(false);
    }
    label230:
    localView.setBackgroundColor(-1);
    return localView;
  }
  
  public static abstract interface a
  {
    public abstract boolean a(Friend paramFriend);
    
    public abstract void b(Friend paramFriend);
    
    public abstract void c(Friend paramFriend);
  }
  
  final class b
    extends Filter
  {
    private b() {}
    
    protected final Filter.FilterResults performFiltering(CharSequence paramCharSequence)
    {
      Object localObject = paramCharSequence.toString();
      if ((localObject == null) || (((String)localObject).length() == 0)) {
        paramCharSequence = agn.b(agn.this);
      }
      for (;;)
      {
        localObject = new Filter.FilterResults();
        values = paramCharSequence;
        return (Filter.FilterResults)localObject;
        paramCharSequence = new ArrayList();
        Iterator localIterator = agn.c(agn.this).iterator();
        while (localIterator.hasNext())
        {
          Friend localFriend = (Friend)localIterator.next();
          if (((!mIsBlocked) && (aui.a(localFriend.h(), (String)localObject))) || (aui.a(localFriend.a(), (String)localObject))) {
            paramCharSequence.add(localFriend);
          }
        }
      }
    }
    
    protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      agn.a(agn.this, (List)values);
      notifyDataSetChanged();
    }
  }
  
  final class c
  {
    TextView a;
    
    c() {}
  }
}

/* Location:
 * Qualified Name:     agn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */