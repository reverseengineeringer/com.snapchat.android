package com.snapchat.videotranscoder.utils;

import android.opengl.Matrix;

public class ImageTransformationMatrixFront
  extends ImageTransformationMatrix
{
  public float[] adjustForTranscoderTransformation()
  {
    Matrix.setRotateM(mTransformation, 0, 0.0F, 0.0F, 0.0F, 1.0F);
    return mTransformation;
  }
  
  public float[] rotate180Degrees()
  {
    Matrix.setRotateM(mTransformation, 0, 180.0F, 0.0F, 0.0F, 1.0F);
    Matrix.translateM(mTransformation, 0, -1.0F, -1.0F, 0.0F);
    return mTransformation;
  }
  
  public float[] rotateLeft()
  {
    Matrix.setRotateM(mTransformation, 0, 270.0F, 0.0F, 0.0F, 1.0F);
    Matrix.translateM(mTransformation, 0, -1.0F, 0.0F, 0.0F);
    return mTransformation;
  }
  
  public float[] rotateRight()
  {
    Matrix.setRotateM(mTransformation, 0, 90.0F, 0.0F, 0.0F, 1.0F);
    Matrix.translateM(mTransformation, 0, 0.0F, -1.0F, 0.0F);
    return mTransformation;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.utils.ImageTransformationMatrixFront
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */