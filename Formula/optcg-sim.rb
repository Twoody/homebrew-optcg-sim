class OPTCG_SIM < Formula
  desc "Homebrew download manager for one piece trading card game simulator"
  homepage "https://github.com/Twoody/homebrew-optcg-sim"
  url "https://drive.google.com/file/d/1kPNpI6rZvoNwr-mjL3IHxFfNyaoDMoSX/view?usp=drive_link"
  sha256 "acec7da657c0720252eda9f197e1d7e4b269aaf9fd40123828f813b4a0b92076"
  version "1.23.0"

  def install
    prefix.install "OPTCGSim.app"
    bin.install_symlink "#{prefix}/OPTCGSim.app/Contents/MacOS/OPTCGSim" => "optcgsim"
  end

  def caveats
    <<~EOS
      To run the application, you may need to set the following permissions:
        xattr -dr com.apple.quarantine #{prefix}OPTCGSim.app/
    EOS
  end
end

