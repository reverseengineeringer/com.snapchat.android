package net.hockeyapp.android;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import bxj;
import bxj.a;

final class FeedbackActivity$5
  implements Runnable
{
  FeedbackActivity$5(FeedbackActivity paramFeedbackActivity) {}
  
  public final void run()
  {
    bxj.a.a.a(a, null);
    bxj.a(a.getSharedPreferences("net.hockeyapp.android.feedback", 0).edit().remove("idLastMessageSend").remove("idLastMessageProcessed"));
    a.b(false);
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.FeedbackActivity.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */