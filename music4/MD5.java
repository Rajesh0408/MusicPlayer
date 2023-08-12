package music4;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class MD5 {
	public String encrypted(String pass) throws NoSuchAlgorithmException
	{
		MessageDigest md=MessageDigest.getInstance("MD5");
		byte[] message=md.digest(pass.getBytes());
		BigInteger bg=new BigInteger(1,message);
		return bg.toString(16);
		
	}

}
