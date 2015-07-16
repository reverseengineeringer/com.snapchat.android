package com.snapchat.android.stories.ui;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import api;
import api.a;
import ara;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.squareup.otto.Bus;

final class MyStoryView$1
  implements View.OnClickListener
{
  MyStoryView$1(MyStoryView paramMyStoryView) {}
  
  public final void onClick(View paramView)
  {
    Object localObject = SnapchatApplication.b().getResources();
    paramView = ((Resources)localObject).getString(2131493106);
    String str = ((Resources)localObject).getString(2131493110);
    localObject = ((Resources)localObject).getString(2131492952);
    new ara(MyStoryView.a(a), paramView, str, (String)localObject)
    {
      protected final void a()
      {
        MyStoryView.e(a).a(MyStoryView.b(a), new api.a()
        {
          public final void a()
          {
            String str = MyStoryView.a(a).getResources().getString(2131493105);
            MyStoryView.c(a).a(MyStoryView.a(str, -16777216));
          }
          
          public final void b() {}
          
          public final void c()
          {
            String str = MyStoryView.a(a).getResources().getString(2131493109);
            MyStoryView.c(a).a(MyStoryView.a(str, -16777216));
            MyStoryView.d(a).c();
          }
          
          public final void d()
          {
            String str = MyStoryView.a(a).getResources().getString(2131493103);
            MyStoryView.c(a).a(MyStoryView.a(str, AndroidNotificationManager.a));
          }
        });
      }
      
      protected final void b() {}
    }.show();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.stories.ui.MyStoryView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */