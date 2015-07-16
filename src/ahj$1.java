import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.snapchat.android.model.chat.ChatConversation;

final class ahj$1
  implements View.OnClickListener
{
  ahj$1(ahj paramahj, ahj.a parama, ChatConversation paramChatConversation) {}
  
  public final void onClick(View paramView)
  {
    if (akr.X())
    {
      paramView = new AlertDialog.Builder(ahj.a(c));
      View localView = ahj.b(c).inflate(2130968631, null);
      if (localView == null) {
        throw new NullPointerException();
      }
      final CheckBox localCheckBox = (CheckBox)localView.findViewById(2131362131);
      localCheckBox.setText(2131493602);
      paramView.setView(localView).setTitle(2131493415).setPositiveButton(2131493269, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (localCheckBox.isChecked()) {
            akr.Y();
          }
          ahj.a(c, a, b);
        }
      }).setNegativeButton(2131492952, null);
      paramView.create().show();
      return;
    }
    ahj.a(c, a, b);
  }
}

/* Location:
 * Qualified Name:     ahj.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */