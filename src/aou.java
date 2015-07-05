import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.LandingPageActivity;

public final class aou
  extends apf<bjj>
{
  private final Context a;
  private final int b;
  
  public aou(Context paramContext)
  {
    super(paramContext);
    a = paramContext;
    b = 2130968764;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(getContext()).inflate(b, paramViewGroup, false);
      paramViewGroup = new aou.a(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      final bjj localbjj = (bjj)getItem(paramInt);
      String str = atm.e(localbjj.a(), ajv.g());
      b.setText(str);
      if (aud.a(localbjj.b()))
      {
        b.setTextColor(a.getResources().getColor(2131230765));
        c.setVisibility(0);
      }
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new bee(localbjj.a());
          ((LandingPageActivity)aou.a(aou.this)).onSwitchToChatEvent(paramAnonymousView);
        }
      });
      return paramView;
      paramViewGroup = (aou.a)paramView.getTag();
      a.setOnClickListener(null);
      b.setTextColor(d.a.getResources().getColor(2131230810));
      c.setVisibility(8);
    }
  }
  
  final class a
  {
    View a;
    TextView b;
    ImageView c;
    
    public a(View paramView)
    {
      a = paramView;
      b = ((TextView)paramView.findViewById(2131362793));
      c = ((ImageView)paramView.findViewById(2131362792));
    }
  }
}

/* Location:
 * Qualified Name:     aou
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */