import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.LandingPageActivity;

public final class apt
  extends aqb<bkk>
{
  private final Context a;
  private final int b;
  
  public apt(Context paramContext)
  {
    super(paramContext);
    a = paramContext;
    b = 2130968766;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      paramView = LayoutInflater.from(getContext()).inflate(b, paramViewGroup, false);
      paramViewGroup = new apt.a(paramView);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      final bkk localbkk = (bkk)getItem(paramInt);
      String str = auk.e(localbkk.a(), akp.g());
      b.setText(str);
      if (avb.a(localbkk.b()))
      {
        b.setTextColor(a.getResources().getColor(2131230766));
        c.setVisibility(0);
      }
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new bfd(localbkk.a());
          ((LandingPageActivity)apt.a(apt.this)).onSwitchToChatEvent(paramAnonymousView);
        }
      });
      return paramView;
      paramViewGroup = (apt.a)paramView.getTag();
      a.setOnClickListener(null);
      b.setTextColor(d.a.getResources().getColor(2131230812));
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
      b = ((TextView)paramView.findViewById(2131362786));
      c = ((ImageView)paramView.findViewById(2131362785));
    }
  }
}

/* Location:
 * Qualified Name:     apt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */