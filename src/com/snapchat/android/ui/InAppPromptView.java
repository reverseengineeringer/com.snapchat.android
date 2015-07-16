package com.snapchat.android.ui;

import amu;
import amu.a;
import amv;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import bbo;
import bdr;
import beg;
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
  private amv d;
  private amu e;
  
  public InAppPromptView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, new amv(), amu.a());
  }
  
  InAppPromptView(Context paramContext, AttributeSet paramAttributeSet, amv paramamv, amu paramamu)
  {
    super(paramContext, paramAttributeSet);
    a = paramContext;
    d = paramamv;
    e = paramamu;
  }
  
  public void onFinishInflate()
  {
    b = ((ImageView)findViewById(2131362396));
    c = ((TextView)findViewById(2131362401));
  }
  
  public void set(final amu.a parama)
  {
    Object localObject = getResources();
    AndroidNotificationManager.Type localType = c;
    int i;
    switch (2.a[localType.ordinal()])
    {
    default: 
      i = 2131230792;
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
            paramAnonymousView = amv.a(InAppPromptView.b(InAppPromptView.this), paramac, locala, paramAnonymousView, false);
            if (paramac != AndroidNotificationManager.Type.ADDFRIEND)
            {
              bbo.a().a(new beg(true));
              bbo.a().a(new bdr(1));
            }
            InAppPromptView.b(InAppPromptView.this).startActivity(paramAnonymousView);
            return;
            locala = new AndroidNotificationManager.a(paramaa);
          }
        }
      });
      return;
      i = 2131230785;
      break;
      i = 2131230727;
      break;
      i = 2131230803;
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