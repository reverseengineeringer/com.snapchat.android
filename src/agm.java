import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.snapchat.android.model.chat.ChatConversation;

public final class agm
  extends apf<ChatConversation>
{
  private final Context a;
  private final LayoutInflater b;
  private final atw<ChatConversation> c;
  
  private agm(Context paramContext, atw<ChatConversation> paramatw)
  {
    super(paramContext, 2130968632, paramatw);
    a = paramContext;
    b = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    c = paramatw;
  }
  
  public static agm a(Context paramContext, atw<ChatConversation> paramatw)
  {
    paramContext = new agm(paramContext, paramatw);
    mAdapter = paramContext;
    return paramContext;
  }
  
  private void a(boolean paramBoolean, agm.a parama, ChatConversation paramChatConversation)
  {
    if (paramBoolean)
    {
      b.setText(2131493420);
      c.setVisibility(8);
      d.setVisibility(0);
      return;
    }
    long l = paramChatConversation.x();
    if (l > 0L) {
      b.setText(ata.b(getContext(), l));
    }
    for (;;)
    {
      c.setVisibility(0);
      d.setVisibility(8);
      return;
      b.setText("");
    }
  }
  
  public final View getView(int paramInt, View paramView, final ViewGroup paramViewGroup)
  {
    final Object localObject;
    if (paramView == null)
    {
      localObject = new agm.a((byte)0);
      paramView = b.inflate(2130968632, paramViewGroup, false);
      a = ((TextView)paramView.findViewById(2131362138));
      b = ((TextView)paramView.findViewById(2131362139));
      c = ((ImageView)paramView.findViewById(2131362140));
      d = ((ProgressBar)paramView.findViewById(2131362141));
      paramView.setTag(localObject);
    }
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (agm.a)paramView.getTag())
    {
      localObject = (ChatConversation)c.get(paramInt);
      a.setText(ym.a((ChatConversation)localObject));
      a(mBeingCleared, paramViewGroup, (ChatConversation)localObject);
      c.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (ajx.X())
          {
            paramAnonymousView = new AlertDialog.Builder(agm.a(agm.this));
            View localView = agm.b(agm.this).inflate(2130968630, null);
            if (localView == null) {
              throw new NullPointerException();
            }
            final CheckBox localCheckBox = (CheckBox)localView.findViewById(2131362131);
            localCheckBox.setText(2131493604);
            paramAnonymousView.setView(localView).setTitle(2131493415).setPositiveButton(2131493269, new DialogInterface.OnClickListener()
            {
              public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                if (localCheckBox.isChecked()) {
                  ajx.Y();
                }
                agm.a(agm.this, a, b);
              }
            }).setNegativeButton(2131492952, null);
            paramAnonymousView.create().show();
            return;
          }
          agm.a(agm.this, paramViewGroup, localObject);
        }
      });
      return paramView;
    }
  }
  
  final class a
  {
    TextView a;
    TextView b;
    ImageView c;
    ProgressBar d;
    
    private a() {}
  }
}

/* Location:
 * Qualified Name:     agm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */