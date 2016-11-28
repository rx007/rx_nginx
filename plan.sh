# This file is the heart of your application's habitat.
# See full docs at https://www.habitat.sh/docs/reference/plan-syntax/

# Required.
# Sets the name of the package. This will be used in along with `pkg_origin`,
# and `pkg_version` to define the fully-qualified package name, which determines
# where the package is installed to on disk, how it is referred to in package
# metadata, and so on.
pkg_name=rx_nginx

# Required unless overridden by the `HAB_ORIGIN` environment variable.
# The origin is used to denote a particular upstream of a package.
pkg_origin=rx007

# Required.
# Sets the version of the package.
pkg_version=1.0.1

# Required.
# A URL that specifies where to download the source from. Any valid wget url
# will work. Typically, the relative path for the URL is partially constructed
# from the pkg_name and pkg_version values; however, this convention is not
# required.
pkg_source=https://github.com/rx007/rx_nginx_pkg/archive/master.zip

# Required if a valid URL is provided for pkg_source or unless do_verify() is overridden.
# The value for pkg_shasum is a sha-256 sum of the downloaded pkg_source. If you
# do not have the checksum, you can easily generate it by downloading the source
# and using the sha256sum or gsha256sum tools. Also, if you do not have
# do_verify() overridden, and you do not have the correct sha-256 sum, then the
# expected value will be shown in the build output of your package.
pkg_shasum=f4388dde48181ab9eab375d82f60a425f74f0411c039b07d38a67d4522924fcf

# Optional.
# The name and email address of the package maintainer.
pkg_maintainer="rx007 <rx007@me.com>"

# Required for core plans, optional otherwise.
# A short description of the package. It can be a simple string, or you can
# create a multi-line description using markdown to provide a rich description
# of your package.
pkg_description="nginx web server"

# Optional.
# An array of valid software licenses that relate to this package.
# Please choose a license from http://spdx.org/licenses/
pkg_license=('Apache-2.0')

# Optional.
# An array of paths, relative to the final install of the software, where
# binaries can be found. Used to populate PATH for software that depends on
# your package.
# pkg_bin_dirs=(bin)

# Optional.
# An array of the package dependencies needed only at build time.
# pkg_build_deps=(core/make core/gcc)

# Optional.
# An array of package dependencies needed at runtime. You can refer to packages
# at three levels of specificity: `origin/package`, `origin/package/version`, or
# `origin/package/version/release`.
pkg_deps=(
  core/nginx
)

do_download() {
  return 0
}

do_verify() {
  return 0
}

do_unpack() {
  return 0
}

do_build() {
  return 0
}

do_install() {
  return 0
}
