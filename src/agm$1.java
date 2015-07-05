import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.snapchat.android.model.chat.ChatConversation;

final class agm$1
  implements View.OnClickListener
{
  agm$1(agm paramagm, agm.a parama, ChatConversation paramChatConversation) {}
  
  public final void onClick(View paramView)
  {
    if (ajx.X())
    {
      paramView = new AlertDialog.Builder(agm.a(c));
      View localView = agm.b(c).inflate(2130968630, null);
      if (localView == null) {
        throw new NullPointerException();
      }
      final CheckBox localCheckBox = (CheckBox)localView.findViewById(2131362131);
      localCheckBox.setText(2131493604);
      paramView.setView(localView).setTitle(2131493415).setPositiveButton(2131493269, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (localCheckBox.isChecked()) {
            ajx.Y();
          }
          agm.a(c, a, b);
        }
      }).setNegativeButton(2131492952, null);
      paramView.create().show();
      return;
    }
    agm.a(c, a, b);
  }
}

/* Location:
 * Qualified Name:     agm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */