# comment
# frozen_string_literal: true

# top-level class comment
class TransformCheck < Formula
  desc "XML/Navigadoc Transformation Validator"
  homepage "https://bitbucket.org/infomaker/"
  url  "https://s3-eu-west-1.amazonaws.com/cca-dev-bill-temp/transform-check/transform-check-2021-01-04T155356-b737837.tar.gz"
  sha256 "90e1c760780df6ecca1d1247aa3fc09f84f9d95e789339c4bd95570cb1ecd3e6"

  def install
    bin.install "transform-check"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test oc-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/transform-check"
  end
end
