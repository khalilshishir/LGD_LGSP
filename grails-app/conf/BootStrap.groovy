import groovy.sql.Sql
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.authority.AuthorityUtils
import org.springframework.security.core.context.SecurityContextHolder as SCH
import procurement.up.Procurement_Type
import settings.District
import settings.Division
import settings.MemberDesignation
import settings.SchemeType

import javax.sql.DataSource

class BootStrap {
    DataSource dataSource
    def sessionFactory
    def init = { servletContext ->
        loginAsAdmin()
        insertSchemeType()
        insertMemberDesignation()
     // createDistrict()
        sessionFactory.currentSession.flush()
        SCH.clearContext()
    }
    private void loginAsAdmin() {
        // have to be authenticated as an admin to create ACLs
        SCH.context.authentication = new UsernamePasswordAuthenticationToken(
                'admin', 'admin123',
                AuthorityUtils.createAuthorityList('ROLE_ADMIN'))
    }

    void insertSchemeType(){
        def schemeTypes = SchemeType.getAll()
        if(schemeTypes.size() == 0){
            new SchemeType(NAME: 'Earth-Work').save(flush: true)
            new SchemeType(NAME: 'Non Earth-Work').save(flush: true)
        }
    }



    void insertMemberDesignation(){
        def memberDesignation = MemberDesignation.getAll()
        if(memberDesignation.size() == 0){
            new MemberDesignation(NAME: 'President').save(flush: true)
            new MemberDesignation(NAME: 'Secretary').save(flush: true)
            new MemberDesignation(NAME: 'Accountant').save(flush: true)
            new MemberDesignation(NAME: 'Member').save(flush: true)
        }
    }



}

