package javax.validation.metadata;

public abstract interface ParameterDescriptor
  extends CascadableDescriptor, ElementDescriptor
{
  public abstract int getIndex();
  
  public abstract String getName();
}

/* Location:
 * Qualified Name:     javax.validation.metadata.ParameterDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */