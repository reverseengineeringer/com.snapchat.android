package net.hockeyapp.android;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import bvi;
import bvq;

final class FeedbackActivity$2
  extends Handler
{
  FeedbackActivity$2(FeedbackActivity paramFeedbackActivity) {}
  
  public final void handleMessage(Message paramMessage)
  {
    int i = 0;
    FeedbackActivity.a(a, new bvq());
    Object localObject;
    String str;
    if ((paramMessage != null) && (paramMessage.getData() != null))
    {
      localObject = paramMessage.getData();
      paramMessage = ((Bundle)localObject).getString("feedback_response");
      str = ((Bundle)localObject).getString("feedback_status");
      localObject = ((Bundle)localObject).getString("request_type");
      if ((((String)localObject).equals("send")) && ((paramMessage == null) || (Integer.parseInt(str) != 201))) {
        aa).a = bvi.a(1036);
      }
    }
    for (;;)
    {
      if (i == 0) {
        a.runOnUiThread(new Runnable()
        {
          public final void run()
          {
            a.a(true);
            a.showDialog(0);
          }
        });
      }
      return;
      if ((((String)localObject).equals("fetch")) && (str != null) && ((Integer.parseInt(str) == 404) || (Integer.parseInt(str) == 422)))
      {
        FeedbackActivity.b(a);
        i = 1;
      }
      else if (paramMessage != null)
      {
        FeedbackActivity.a(a, paramMessage, (String)localObject);
        i = 1;
      }
      else
      {
        aa).a = bvi.a(1037);
        continue;
        aa).a = bvi.a(1036);
      }
    }
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.FeedbackActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */