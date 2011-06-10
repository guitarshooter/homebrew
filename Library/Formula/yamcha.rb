require 'formula'

class Yamcha < Formula
  url 'http://chasen.org/~taku/software/yamcha/src/yamcha-0.33.tar.gz'
  homepage 'http://chasen.org/~taku/software/yamcha/'
  md5 '187ab0b6804941dfdaa21fe28f0b6ffd'

  depends_on 'tinysvm'

  def install
    system "./configure", "--prefix=#{prefix}", "--mandir=#{man}"
    system "make install"
  end
end
