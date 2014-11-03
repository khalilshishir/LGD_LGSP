package comonclass

/**
 * Created by khalil.ullah on 9/23/14.
 */
public enum ProcPlanType  {

    TRANSACTIONAL("Transactional"),
    FUNCTIONAL("Functional"),

    final String value

    ProcPlanType(String value) {
        this.value = value
    }
    String toString() { value }
    String getKey() { name() }

}