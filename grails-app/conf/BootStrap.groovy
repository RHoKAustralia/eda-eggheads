import au.com.eda.Country
import au.com.eda.Profile
import au.com.eda.RoleType
import au.com.eda.State
import au.com.eda.Story
import au.com.eda.StoryMode
import au.com.eda.User
import au.com.eda.UserStatus
import au.com.eda.UserType
import au.com.eda.Role
import au.com.eda.UserRole
import org.joda.time.DateTime

class BootStrap {

    def init = { servletContext ->

        //Default Roles
        Role.withTransaction { status ->
            def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
            Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)

            if (User.count() == 0) { //dynamic method executed on dynamic class!
                def adminUser = User.findByUsername('admin') ?: User.newInstance(
                        username: 'admin@admin.com',
                        password: 'admin',
                        status: UserStatus.ACTIVE,
                        roleType: RoleType.ADMIN)
                        .save(failOnError: true)

                if (!adminUser.authorities.contains(adminRole)) {
                    UserRole.create adminUser, adminRole
                }

                Profile profile = new Profile(
                        firstName: "Ashley",
                        dateOfBirth: new DateTime(1989, 4, 15, 0, 0).toDate(),
                        suburb: "Sydney",
                        state: State.NSW,
                        country: Country.AUSTRALIA,
                        children: 0,
                        type: UserType.DONOR,
                        user: adminUser
                ).save(failOnError: true)


                new Story(title: "Test", description: "This is a story", user: adminUser, mode: StoryMode.ACTIVE).save(failOnError: true)
//        new Story(title: "Test 2", description: "This is another story").save()
            }
        }

    }
    def destroy = {
    }
}
