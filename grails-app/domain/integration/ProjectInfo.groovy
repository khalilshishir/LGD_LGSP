package integration

class ProjectInfo {
    static mapping = {
        table("PROJECT_INFO")
        version(false)

    }
    long id
    String deptId
    String gobRadpAllocation
    String published
    String paRadpAllocation
    String deptName
    String totalAdpAllocation
    String projectCode
    String gobAdpAllocation
    String nameOfProject
    String paAdpAllocation
    String approvalStatus
    String totalRadpRelease
    Date dateOfApproval
    String gobRadpRelease
    String nameOfPd
    String paRadpRelease
    String objectiveOne
    String totalAdpRelease
    String objectiveTwo
    String gobAdpRelease
    String objectiveThree
    String paAdpRelease
    String locationOfProject
    String totalRadpExpenditure
    String implementationPeriod
    String gobRadpExpenditure
    Date startingDate
    String paRadpExpenditure
    Date completationDate
    String totalAdpExpenditure
    String financialYear
    String gobAdpExpenditure
    String sourceOfFund
    String paAdpExpenditure
    String totalProjectCost
    String cumulativeExpenditure
    String gobCost
    String physicalProgress
    String paCost
    String comments


    static constraints = {
    }
}
