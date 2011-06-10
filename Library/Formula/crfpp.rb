require 'formula'

class Crfpp < Formula
  url 'http://sourceforge.net/projects/crfpp/files/crfpp/0.54/CRF%2B%2B-0.54.tar.gz/'
  homepage 'http://crfpp.sourceforge.net/'
  md5 'a3c12c99b25e06d18147d50f0f92e8d3'
  version '0.54'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
