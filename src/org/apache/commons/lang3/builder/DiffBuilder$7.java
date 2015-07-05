package org.apache.commons.lang3.builder;

class DiffBuilder$7
  extends Diff<Double>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$7(DiffBuilder paramDiffBuilder, String paramString, double paramDouble1, double paramDouble2)
  {
    super(paramString);
  }
  
  public Double getLeft()
  {
    return Double.valueOf(val$lhs);
  }
  
  public Double getRight()
  {
    return Double.valueOf(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */