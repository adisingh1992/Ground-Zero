package bean;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
 
public class Hash {
    private Hash() {
}
 
public static String generateMD5(String message){
    return hashString(message, "MD5");
}
 
private static String hashString(String message, String algorithm){
        try {
            MessageDigest digest = MessageDigest.getInstance(algorithm);
            byte[] hashedBytes = digest.digest(message.getBytes("UTF-8"));
            return convertByteArrayToHexString(hashedBytes);
        }
        catch (NoSuchAlgorithmException | UnsupportedEncodingException ex){}
        return message;
}

private static String convertByteArrayToHexString(byte[] arrayBytes) {
    StringBuffer stringBuffer = new StringBuffer();
    for (int i = 0; i < arrayBytes.length; i++) {
        stringBuffer.append(Integer.toString((arrayBytes[i] & 0xff) + 0x100, 16).substring(1));
    }
    return stringBuffer.toString();
}
}