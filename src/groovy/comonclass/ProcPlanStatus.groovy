package comonclass

/**
 * Created by khalil.ullah on 9/23/14.
 */
public enum ProcPlanStatus  {

    ACTIVE("Active"),
    NOT_ACTIVE("Not Active"),
    IN_PROGRESS("In Prograss"),
    IN_PLANING("In Planning"),

    final String value

    ProcPlanStatus(String value) {
        this.value = value
    }
    String toString() { value }
    String getKey() { name() }

}