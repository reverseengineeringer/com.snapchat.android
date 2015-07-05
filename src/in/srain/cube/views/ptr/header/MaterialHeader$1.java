package in.srain.cube.views.ptr.header;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import buw;

final class MaterialHeader$1
  extends Animation
{
  MaterialHeader$1(MaterialHeader paramMaterialHeader) {}
  
  public final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    MaterialHeader.a(a, 1.0F - paramFloat);
    MaterialHeader.b(a).setAlpha((int)(255.0F * MaterialHeader.a(a)));
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     in.srain.cube.views.ptr.header.MaterialHeader.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */