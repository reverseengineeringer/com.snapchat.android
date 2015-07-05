import android.content.Context;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class acz
  extends CursorAdapter
{
  protected final Map<String, ads> a = new HashMap();
  protected final View.OnClickListener b = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      paramAnonymousView = (ChannelView)paramAnonymousView;
      if (!acz.b(acz.this).a(paramAnonymousView, acz.a(acz.this), EditionOpenOrigin.STORIES))
      {
        String str = getChannelPageb;
        ads localads = (ads)a.get(str);
        paramAnonymousView = localads;
        if (localads == null) {
          paramAnonymousView = new ads();
        }
        a = true;
        a.put(str, paramAnonymousView);
      }
    }
  };
  private final adj c;
  private final aeh d;
  private final LayoutInflater e;
  private final OpenChannelAnimationView f;
  private final ada g;
  
  private acz(Context paramContext, aeh paramaeh, adj paramadj, OpenChannelAnimationView paramOpenChannelAnimationView, ada paramada)
  {
    super(paramContext, null, 0);
    e = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    c = paramadj;
    d = paramaeh;
    f = paramOpenChannelAnimationView;
    g = paramada;
  }
  
  public acz(Context paramContext, aeh paramaeh, OpenChannelAnimationView paramOpenChannelAnimationView)
  {
    this(paramContext, paramaeh, adj.a(), paramOpenChannelAnimationView, new ada());
  }
  
  public final Cursor a(Cursor paramCursor, boolean paramBoolean)
  {
    Object localObject2 = paramCursor;
    if (paramCursor != null)
    {
      localObject2 = paramCursor;
      if (!paramCursor.isClosed())
      {
        localObject2 = paramCursor;
        if (paramCursor.getCount() > 0)
        {
          localObject2 = g;
          if ((paramCursor == null) || (paramCursor.isClosed()) || (paramCursor.getCount() <= 0)) {
            throw new IllegalArgumentException("Cursor must be non-null, open, and have content to sort.");
          }
          d = paramCursor;
          if (paramBoolean) {
            break label281;
          }
        }
      }
    }
    ArrayList localArrayList;
    HashSet localHashSet;
    boolean bool2;
    label281:
    for (boolean bool1 = true;; bool1 = false)
    {
      localArrayList = new ArrayList(paramCursor.getCount());
      localHashSet = new HashSet(paramCursor.getCount());
      bool2 = bool1;
      if (paramCursor.moveToFirst()) {
        do
        {
          localObject1 = c.b(paramCursor);
          bool2 = bool1;
          if (localObject1 == null) {
            break;
          }
          bool2 = bool1;
          if (bool1) {
            bool2 = bool1 & f.contains(b);
          }
          localHashSet.add(b);
          localArrayList.add(localObject1);
          bool1 = bool2;
        } while (paramCursor.moveToNext());
      }
      if (paramCursor.getCount() == localArrayList.size()) {
        break;
      }
      Timber.f("StoriesChannelViewSorter", "Failed to parse channel page.", new Object[0]);
      d = null;
      localObject1 = null;
      localObject2 = paramCursor;
      if (localObject1 != null)
      {
        localObject2 = paramCursor;
        if (localObject1.length == paramCursor.getCount()) {
          localObject2 = new zu(paramCursor, (int[])localObject1);
        }
      }
      return super.swapCursor((Cursor)localObject2);
    }
    if ((bool2) && (g != null) && (localHashSet.size() == f.size())) {
      Timber.a("StoriesChannelViewSorter", "Channels have not changed. Only sorting fully viewed channels.", new Object[0]);
    }
    for (Object localObject1 = ((ada)localObject2).a(g, j);; localObject1 = ((ada)localObject2).a(localArrayList, i))
    {
      e.clear();
      e.addAll(localArrayList);
      f.clear();
      f.addAll(localHashSet);
      break;
    }
  }
  
  @avl
  public final void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    paramContext = null;
    ChannelView localChannelView = (ChannelView)paramView.findViewById(2131362057);
    if (localChannelView != null)
    {
      if (paramCursor.isClosed())
      {
        Timber.c("StoriesChannelCursorAdapter", "Cursor was closed before bind.", new Object[0]);
        localChannelView.setVisibility(8);
      }
    }
    else {
      return;
    }
    ada localada = g;
    if (paramCursor != null) {
      if ((paramCursor instanceof CursorWrapper)) {
        paramView = ((CursorWrapper)paramCursor).getWrappedCursor();
      }
    }
    for (;;)
    {
      if (d != paramView)
      {
        Timber.e("StoriesChannelViewSorter", "Mismatch between sorted cursor and requested cursor.", new Object[0]);
        paramView = c.b(paramCursor);
        label101:
        if (paramView == null) {
          break label302;
        }
        paramCursor = localChannelView.getChannelPage();
        if (paramCursor != null) {
          break label285;
        }
        label115:
        if (!TextUtils.equals(paramContext, b)) {
          localChannelView.a();
        }
        if (paramView.e()) {
          a.remove(b);
        }
        paramContext = (ads)a.get(b);
        if (paramContext == null) {
          break label293;
        }
        localChannelView.setProgressBarVisibility(a);
      }
      for (;;)
      {
        localChannelView.setVisibility(0);
        localChannelView.setChannelPage(paramView);
        localChannelView.setOnClickListener(b);
        return;
        paramView = paramCursor;
        break;
        if ((paramCursor.getPosition() < 0) || (paramCursor.getPosition() >= e.size()))
        {
          Timber.e("StoriesChannelViewSorter", "Cursor was not successfully sorted.", new Object[0]);
          paramView = c.b(paramCursor);
          break label101;
        }
        paramView = (ChannelPage)e.get(paramCursor.getPosition());
        break label101;
        label285:
        paramContext = b;
        break label115;
        label293:
        localChannelView.setProgressBarVisibility(false);
      }
      label302:
      Timber.f("StoriesChannelCursorAdapter", "Invalid ChannelPage found in the cursor adapter!", new Object[0]);
      localChannelView.setVisibility(8);
      return;
      paramView = null;
    }
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return super.getView(paramInt, paramView, paramViewGroup);
  }
  
  public final View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return e.inflate(2130968615, paramViewGroup, false);
  }
}

/* Location:
 * Qualified Name:     acz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */