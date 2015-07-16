package net.hockeyapp.android;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import bwr;
import bwv;
import bxj;
import bxj.a;

final class FeedbackActivity$3
  extends Handler
{
  FeedbackActivity$3(FeedbackActivity paramFeedbackActivity) {}
  
  public final void handleMessage(Message paramMessage)
  {
    FeedbackActivity.a(a, new bwr());
    int i;
    if ((paramMessage != null) && (paramMessage.getData() != null))
    {
      paramMessage = (bwv)paramMessage.getData().getSerializable("parse_feedback_response");
      if (paramMessage != null) {
        if (a.equalsIgnoreCase("success"))
        {
          if (c == null) {
            break label130;
          }
          bxj.a.a.a(FeedbackActivity.c(a), c);
          FeedbackActivity.a(a, paramMessage);
          FeedbackActivity.d(a);
          i = 1;
        }
      }
    }
    for (;;)
    {
      if (i == 0) {
        a.runOnUiThread(new Runnable()
        {
          public final void run()
          {
            a.showDialog(0);
          }
        });
      }
      a.a(true);
      return;
      i = 0;
      continue;
      label130:
      i = 1;
      continue;
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.FeedbackActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */