package net.hockeyapp.android;

import android.widget.ListView;
import android.widget.TextView;
import bvo;
import bvr;
import bvt;
import bvu;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;

final class FeedbackActivity$4
  implements Runnable
{
  FeedbackActivity$4(FeedbackActivity paramFeedbackActivity, bvu parambvu) {}
  
  public final void run()
  {
    b.b(true);
    Object localObject2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("d MMM h:mm a");
    if ((a != null) && (a.b != null) && (a.b.e != null) && (a.b.e.size() > 0))
    {
      FeedbackActivity.a(b, a.b.e);
      Collections.reverse(FeedbackActivity.e(b));
    }
    try
    {
      localObject2 = ((SimpleDateFormat)localObject2).parse(eb).get(0)).f);
      FeedbackActivity.f(b).setText(String.format("Last Updated: %s", new Object[] { localSimpleDateFormat.format((Date)localObject2) }));
      if (FeedbackActivity.g(b) == null)
      {
        FeedbackActivity.a(b, new bvo(FeedbackActivity.c(b), FeedbackActivity.e(b)));
        FeedbackActivity.h(b).setAdapter(FeedbackActivity.g(b));
        return;
      }
    }
    catch (ParseException localParseException)
    {
      for (;;)
      {
        localParseException.printStackTrace();
        continue;
        Object localObject1 = FeedbackActivity.g(b);
        if (a != null) {
          a.clear();
        }
        localObject1 = FeedbackActivity.e(b).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (bvt)((Iterator)localObject1).next();
          bvo localbvo = FeedbackActivity.g(b);
          if ((localObject2 != null) && (a != null)) {
            a.add(localObject2);
          }
        }
        FeedbackActivity.g(b).notifyDataSetChanged();
      }
    }
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.FeedbackActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */