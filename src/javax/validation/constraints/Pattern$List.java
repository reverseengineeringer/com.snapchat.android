package javax.validation.constraints;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.ANNOTATION_TYPE, java.lang.annotation.ElementType.CONSTRUCTOR, java.lang.annotation.ElementType.PARAMETER})
public @interface Pattern$List
{
  Pattern[] value();
}

/* Location:
 * Qualified Name:     javax.validation.constraints.Pattern.List
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */