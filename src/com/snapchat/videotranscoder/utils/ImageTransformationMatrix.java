package com.snapchat.videotranscoder.utils;

import android.opengl.Matrix;

public class ImageTransformationMatrix
{
  float[] mTransformation = new float[16];
  
  public float[] adjustForTranscoderTransformation()
  {
    Matrix.setRotateM(mTransformation, 0, 180.0F, 1.0F, 0.0F, 0.0F);
    Matrix.translateM(mTransformation, 0, 0.0F, -1.0F, 0.0F);
    return mTransformation;
  }
  
  public float[] flipHorizontal()
  {
    Matrix.setRotateM(mTransformation, 0, 180.0F, 0.0F, 0.0F, 1.0F);
    Matrix.translateM(mTransformation, 0, -1.0F, -1.0F, 0.0F);
    return mTransformation;
  }
  
  public float[] flipVertical()
  {
    Matrix.setIdentityM(mTransformation, 0);
    return mTransformation;
  }
  
  public float[] rotate180Degrees()
  {
    Matrix.setRotateM(mTransformation, 0, 180.0F, 0.0F, 1.0F, 0.0F);
    Matrix.translateM(mTransformation, 0, -1.0F, 0.0F, 0.0F);
    return mTransformation;
  }
  
  public float[] rotateLeft()
  {
    Matrix.rotateM(adjustForTranscoderTransformation(), 0, 270.0F, 0.0F, 0.0F, 1.0F);
    Matrix.translateM(mTransformation, 0, -1.0F, 0.0F, 0.0F);
    return mTransformation;
  }
  
  public float[] rotateRight()
  {
    Matrix.rotateM(adjustForTranscoderTransformation(), 0, 90.0F, 0.0F, 0.0F, 1.0F);
    Matrix.translateM(mTransformation, 0, 0.0F, -1.0F, 0.0F);
    return mTransformation;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.videotranscoder.utils.ImageTransformationMatrix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */