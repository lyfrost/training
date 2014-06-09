package dwiwahyudi.protectionPackage;

/**
 * Created by IntelliJ IDEA.
 * User: Dwi Wahyudi
 * Date: 3/18/12
 * Time: 5:56 PM
 * To change this template use File | Settings | File Templates.
 */
public class RijndaelUtil {

    // kunci rahasia yang tidak boleh diketahui pihak lain
    private static String key = "a0934llks67jk8j29s9rm3mnc63ja49aj37b6h1jj18dk3k3i3i8kaoo1o3067ik234iosa94k5105";

    private static String plaintext;
    private static String ciphertext;

    Rijndael rijndaelRun = new Rijndael (key);

    public static String encrypt(String plain){
        Rijndael myCrypto = new Rijndael(key);
        ciphertext = myCrypto.encrypt(plain);
        return ciphertext;
    }

    public static String decrypt(String cipher){
        Rijndael myCrypto = new Rijndael(key);
        plaintext = myCrypto.decrypt(cipher);
        return plaintext;
    }
}
