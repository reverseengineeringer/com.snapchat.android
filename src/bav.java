public final class bav
{
  public float mBrightness;
  
  public bav(float paramFloat)
  {
    if (((paramFloat < 0.0F) || (paramFloat > 1.0F)) && (paramFloat != -1.0F)) {
      throw new RuntimeException("Brightness must be a float between 0 and 1, or WindowManager.LayoutParams.BRIGHTNESS_OVERRIDE_NONE");
    }
    mBrightness = paramFloat;
  }
}

/* Location:
 * Qualified Name:     bav
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */