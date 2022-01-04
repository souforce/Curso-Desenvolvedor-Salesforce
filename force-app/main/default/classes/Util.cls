public with sharing class Util {
    private static final String secretKey = 'VhvLbGQjiFmcO9VKF+Au5Q==12345678';
    private static final String algorithmName = 'AES256';

    public static String encrypt(String clearData) {
        Blob hash = Crypto.encryptWithManagedIV(algorithmName, Blob.valueOf(secretKey), Blob.valueOf(clearData));
        return EncodingUtil.convertToHex(hash);
    }

    public static Blob decrypt(String encryptedData) {
        return Crypto.decryptWithManagedIV(algorithmName, Blob.valueOf(secretKey), EncodingUtil.convertFromHex(encryptedData));
    }

    public static void test() {
        String loremIpsum = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac scelerisque nisl. Proin nec mauris luctus, consectetur sapien sit amet, luctus metus. Curabitur leo ante, varius in tempus sit amet, blandit id eros. Donec faucibus laoreet enim aliquet tempor. Maecenas ac porta orci, eget tempus eros. Nunc tortor purus, ullamcorper sit amet ultrices ac, sollicitudin sit amet libero. Nunc dapibus enim nec erat finibus tempor. Sed purus leo, sollicitudin non varius et, efficitur sed ligula. Sed a arcu sodales, bibendum risus in, gravida mi. Fusce vitae gravida massa. Ut id metus maximus, tempor velit sed, vulputate metus. Vestibulum ex nulla, faucibus non turpis sed, efficitur placerat lorem. In libero justo, feugiat sed tempus sed, feugiat a mauris. Nullam nec imperdiet odio. Vestibulum tincidunt neque justo, eu tincidunt ligula gravida quis. Nullam lacus tellus, rutrum eget faucibus sit amet, sodales eget turpis. Proin iaculis lorem eu ultricies efficitur. Morbi id consectetur lectus. Phasellus et pretium dui. Sed maximus ipsum feugiat massa euismod blandit. Maecenas vel arcu urna. Vestibulum sed mi sollicitudin, vestibulum quam eu, mollis neque. Aenean aliquet, odio ut rhoncus bibendum, est ipsum tristique justo, ac interdum risus quam et odio. Nulla commodo tristique purus, interdum faucibus nulla commodo ut. Nam vitae ligula sapien. Sed vestibulum ligula et purus elementum, quis porttitor ante dignissim. Pellentesque pharetra, magna luctus venenatis congue, massa risus sollicitudin odio, ac dapibus odio nibh eget leo. Maecenas eu scelerisque magna, vitae fermentum sem. Integer vulputate aliquet sollicitudin. Sed ut aliquet libero, ac pellentesque ipsum. Vivamus non fringilla tellus. Aenean rutrum blandit dui. Suspendisse fringilla ultricies arcu, at sollicitudin neque vulputate ut. Fusce odio urna, feugiat ac viverra at, dapibus a ipsum. Aenean feugiat accumsan eros, vel commodo dui tempus vel. Quisque viverra iaculis tincidunt. Donec vel vehicula enim. Etiam a purus at lectus posuere efficitur sed ut justo. Aenean id neque nec augue vehicula finibus id gravida tellus. Aliquam non congue lacus. Nulla imperdiet felis ut ligula fermentum consequat. Cras eget dui neque. Interdum et malesuada fames ac ante ipsum primis in faucibus.';
        String s = Util.encrypt(loremIpsum);
        System.debug(s);

        System.debug(loremIpsum.length());
        System.debug(s.length()); //132128

        Blob d = Util.decrypt(s);
        System.debug(d.toString());

    }

   /*
   Util.test();
   */
}