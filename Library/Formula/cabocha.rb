require 'formula'

class Cabocha < Formula
  url 'http://sourceforge.net/projects/cabocha/files/cabocha/0.60pre4/cabocha-0.60pre4.tar.bz2'
  homepage 'http://www.chasen.org/~taku/software/cabocha/'
  md5 '8efd6846e75703695e3f8a912e111171'
  version '0.60pre4'

  depends_on 'mecab'
  depends_on 'mecab-ipadic'
  depends_on 'tinysvm'
  depends_on 'yamcha'
  depends_on 'crfpp'

  def install
    system "./configure", "--prefix=#{prefix}", "--with-charset=utf-8", "LIBS=-liconv"
    system "make install"
  end
end
