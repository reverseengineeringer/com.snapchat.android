package javax.validation.executable;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.CONSTRUCTOR, java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.TYPE, java.lang.annotation.ElementType.PACKAGE})
public @interface ValidateOnExecution
{
  ExecutableType[] type() default {ExecutableType.IMPLICIT};
}

/* Location:
 * Qualified Name:     javax.validation.executable.ValidateOnExecution
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */