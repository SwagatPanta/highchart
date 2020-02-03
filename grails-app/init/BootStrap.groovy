import com.deerwalk.highchart.Role
import com.deerwalk.highchart.User
import com.deerwalk.highchart.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole= Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def userRole= Role.findOrSaveWhere(authority: 'ROLE_USER')

        def admin= User.findOrSaveWhere(username: 'admin',password: 'admin')
        def user= User.findOrSaveWhere(username: 'swagat',password: 'swagat')

        if(!admin.authorities.contains(adminRole)){
            UserRole.create(admin,adminRole,true)
        }
        if(!user.authorities.contains(adminRole)){
            UserRole.create(user,userRole,true)
        }

    }
    def destroy = {
    }
}
