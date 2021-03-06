variable "deploy_spec" {
  default = {
    namespace = {
      name = "ingress-nginx"
      annotations = {}
      labels = {}
    }
    secret = {
      internal-ca = {
        annotations = {}
        labels = {}
        type = "Opaque"
        data = {
          internal-ca = <<EOT
-----BEGIN CERTIFICATE-----
MIIDRDCCAiwCCQCLL4t71Jt1ojANBgkqhkiG9w0BAQsFADBkMQswCQYDVQQGEwJY
WDENMAsGA1UECAwETWFyczEWMBQGA1UEBwwNTW91bnQgT2x5bXB1czEQMA4GA1UE
CgwHQ29tcGFueTENMAsGA1UECwwEVW5pdDENMAsGA1UEAwwEUk9PVDAeFw0yMDA2
MTEwOTE2MzlaFw00MDA2MTEwOTE2MzlaMGQxCzAJBgNVBAYTAlhYMQ0wCwYDVQQI
DARNYXJzMRYwFAYDVQQHDA1Nb3VudCBPbHltcHVzMRAwDgYDVQQKDAdDb21wYW55
MQ0wCwYDVQQLDARVbml0MQ0wCwYDVQQDDARST09UMIIBIjANBgkqhkiG9w0BAQEF
AAOCAQ8AMIIBCgKCAQEA0gpK3LDFYKib5XZs0IlEL/Mzx4WdLhhHCPeiYNNKkxKn
VaUKE+M/B1K+hTZmYLfG5VAOZgkdpWr7pfmPSN9qWyKNqderAHzQu8A4YbxbSSQV
DKVcpQCaHEfjcEKjl0zDIX1MKzJiArJ4YPTCixgDlni195BmDBw100YGa3jw+DxS
LLlR8TA7yeLu/0NmDU31/3u5fAVZ+Vqsnlvn+rJ87Zzdkkq4EPPXojpbDIol+TL1
BIW+KNLMwZ4g8AGmdzfRP+ztmNqnK/M7j+KhK7XI2YpvkdhSCXmdx/gUs5S8xmhP
XKcSLFYhWsxj3wo9ZXsmwAjfQaS6Zfy4+F7junBlDQIDAQABMA0GCSqGSIb3DQEB
CwUAA4IBAQBDrF/ceHWzXwobHoPLLwi+mJxGsS6ROU3Qs2siLdBz374NMfA2Stke
Mj4uOTvcvgzl/yMMVLg/sQXLyo/gEa9Ya4XdX4qNiDcCp3x6J3gmkl0kqO687yQJ
EumEWUWrfxgjxtHR1C/cTEgqc6F0RWGsV+23dOBoLoQBkv4cTldyj0FLDIdIHwjw
AW3Py12YobJ54lv8jlfaUEf5x7gwyMny04uh4hM5MGMVGof+wQZuM4bY30dV526y
AOqx13cHJzMBEmxhWQ5gdP3c9wJqUnI+002ON7bZr9mUtCEZoBSu41oT8lhc4m4d
YB2cjNpMuRLjcS6Ge5rABpyAFYoTThXv
-----END CERTIFICATE-----
EOT
        }
      },
      default-tls-secret = {
        annotations = {}
        labels = {}
        type = "kubernetes.io/tls"
        data = {
          "tls.crt" = <<EOT
-----BEGIN CERTIFICATE-----
MIIDhTCCAm2gAwIBAgIJANIIOlk5qZbQMA0GCSqGSIb3DQEBCwUAMGQxCzAJBgNV
BAYTAlhYMQ0wCwYDVQQIDARNYXJzMRYwFAYDVQQHDA1Nb3VudCBPbHltcHVzMRAw
DgYDVQQKDAdDb21wYW55MQ0wCwYDVQQLDARVbml0MQ0wCwYDVQQDDARST09UMB4X
DTIxMTIzMDAyMjExNVoXDTQxMTIzMDAyMjExNVowXTELMAkGA1UEBhMCWFgxFTAT
BgNVBAcMDERlZmF1bHQgQ2l0eTEcMBoGA1UECgwTRGVmYXVsdCBDb21wYW55IEx0
ZDEZMBcGA1UEAwwQaW5mby5leGFtcGxlLmNvbTCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAL3Wu4oDOgE2/lvyJeRD04WrHZVJ9CBz2HXMAQhRGnADN3VI
6eY+N+M3kn9CbtzZ8XhV02rED8hD10vLhMulZHzTA9kyyxAr2KrEQD8cuiEZnTo7
mF9DDuACRyr7vtfndT6RWMqhgfCrKVqA2ij4glzCLPBILGQ/4Cwv5POWj+HhbxPA
atzSrrSTE0semhlAM7Tvo8OZ7MjGHzaocehhBBCT+nRAonCd1oCEJ2dW3qQWvZXJ
KbF8EyvXN1WcizH8gkOGOjVw2r+ZwRZttbkE33MZljOo/6dQrYKAQEdAfudwP1kN
bCDdRk7lqyWERGYt51qBWnC8Gq2YxHtaUG9vwusCAwEAAaNBMD8wJQYDVR0RBB4w
HIINKi5leGFtcGxlLmNvbYILZXhhbXBsZS5jb20wCQYDVR0TBAIwADALBgNVHQ8E
BAMCBeAwDQYJKoZIhvcNAQELBQADggEBAF41mxL8/wDbqi9uzlCOui2nnLGTbmnE
4Giycu4KRBn8WmCGL0cUWVqNnnt+GZgpGzWrR2vx/gCe2imH41IhWMFS8MNE09JT
EP68WfQX0KEicyXYZzp4FzeM6UDxwCDah5w2OI3cwv75EXGPwCwVfSIeqTQcS0EX
XVbce0HEnP/Kh+D4P3880h+WgtvixQ5qILsed/jK+qvLB0lyCu6kW5ldr12QbD+M
cxDYpX0eK1122srafdhhhAFle9qHV4E0dNMOY2MDTHKSnGn0umXyru0C3hh54VF0
i818dy4JQSLzJDpiAUSsVpwo2UR4IiLXm5L8H+8CvVH2/1VJj9sj5s4=
-----END CERTIFICATE-----
EOT
          "tls.key" = <<EOT
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAvda7igM6ATb+W/Il5EPThasdlUn0IHPYdcwBCFEacAM3dUjp
5j434zeSf0Ju3NnxeFXTasQPyEPXS8uEy6VkfNMD2TLLECvYqsRAPxy6IRmdOjuY
X0MO4AJHKvu+1+d1PpFYyqGB8KspWoDaKPiCXMIs8EgsZD/gLC/k85aP4eFvE8Bq
3NKutJMTSx6aGUAztO+jw5nsyMYfNqhx6GEEEJP6dECicJ3WgIQnZ1bepBa9lckp
sXwTK9c3VZyLMfyCQ4Y6NXDav5nBFm21uQTfcxmWM6j/p1CtgoBAR0B+53A/WQ1s
IN1GTuWrJYREZi3nWoFacLwarZjEe1pQb2/C6wIDAQABAoIBADbhVwIFAMXNIidu
j2m3+fRQjZLU+FBRbShQu5Ot7pinNWcglw3Kutli/WTwzZ/nGZmSJjZdS7q3cgwl
X9SHkc9MKXam6nFYW6Cyb2hPY7eh8gQdqmUPu8MipXRVpsw/y3M1DZg2rJvov2G8
klT50qYCNH+aPcsVdDcR+Xw58Ip54vks0njiK9dtH5gR7qSSdx7l4E12bTM5etWW
9DqlWxM2GsTzkfBdfvp1zjnXJQgo4RMCtP14NCZrg2ajWnzGG7vaeTrNPjiU5X0P
S3RwwlwDOJaJN5bGLdr43Ho+Qiqmzz59GeI0xkT9pdJWha/qV0UjP4tFRSccDNfR
Nk1Pr7ECgYEA+TCmZzqEQ5DZyGbVzLNm0cYqcAP8/hLBSvnPoGCYwMA8xBuHDyf/
Fuflnx+Ebt21Bn/ruG1XxyTHgv+0os9oRa4NTHJ+dNUS2px7a9YqlEPEs/aOSOQX
+B3rOXy11aSWJiTIzWZuajJ/PNgyGjVY2/6MBgeXGBXCl8HucnPv+P8CgYEAwwbb
fCpyBs3hyboiESrr5fRS5pONw1CdbwtzGhiAmT438hG6Uem+8W3pFTB7TISNUMX8
CKc5Ki9U+EW1TaSXT4BWMCSGV3XnDSYGmpV6x4oqXdm9NWXiFmvQn0z6NiA4hbc4
97OBhu8U6jwu2AgGe4spnL9XNx97UfA5wz+ZqhUCgYAC1iTuw+HBiyKPf2wrmlcv
SBwvjjwRAFGm8tUENFVIzGdkrBOLfp8OubEJcKhnQqrO2iHqxYPcRnTm7tY1jDrZ
oDOSjTMXTV2bk3BsN9HgQi05BzNzbPVA48ZLrzm6ptb2tDB89g+Hse9019kqJzVN
u8YIQ4nawlSmuZRnRR6ULQKBgEA8d/qTuG8JTP82sZXZ/00EhnGv1Beq68/xg33q
6CCRX7f5otbsGJpIy2bRSytO1YTvUS5AdhGw+Vm1DByAw93JtZmxzhXsnae1CKPN
7Fzg40d6OlnmLuuXo2V0400Em9lfGgJsO5OIF+l23S8Gpav3kEMyurVLR0Eb0MrA
ngppAoGAbpmLHCkCyZAb3nj6kDyoCnxD+DZpQTpmT8nYYk8vEPlKSCG65cKojhLM
K/nGPN9hyV0eAXh9fzjgC6N54sCAtc9pIwk4lXOzuUmXhgHEkvezCBZuA2dnegqd
suv5rv+Q/F5I0h6AruIfxyGMsF5gzMCvm1Tk7h0iPfpy+ZtrjZU=
-----END RSA PRIVATE KEY-----
EOT
        }
      }
    }
    helm = {
      ingress-nginx = {
        repository = "https://kubernetes.github.io/ingress-nginx"
        chart = "../../_chart/ingress-nginx-4.0.16.tgz"
        version = "4.0.16"
        values = "ingress-nginx.yaml"
      }
    }
  }
}

variable "annotations" {
  default = {}
}

variable "labels" {
  default = {}
}