import java.lang.annotation.Annotation;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Inherited
@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.TYPE, java.lang.annotation.ElementType.CONSTRUCTOR, java.lang.annotation.ElementType.METHOD})
public @interface avl {}

/* Location:
 * Qualified Name:     avl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */