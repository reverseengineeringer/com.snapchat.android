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

public final class ahk
  extends aqb<Friend>
  implements StickyListHeadersAdapter
{
  private Context a;
  private List<Friend> b;
  private List<Friend> c;
  private List<Friend> d;
  private LayoutInflater e;
  private Friend.a f;
  private Filter g;
  private ahk.a h;
  
  public ahk(Context paramContext, ArrayList<Friend> paramArrayList, Friend.a parama, ahk.a parama1)
  {
    super(paramContext, 2130968645, paramArrayList);
    b = paramArrayList;
    d = ((List)paramArrayList.clone());
    c = akp.g().o();
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
      g = new ahk.b((byte)0);
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
      localObject = new ahk.c();
      paramView = e.inflate(2130968682, paramViewGroup, false);
      a = ((TextView)paramView.findViewById(2131361919));
      paramView.setTag(localObject);
    }
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (ahk.c)paramView.getTag())
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
      localView = e.inflate(2130968645, paramViewGroup, false);
    }
    paramView = (Friend)b.get(paramInt);
    if (paramView != null)
    {
      paramViewGroup = (TextView)localView.findViewById(2131362129);
      if ((paramViewGroup != null) && (paramView.h()))
      {
        if (!mIsPending) {
          break label167;
        }
        if (!paramView.n()) {
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
            ahk.a(ahk.this).b(paramView);
            return;
          }
          ahk.a(ahk.this).c(paramView);
        }
      });
      if (!h.a(paramView)) {
        break label230;
      }
      localView.setBackgroundResource(2131230800);
      return localView;
      label156:
      paramViewGroup.setText(paramView.l());
      break;
      label167:
      if (paramView.n()) {
        paramViewGroup.setText(paramView.a());
      }
      for (;;)
      {
        if (!paramView.l().equals(akr.l())) {
          break label220;
        }
        paramViewGroup.append(getContext().getString(2131493234));
        break;
        paramViewGroup.setText(paramView.l());
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
        paramCharSequence = ahk.b(ahk.this);
      }
      for (;;)
      {
        localObject = new Filter.FilterResults();
        values = paramCharSequence;
        return (Filter.FilterResults)localObject;
        paramCharSequence = new ArrayList();
        Iterator localIterator = ahk.c(ahk.this).iterator();
        while (localIterator.hasNext())
        {
          Friend localFriend = (Friend)localIterator.next();
          if (((!mIsBlocked) && (avg.a(localFriend.l(), (String)localObject))) || (avg.a(localFriend.a(), (String)localObject))) {
            paramCharSequence.add(localFriend);
          }
        }
      }
    }
    
    protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      ahk.a(ahk.this, (List)values);
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
 * Qualified Name:     ahk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */