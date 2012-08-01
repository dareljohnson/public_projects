using System;
using System.Collections.Generic;
using System.Web;
using WebMatrix.Data;
using System.Linq;


/// <summary>
/// Summary description for DatabaseExtensions
/// This class extends the Database object by
/// providing a method to parametize and format
/// values in the IN clause
/// </summary>
public static class DatabaseExtensions
{
    public static int ExecuteIn(this Database db, string commandText, string values)
    {
        // Split values and assign them to temp
        var temp = values.Split( new[]{','}, StringSplitOptions.RemoveEmptyEntries );    
        // append temp values to @ and build parms string
        var parms = temp.Select( (s, i) => "@" + i.ToString() ).ToArray();
        // format parms list and seperate them with commas
        var inClause = string.Join( ",", parms );
        // execute SQL and retrun resultset
        return db.Execute( string.Format( commandText, inClause ), temp);
    }
}
