package dwiwahyudi.protectionPackage;

/**
 * Created by IntelliJ IDEA.
 * User: Dwi Wahyudi
 * To change this template use File | Settings | File Templates.
 */
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;

//buat enkripsi file, kayak di fungsi main
//import java.io.FileInputStream;
//import java.io.FileOutputStream;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;

import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.SecretKeySpec;

public class Rijndael {
    Cipher ecipher;
    Cipher dcipher;

    /**
     * Memasukkan sebuah string yg akan dilakukan hashing oleh md5 untuk
     * menciptakan kunci (key)
     *
     * @return void, cipher dimulai
     */

    public Rijndael() {
        try {
            KeyGenerator kgen = KeyGenerator.getInstance("AES");
            kgen.init(128);
            this.setupCrypto(kgen.generateKey());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Rijndael(String key) {
        SecretKeySpec skey = new SecretKeySpec(getMD5(key), "AES");
        this.setupCrypto(skey);
    }

    private void setupCrypto(SecretKey key) {
        // Membuat sebuah inisialisasi vektor 8 byte
        byte[] iv = new byte[] { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06,
                0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f };

        AlgorithmParameterSpec paramSpec = new IvParameterSpec(iv);
        try {
            ecipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            dcipher = Cipher.getInstance("AES/CBC/PKCS5Padding");

            // CBC membutuhkan sebuah inisialisasi vektor
            ecipher.init(Cipher.ENCRYPT_MODE, key, paramSpec);
            dcipher.init(Cipher.DECRYPT_MODE, key, paramSpec);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Buffer yg digunakan utk mempassing byte-byte dari satu stream ke lainny
    byte[] buf = new byte[1024];

    public void encrypt(InputStream in, OutputStream out) {
        try {
            // Byte-byte masuk ke out yg akan dienkripsi
            out = new CipherOutputStream(out, ecipher);

            // membaca in dan menuliskan ke out utk dienkripsi
            int numRead = 0;
            while ((numRead = in.read(buf)) >= 0) {
                out.write(buf, 0, numRead);
            }
            out.close();
        } catch (java.io.IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Input adalah string yg akan dienkripsi
     *
     * @return sebuah hex dari string dari byte array
     */
    public String encrypt(String plaintext) {
        try {
            byte[] ciphertext = ecipher.doFinal(plaintext.getBytes("UTF-8"));
            return Rijndael.byteToHex(ciphertext);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    public void decrypt(InputStream in, OutputStream out) {
        try {
            // byte-byte dari in akan didekripsi
            in = new CipherInputStream(in, dcipher);

            // membaca in dan menuliskan ke out
            int numRead = 0;
            while ((numRead = in.read(buf)) >= 0) {
                out.write(buf, 0, numRead);
            }
            out.close();
        } catch (java.io.IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Input string terenkripsi yg tertulis dlm bentuk hex
     *
     * @return sebuah string yg sudah didekripsi dalam bentuk plaintext
     */
    public String decrypt(String hexCipherText) {
        try {
            String plaintext = new String(dcipher.doFinal(Rijndael
                    .hexToByte(hexCipherText)), "UTF-8");
            return plaintext;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String decrypt(byte[] ciphertext) {
        try {
            String plaintext = new String(dcipher.doFinal(ciphertext), "UTF-8");
            return plaintext;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static byte[] getMD5(String input) {
        try {
            byte[] bytesOfMessage = input.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("MD5");
            return md.digest(bytesOfMessage);
        } catch (Exception e) {
            return null;
        }
    }

    static final String HEXES = "0123456789ABCDEF";

    public static String byteToHex(byte[] raw) {
        if (raw == null) {
            return null;
        }
        final StringBuilder hex = new StringBuilder(2 * raw.length);
        for (final byte b : raw) {
            hex.append(HEXES.charAt((b & 0xF0) >> 4)).append(
                    HEXES.charAt((b & 0x0F)));
        }
        return hex.toString();
    }

    public static byte[] hexToByte(String hexString) {
        int len = hexString.length();
        byte[] ba = new byte[len / 2];
        for (int i = 0; i < len; i += 2) {
            ba[i / 2] = (byte) ((Character.digit(hexString.charAt(i), 16) << 4) + Character
                    .digit(hexString.charAt(i + 1), 16));
        }
        return ba;
    }
}

