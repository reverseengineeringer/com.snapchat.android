package com.snapchat.android.stories.ui;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import api;
import api.a;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.squareup.otto.Bus;

final class MyStoryView$2
  implements View.OnClickListener
{
  MyStoryView$2(MyStoryView paramMyStoryView) {}
  
  public final void onClick(View paramView)
  {
    MyStoryView.e(a).b(MyStoryView.b(a), new api.a()
    {
      public final void a()
      {
        String str = MyStoryView.a(a).getResources().getString(2131493370);
        MyStoryView.c(a).a(MyStoryView.a(str, -16777216));
      }
      
      public final void b() {}
      
      public final void c()
      {
        String str = MyStoryView.a(a).getResources().getString(2131493376);
        MyStoryView.c(a).a(MyStoryView.a(str, -16777216));
      }
      
      public final void d()
      {
        String str = MyStoryView.a(a).getResources().getString(2131493369);
        MyStoryView.c(a).a(MyStoryView.a(str, AndroidNotificationManager.a));
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.stories.ui.MyStoryView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */