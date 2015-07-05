package com.snapchat.android.ui;

import alx;
import alx.a;
import aly;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import ban;
import bcr;
import bdg;
import com.snapchat.android.notification.AndroidNotificationManager.Type;
import com.snapchat.android.notification.AndroidNotificationManager.a;
import com.snapchat.android.notification.AndroidNotificationManager.b;
import com.squareup.otto.Bus;

public class InAppPromptView
  extends RelativeLayout
{
  private Context a;
  private ImageView b;
  private TextView c;
  private aly d;
  private alx e;
  
  public InAppPromptView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, new aly(), alx.a());
  }
  
  InAppPromptView(Context paramContext, AttributeSet paramAttributeSet, aly paramaly, alx paramalx)
  {
    super(paramContext, paramAttributeSet);
    a = paramContext;
    d = paramaly;
    e = paramalx;
  }
  
  public void onFinishInflate()
  {
    b = ((ImageView)findViewById(2131362398));
    c = ((TextView)findViewById(2131362403));
  }
  
  public void set(final alx.a parama)
  {
    Object localObject = getResources();
    AndroidNotificationManager.Type localType = c;
    int i;
    switch (2.a[localType.ordinal()])
    {
    default: 
      i = 2131230791;
      setBackgroundColor(((Resources)localObject).getColor(i));
      localObject = b;
      localType = c;
      switch (2.a[localType.ordinal()])
      {
      case 6: 
      default: 
        i = 2130837854;
        label139:
        ((ImageView)localObject).setImageResource(i);
        if (c == AndroidNotificationManager.Type.TYPING)
        {
          localObject = getResources().getStringArray(2131165195)[0];
          c.setText(String.format((String)localObject, new Object[] { b }));
        }
        break;
      }
      break;
    }
    for (;;)
    {
      setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          AndroidNotificationManager.a locala = null;
          InAppPromptView.a(InAppPromptView.this).b();
          if (paramad != null) {}
          for (paramAnonymousView = new AndroidNotificationManager.b(paramaa, paramad);; paramAnonymousView = null)
          {
            paramAnonymousView = aly.a(InAppPromptView.b(InAppPromptView.this), paramac, locala, paramAnonymousView, false);
            if (paramac != AndroidNotificationManager.Type.ADDFRIEND)
            {
              ban.a().a(new bdg(true));
              ban.a().a(new bcr(1));
            }
            InAppPromptView.b(InAppPromptView.this).startActivity(paramAnonymousView);
            return;
            locala = new AndroidNotificationManager.a(paramaa);
          }
        }
      });
      return;
      i = 2131230784;
      break;
      i = 2131230727;
      break;
      i = 2131230802;
      break;
      i = 2130837849;
      break label139;
      i = 2130837853;
      break label139;
      i = 2130837852;
      break label139;
      i = 2130837850;
      break label139;
      i = 2130837851;
      break label139;
      c.setText(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.InAppPromptView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */