require 'formula'

class Tinysvm < Formula
  url 'http://chasen.org/~taku/software/TinySVM/src/TinySVM-0.09.tar.gz'
  homepage 'http://chasen.org/~taku/software/TinySVM/'
  md5 '22d80bdd94c3c8373062761de0d27fde'

  def patches
    {
      :p0 => 'https://gist.github.com/raw/1018846/d9b11187acd66b92b2aea2e857cc195580db0688/tinysvm-configure.patch',
      :p0 => 'https://gist.github.com/raw/1018846/0e0a29d88c2dd697f3f1638a2f017ebf1150907e/tinysvm-getopt.patch'
    }
  end

  def install
    system "./configure", "--prefix=#{prefix}", "--mandir=#{man}", "--disable-shared"
    system "make install"
  end
end
