package dataBaseManipulations;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.rowset.serial.SerialBlob;

import org.json.JSONException;
import org.json.JSONObject;

import dtaTransferObject.User;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class DataBaseManipulation {

	public static Connection getConnection() throws ClassNotFoundException, SQLException
    {
   	Class.forName("com.mysql.cj.jdbc.Driver");
   	Connection connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/currencyconvertor","root","root"); 
    return connection;                                                             
    }
	
	public  boolean isCrtPass()
	{
		return false;
	}
	public int getUserId() throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("SELECT max(userid) from userfromcurrency");
		ResultSet rs = pst.executeQuery();
		if(rs.next()) {
			int id = rs.getInt(1);
			return id+1;
		}
		else {
			return 1;
		}
	}
	
	public  int saveUser(User user) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("insert into userfromcurrency values(?,?,?,?,?,?)");
	    pst.setInt(1,user.getUserid());
		pst.setString(2, user.getUsername());
		pst.setString(3, user.getUseremail());
		pst.setLong(5, user.getUsercontact());
		pst.setString(4, user.getUserpassword());
		
		Blob imageBlob = new SerialBlob(user.getUserimage());
		pst.setBlob(6, imageBlob);
		int res = pst.executeUpdate();
		return res;
			
	}
	public float getApiRequest(double quantity, String ConvertFrom,String ConvertTo) throws IOException, JSONException
	{
		
		String url= "https://api.exchangerate-api.com/v4/latest/" +ConvertFrom; 
		
		if(quantity==0||ConvertFrom.isBlank()||ConvertTo.isBlank()) {return 0;}
		else {
				OkHttpClient ok=new OkHttpClient();
	   Request request=new Request.Builder()	
	                   .url(url).get().build();
	   Response response=ok.newCall(request).execute();
	   String res=response.body().string();
	   JSONObject json=new JSONObject(res);
	  
	   JSONObject jobject=json.getJSONObject("rates");
	   
	   Double rate= jobject.getDouble(ConvertTo.toUpperCase());
	  Double result=rate*quantity;
	  float fin=result.floatValue();
//	  System.out.println(result);
	  return fin;
		}
	}
	public User loginValidation(String email) throws ClassNotFoundException, SQLException
	{
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from userfromcurrency where useremail=?");
       pst.setString(1, email);
       ResultSet  rs=pst.executeQuery();
       
       if(rs.next())
       {
    	   Blob blob=rs.getBlob(6);
    	   byte[]image=  blob.getBytes(1,(int) blob.length());
    	   User user=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getLong(5),image);
         return user;
       }
       return null;
	}
	
}
