package org.apache.commons.lang3.builder;

class DiffBuilder$9
  extends Diff<Float>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$9(DiffBuilder paramDiffBuilder, String paramString, float paramFloat1, float paramFloat2)
  {
    super(paramString);
  }
  
  public Float getLeft()
  {
    return Float.valueOf(val$lhs);
  }
  
  public Float getRight()
  {
    return Float.valueOf(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */