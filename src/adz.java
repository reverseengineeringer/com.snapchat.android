import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class adz
  extends aqb<ChannelPage>
{
  protected final Map<String, aes> a = new HashMap();
  protected final View.OnClickListener b = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      Object localObject = (ChannelView)paramAnonymousView;
      int i = -1;
      if (paramAnonymousView.getTag(2131361793) != null) {
        i = ((Integer)paramAnonymousView.getTag(2131361793)).intValue();
      }
      if (!adz.b(adz.this).a((ChannelView)localObject, adz.a(adz.this), EditionOpenOrigin.STORIES, i))
      {
        String str = getChannelPageb;
        localObject = (aes)a.get(str);
        paramAnonymousView = (View)localObject;
        if (localObject == null) {
          paramAnonymousView = new aes();
        }
        a = true;
        a.put(str, paramAnonymousView);
      }
    }
  };
  private final afh c;
  private final LayoutInflater d;
  private final OpenChannelAnimationView e;
  
  public adz(Context paramContext, afh paramafh, OpenChannelAnimationView paramOpenChannelAnimationView, List<ChannelPage> paramList)
  {
    this(paramContext, paramafh, paramOpenChannelAnimationView, paramList, (LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  private adz(Context paramContext, afh paramafh, OpenChannelAnimationView paramOpenChannelAnimationView, List<ChannelPage> paramList, LayoutInflater paramLayoutInflater)
  {
    super(paramContext, 2130968616, paramList);
    d = paramLayoutInflater;
    c = paramafh;
    e = paramOpenChannelAnimationView;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ChannelPage localChannelPage;
    Object localObject;
    if (paramView == null)
    {
      paramView = d.inflate(2130968616, paramViewGroup, false);
      paramViewGroup = (ChannelView)paramView.findViewById(2131362057);
      paramView.setTag(2131362057, paramViewGroup);
      paramViewGroup.setTag(2131361793, Integer.valueOf(paramInt));
      localChannelPage = (ChannelPage)getItem(paramInt);
      localObject = paramViewGroup.getChannelPage();
      if (localObject != null) {
        break label169;
      }
      localObject = null;
      label67:
      if (!TextUtils.equals((CharSequence)localObject, b)) {
        paramViewGroup.a();
      }
      if (localChannelPage.e()) {
        a.remove(b);
      }
      localObject = (aes)a.get(b);
      if (localObject == null) {
        break label179;
      }
      paramViewGroup.setProgressBarVisibility(a);
    }
    for (;;)
    {
      paramViewGroup.setChannelPage(localChannelPage);
      paramViewGroup.setOnClickListener(b);
      return paramView;
      paramViewGroup = (ChannelView)paramView.getTag(2131362057);
      break;
      label169:
      localObject = b;
      break label67;
      label179:
      paramViewGroup.setProgressBarVisibility(false);
    }
  }
}

/* Location:
 * Qualified Name:     adz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */