# Install script for directory: /home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/aes.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/aria.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/asn1.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/asn1write.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/base64.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/bignum.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/build_info.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/camellia.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ccm.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/chacha20.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/chachapoly.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/check_config.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/cipher.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/cmac.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/compat-2.x.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/config_psa.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/constant_time.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ctr_drbg.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/debug.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/des.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/dhm.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ecdh.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ecdsa.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ecjpake.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ecp.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/entropy.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/error.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/gcm.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/hkdf.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/hmac_drbg.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/mbedtls_config.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/md.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/md5.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/net_sockets.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/nist_kw.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/oid.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/pem.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/pk.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/pkcs12.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/pkcs5.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/platform.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/platform_time.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/platform_util.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/poly1305.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/private_access.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/psa_util.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ripemd160.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/rsa.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/sha1.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/sha256.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/sha512.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ssl.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ssl_cache.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ssl_cookie.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/ssl_ticket.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/threading.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/timing.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/version.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/x509.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/x509_crl.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/x509_crt.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_builtin_composites.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_compat.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_config.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_driver_common.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_extra.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_platform.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_se_driver.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_sizes.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_struct.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_types.h"
    "/home/teddy/Data/02_WorkSpace/01_RP_pico/pico_audio_streaming_Test/libraries/mbedtls/include/psa/crypto_values.h"
    )
endif()

