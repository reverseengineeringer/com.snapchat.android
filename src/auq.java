public final class auq
{
  private static float[] coefficients = new float[4];
  private static final float[] lhmatrix = { 0.0F, -0.5F, 1.0F, -0.5F, 1.0F, 0.0F, -2.5F, 1.5F, 0.0F, 0.5F, 2.0F, -1.5F, 0.0F, 0.0F, -0.5F, 0.5F };
  private static float[] xvector = new float[4];
  
  public static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (1.0F - paramFloat3) * paramFloat1 + paramFloat3 * paramFloat2;
  }
}

/* Location:
 * Qualified Name:     auq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */