/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ws;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import src.cnx1;

/**
 *
 * @author omar
 */
@WebService(serviceName = "numberOfSpecialiteWS")
public class numberOfSpecialiteWS {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "numberOfSpecialite")
    public String numberOfSpecialite(@WebParam(name = "specialite") String specialite) {
        String result = null;
        try {
        ResultSet rs = cnx1.executeReq("select count(*) from Affectation as a, Matiere as m where a.idMat=m.idMat AND m.idS="+specialite);
        
            while (rs.next()) {
                result = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(numberOfSpecialiteWS.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
}
