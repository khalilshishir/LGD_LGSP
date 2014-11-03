package accounts
/**
 * Created by IntelliJ IDEA.
 * User: Maruf
 * Date: 27/02/13
 * Time: 10.26 AM
 * To change this template use File | Settings | File Templates.
 */
class SelfReference {
    String text
    Long id
    String owner
    boolean expanded
    String classes
    String menu

    List<SelfReference> children = new ArrayList<SelfReference>()
}