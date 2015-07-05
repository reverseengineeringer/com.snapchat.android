package javax.validation.metadata;

import java.util.List;
import java.util.Set;

public abstract interface ExecutableDescriptor
  extends ElementDescriptor
{
  public abstract ElementDescriptor.ConstraintFinder findConstraints();
  
  public abstract Set<ConstraintDescriptor<?>> getConstraintDescriptors();
  
  public abstract CrossParameterDescriptor getCrossParameterDescriptor();
  
  public abstract String getName();
  
  public abstract List<ParameterDescriptor> getParameterDescriptors();
  
  public abstract ReturnValueDescriptor getReturnValueDescriptor();
  
  public abstract boolean hasConstrainedParameters();
  
  public abstract boolean hasConstrainedReturnValue();
  
  public abstract boolean hasConstraints();
}

/* Location:
 * Qualified Name:     javax.validation.metadata.ExecutableDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */