cask "optcg-sim" do
  version "1.23.0"
  sha256 "bbc91986c05583b3cbfa6e0e1b34882b87be7f06b4bd605299e9361b0b27e7ed"

  url "https://github.com/Twoody/homebrew-optcg-sim/raw/main/releases/v1.23.0/1.23a_Mac.zip"
  name "OPTCG Sim"
  desc "One Piece Trading Card Game simulator"
  homepage "https://github.com/Twoody/homebrew-optcg-sim"

  app "OPTCGSim.app"

  postflight do
    system_command "xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/OPTCGSim.app"],
                   sudo: true
  end

  caveats <<~EOS
    To run the application, you may need to set the following permissions manually if the automatic setting does not work:
      xattr -dr com.apple.quarantine #{appdir}/OPTCGSim.app
  EOS
end

