public final class pm
{
  private static final pm INSTANCE = new pm();
  private static final String TAG = "ScreenParameterProvider";
  public int mMaxVideoHeight;
  public int mMaxVideoWidth;
  public avc mResolution = new avc(0, 0);
  
  public static pm a()
  {
    return INSTANCE;
  }
}

/* Location:
 * Qualified Name:     pm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */