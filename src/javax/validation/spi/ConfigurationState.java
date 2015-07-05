package javax.validation.spi;

import java.io.InputStream;
import java.util.Map;
import java.util.Set;
import javax.validation.ConstraintValidatorFactory;
import javax.validation.MessageInterpolator;
import javax.validation.ParameterNameProvider;
import javax.validation.TraversableResolver;

public abstract interface ConfigurationState
{
  public abstract ConstraintValidatorFactory getConstraintValidatorFactory();
  
  public abstract Set<InputStream> getMappingStreams();
  
  public abstract MessageInterpolator getMessageInterpolator();
  
  public abstract ParameterNameProvider getParameterNameProvider();
  
  public abstract Map<String, String> getProperties();
  
  public abstract TraversableResolver getTraversableResolver();
  
  public abstract boolean isIgnoreXmlConfiguration();
}

/* Location:
 * Qualified Name:     javax.validation.spi.ConfigurationState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */