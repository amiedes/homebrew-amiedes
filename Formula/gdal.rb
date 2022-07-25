class Gdal < Formula
  desc "GDAL package with Geo Parquet support"
  homepage ""
  url "https://github.com/OSGeo/gdal/releases/download/v3.5.1/gdal-3.5.1.tar.gz"
  sha256 "7c4406ca010dc8632703a0a326f39e9db25d9f1f6ebaaeca64a963e3fac123d1"
  license ""

  depends_on "cmake" => :build
  depends_on "openssl" => :build
  depends_on "apache-arrow" => :build

  def install
    puts "Package installed"
    # ENV.deparallelize
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install"
  end

  def uninstall
    puts "Package uninstalled"
  end

  test do
    system "false"
  end
end


# brew install cmake openssl apache-arrow

# cd /Users/amiedes/Desktop/issues/2022-07-21_geoparquet/test_1
# mkdir build
# cd build

# echo 'export PATH="/usr/local/opt/sqlite3/bin:$PATH"' >> ~/.zshrc
# export LDFLAGS="-L/usr/local/opt/sqlite3/lib"
# export CPPFLAGS="-I/usr/local/opt/sqlite3/include"
# cmake -DOPENSSL_ROOT_DIR=/usr/local/opt/openssl -DSQLite3_INCLUDE_DIR=/usr/local/opt/sqlite3/include -DSQLITE3_LIBRARY=/usr/local/opt/sqlite3/lib/libsqlite3.dylib ..
# cmake --build .
# cmake --build . --target install
