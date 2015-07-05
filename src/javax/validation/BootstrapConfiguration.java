package javax.validation;

import java.util.Map;
import java.util.Set;
import javax.validation.executable.ExecutableType;

public abstract interface BootstrapConfiguration
{
  public abstract Set<String> getConstraintMappingResourcePaths();
  
  public abstract String getConstraintValidatorFactoryClassName();
  
  public abstract String getDefaultProviderClassName();
  
  public abstract Set<ExecutableType> getDefaultValidatedExecutableTypes();
  
  public abstract String getMessageInterpolatorClassName();
  
  public abstract String getParameterNameProviderClassName();
  
  public abstract Map<String, String> getProperties();
  
  public abstract String getTraversableResolverClassName();
  
  public abstract boolean isExecutableValidationEnabled();
}

/* Location:
 * Qualified Name:     javax.validation.BootstrapConfiguration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */