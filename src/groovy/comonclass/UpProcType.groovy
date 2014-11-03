package comonclass

/**
 * Created by sumon.bappi on 10/1/14.
 */
public enum UpProcType {

    DIRECT_PROCUREMENT("Direct Procurement"),
    COMMUNITY_PROCUREMENT("Community Procurement"),
    RFQ_PROCUREMENT("RFQ Procurement"),
    OTM_PROCUREMENT("OTM Procurement"),

    final String value

    UpProcType(String value) {
        this.value = value
    }

    String toString() { value }
    String getKey() { name() }

}