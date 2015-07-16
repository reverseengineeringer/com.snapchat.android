package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import avp;
import awj;
import awo;
import java.util.ArrayList;

final class LegacyCanvasView$b
{
  public ArrayList<LegacyCanvasView.a> a = new ArrayList();
  Paint b = new Paint();
  Matrix c = new Matrix();
  Canvas d;
  Bitmap e;
  boolean f = false;
  
  public LegacyCanvasView$b(LegacyCanvasView paramLegacyCanvasView)
  {
    a();
    b.setAntiAlias(true);
    b.setFilterBitmap(false);
  }
  
  @awj
  public final void a()
  {
    b();
    Object localObject = avp.a(g.getContext().getResources().getDisplayMetrics(), LegacyCanvasView.a(g), LegacyCanvasView.b(g), Bitmap.Config.ARGB_8888);
    localObject = awo.a().a((BitmapFactory.Options)localObject, true);
    if (localObject != null) {}
    for (e = ((Bitmap)localObject);; e = avp.a(LegacyCanvasView.a(g), LegacyCanvasView.b(g), Bitmap.Config.ARGB_8888))
    {
      d = new Canvas(e);
      return;
    }
  }
  
  public final void b()
  {
    d = null;
    awo.a().a(e);
    e = null;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.LegacyCanvasView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */