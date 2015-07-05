package net.hockeyapp.android.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;

final class PaintView$1
  extends AsyncTask<Object, Void, Bitmap>
{
  PaintView$1(PaintView paramPaintView) {}
  
  private static Bitmap a(Object... paramVarArgs)
  {
    Context localContext = (Context)paramVarArgs[0];
    Uri localUri = (Uri)paramVarArgs[1];
    Integer localInteger = (Integer)paramVarArgs[2];
    paramVarArgs = (Integer)paramVarArgs[3];
    try
    {
      paramVarArgs = PaintView.a(localContext.getContentResolver(), localUri, localInteger.intValue(), paramVarArgs.intValue());
      return paramVarArgs;
    }
    catch (Exception paramVarArgs) {}
    return null;
  }
  
  protected final void onPreExecute()
  {
    a.setAdjustViewBounds(true);
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.views.PaintView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */