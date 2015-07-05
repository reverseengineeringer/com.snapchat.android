package net.hockeyapp.android.views;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class AttachmentView$3
  implements View.OnClickListener
{
  AttachmentView$3(AttachmentView paramAttachmentView, boolean paramBoolean) {}
  
  public final void onClick(View paramView)
  {
    if (!a) {
      return;
    }
    paramView = new Intent();
    paramView.setAction("android.intent.action.VIEW");
    paramView.setDataAndType(AttachmentView.c(b), "image/*");
    AttachmentView.d(b).startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.views.AttachmentView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */