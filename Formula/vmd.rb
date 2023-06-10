class Vmd < Formula
  desc "Formula for VMD"
  homepage "https://github.com/yoshuawuyts/vmd"
  url "https://github.com/yoshuawuyts/vmd/releases/download/1.34.0/vmd-1.34.0-mac.zip"
  sha256 "919b1ed84411a5df4aa35cec4dda849eab63dff220f9ad3c82bf93b167de8961"
  license ""
  uses_from_macos "unzip"

  def install
    # Extract the downloaded zip file
    system "unzip", "#{cached_download}", "-d", "#{prefix}"

    # Create a symlink to the vmd binary
    bin.install_symlink "#{prefix}/vmd.app/Contents/MacOS/vmd"
  end

  test do
    system "#{bin}/vmd", "--help"
  end
end
