package net.hockeyapp.android;

import android.widget.TextView;
import bvp;
import bvy;
import bvz;

final class UpdateActivity$1
  extends bvp
{
  UpdateActivity$1(UpdateActivity paramUpdateActivity, TextView paramTextView, String paramString1, String paramString2) {}
  
  public final void a(bvy parambvy)
  {
    if ((parambvy instanceof bvz))
    {
      long l = g;
      parambvy = String.format("%.2f", new Object[] { Float.valueOf((float)l / 1048576.0F) }) + " MB";
      a.setText(b + "\n" + c + " - " + parambvy);
    }
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.UpdateActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */