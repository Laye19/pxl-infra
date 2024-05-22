locals {
  students = {
    # The map of student to create a server for, and their associated ssh keys.
    # NOTE: It's possible to enter the name of your team, instead of your own.
    # bryan = {
    #   ssh_keys = [
    #     "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIMV/QrTO9+A0I2VCknmL56pEI+1Ekw6/9s6613NLPxTZAAAACHNzaDpmbG94 bryanhonof@Bryans-MBP",
    #     "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuAcOS6oFayeYpmbe8xDPGKJels0OWq0NzrZxWCLX7d"
    #   ]


    bryan = {
      ssh_keys = [
        "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIMV/QrTO9+A0I2VCknmL56pEI+1Ekw6/9s6613NLPxTZAAAACHNzaDpmbG94 bryanhonof@Bryans-MBP",
      ]
    }
    Robert = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIANqWnQLgp7HX+FTgKNn3TBAPL//vO8cHGnNsqGIFArK jansenrobert4@gmail.com",
      ]
    }
    axel = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO4AjwqPqDOsot89hPrGqj8P6GXlXZP1P/JcOov1VGIX Axel.colson@student.pxl.be",
      ]
    }
    quinten = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILe8frS9W779nR/TVBTc1giVLt2bwfTYnfqMt7D2qozB 12300247@student.pxl.be",
      ]
    }
    Runar = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBKgm5n+eS/QiGrUHD6i2zFJRsfdEJtzhgJXLggQjuEz runar@runar"
      ]
    }
    Christophe = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ/TzK2ORvoOQXWLWnQQcHoEuDY7PUlp051mwiaQpzeQ pandora@gmail.com",

      ]
    }
    Bjarni = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMDu2VdroRSdGoDyVhGW626ePZaLQCwa7m1khXq4odfI 12302152@student.pxl.be",
      ]
    }
    yinnis = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOqrPVkvGWeMpVz4a/jyUiKhkOcMi7UjVaRjoTCSTB8A 12302157@student.pxl.be",
      ]
    }
    Anish = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIrvcSz2EnQieZyeUOm7aiQN+WCng1uH8fp2Nt/BrAuo Anish.Pun@student.pxl.be",
      ]
    }
    Ward = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIPBikgZA3bQmkp25kk2A9XKAWbdVro1DXVmng1p0+X5 12302622@student.pxl.be",
      ]
    }
    Bowen = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAl4DIqbqunk0BYKzYY18063yFdqVAlSPhBbrZ/l24Db bowen.liang@student.plx.be",
      ]
    }
    Devlin = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINXXwwetHXIi76JQeo6H5emP0zIABhurDXyrtYLIVQn/ 12300703@student.pxl.be",
      ]
    }
  Laye = {
    ssh_key =  [ 
            "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCt/VNM9iC00qy9xvl0+vziwMOXpeyUsLQaiMfWseaoDYJsJdp3VaofdVQCYR2A7IIciH5gnQKRBVg
            10r7L3GqA+hAzHRqjs6qXfFrqReRRAUgZ52ASTYnk/73tF2cOHKIunrVo9Ym79VuXf4cZ6UA7K/3f2nuJ1KXZeR3koCwophDs
            jSz61fObr3rTvgUlGPtRUSWb9sCM0B05SetIfKN/Z6C/PpC8SwY0aLx2jNH31YiNH6MGaB2zDVBwJJyP5uME/GEakmgeFyC/mWFEgB3TsnI
            w0UXpZbmPS5hotiWnKfHbsKaYQZmO3k0Zw72mvFOtEtmGISQSxP22N0zbJicRt6PBKjcLk0o84xz+RPDkkQlgb2WR9JGI7tPt11Opv3T5JFUdFr9ZBkkFXJGyGWDacJ0PWs
            DtGwXgdXzggNG4LF0Qa8fEfSFUHLcJSG2onc9tFskd8znJrbBLD9QCGC5SBTiqRAMRGyFs/K6AULKItONzcjy1ih2pog9jJFu+Ans= konel@Layson_Sali
          ",
          ]
      }
  }
}

module "student_servers" {
  for_each     = local.students
  source       = "./modules/student_server"
  student_name = each.key
  ssh_keys     = each.value.ssh_keys
}
