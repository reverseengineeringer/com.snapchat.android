package com.snapchat.android.stories.ui;

import android.content.Context;
import android.content.res.Resources;
import aom;
import aom.a;
import aqb;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.squareup.otto.Bus;

final class MyStoryView$1$1
  extends aqb
{
  MyStoryView$1$1(MyStoryView.1 param1, Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    super(paramContext, paramString1, paramString2, paramString3);
  }
  
  protected final void a()
  {
    MyStoryView.e(a.a).a(MyStoryView.b(a.a), new aom.a()
    {
      public final void a()
      {
        String str = MyStoryView.a(a.a).getResources().getString(2131493105);
        MyStoryView.c(a.a).a(MyStoryView.a(str, -16777216));
      }
      
      public final void b() {}
      
      public final void c()
      {
        String str = MyStoryView.a(a.a).getResources().getString(2131493109);
        MyStoryView.c(a.a).a(MyStoryView.a(str, -16777216));
        MyStoryView.d(a.a).a();
      }
      
      public final void d()
      {
        String str = MyStoryView.a(a.a).getResources().getString(2131493103);
        MyStoryView.c(a.a).a(MyStoryView.a(str, AndroidNotificationManager.a));
      }
    });
  }
  
  protected final void b() {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.stories.ui.MyStoryView.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */