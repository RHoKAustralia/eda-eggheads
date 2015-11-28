package au.com.eda

import org.joda.time.DateTime

class User {

    transient springSecurityService

    String username
    String password
    UserStatus status = UserStatus.PENDING
    RoleType roleType
    Date lastLoggedIn = DateTime.now().toDate()
    Boolean loggedIn = false
    Boolean enabled = true
    Boolean accountExpired = false
    Boolean accountLocked = false
    Boolean passwordExpired = false

    static constraints = {
        username blank: false, unique: true
        password blank: false, size: 4..128
    }

    static mapping = {
        table '`user`'
        autoImport false
        password column: '`password`'
    }

    static transients = ['springSecurityService', 'profile', 'story', 'roles', 'rolesAsString']

    Profile getProfile() {
        return Profile.findByUser(this)
    }

    Story getStory() {
        return Story.findByUser(this)
    }

    public List<Role> getRoles() {
        if (this.id) {
            return Role.executeQuery("select r from Role r, UserRole ur where ur.user = :user and ur.role = r",
                    [user: this])
        }

        return []
    }

    public List<String> getRolesAsString() {
        List<Role> roles = this.getRoles()
        List<String> strings = []

        roles.each {
            strings.add(it.authority)
        }

        return strings
    }

    public boolean isRolePresent(RoleType userType) {
        List<String> roles = this.rolesAsString

        if (userType == RoleType.ADMIN) {
            return roles.contains("ROLE_ADMIN")
        }

        if (userType == RoleType.USER) {
            return roles.contains("ROLE_USER")
        }

        return false
    }

    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this).collect { it.role } as Set
    }

    public def createRole() {
        UserRole.withNewSession {
            def role = null

            if (this.roleType && this.roleType == RoleType.ADMIN) {
                role = Role.findByAuthority('ROLE_ADMIN')
            } else {
                role = Role.findByAuthority('ROLE_USER')
            }

            if (role) {
                new UserRole(user: User.get(id), role: role).save flush: true
            }
        }
    }

    protected void encodePassword() {
        this.password = springSecurityService?.encodePassword(this.password)
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }
}
