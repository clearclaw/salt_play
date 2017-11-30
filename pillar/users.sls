#!yaml|gpg

users:
  active:  
    roles:

      sudo:
        name: sudo
        uid: 27
        gid: 27
        shell: None
        createhome: False
        roles:
          - __ALL__
        not_roles: []
        ssh_keys: []

      apps:
        name: Apps
        uid: 1200
        gid: 1200
        shell: sh
        secure: False
        createhome: False
        roles:
          - __ALL__
        not_roles: []
        ssh_keys: []

      www-data:
        name: WWW Data
        uid: 1500
        gid: 1500
        shell: sh
        secure: True
        createhome: False
        roles:
          - web
        not_roles: []
        ssh_keys: []

    users:
    
      jcl:
        name: J C Lawrence
        uid: 2000
        gid: 2000
        shell: zsh
        custom_env: True
        secure: True
        createhome: True
        groups:
          - sudo
        roles:
          - __ALL__
        not_roles: []
        password: |
            -----BEGIN PGP MESSAGE-----
            Version: GnuPG v1
            
            hQEMAzBIdhbwMcRkAQf9GGlQjO/ZJg7H26p4/wnGGypiQaz91Jv4bc05oLRxx67B
            MJGsJy4L3/bHZzVxNr6Et+GY1lPjTD4y01CqjnF7lsRmzJX+YnkkuwBKJu/VXbmv
            erHG7E90Fol2DE85gP+S5AjIaIrc7ZyjDriCuwhTsbXa/WMyaGs1abfz4kOVAfJ+
            PNv97ltHvblt+BOVUxG2RB2ZWj73fk2mK+IJznZdRPbtwDcrt4985bk5xga+7GDe
            bdWCji5R6zGHUf4N+M+9KP6FF/DbT7KQX7NNjL6dYiRprLfYL36VsG7xo5l1b1lB
            uosO5fYDIYO91b5fIod8SS0lH2aYCUpvWmUWwqJ9O4UBDANamwU8JssFUgEH/jGq
            2CB9d7dichME0A26RuUkSS0Uthzq9B0+1EMUkHPd72N5paJyxbpExBii777ajygM
            9j06saidvECzxM0LLi5Zzcqsok5c8F6JD6oSOXwQ/oalsOlxWdXO+ZIi/x6DcKT6
            a+/gTifY/RtODcBK4jlfGBIxGd4AjSfR1a9/ND1GInvZ/k/i3Srul8JMsW0RgkiN
            t90iROPpNMFkK0J7NpcoB9b0A3RN82kZB21Dkj2OfiGCN1dnJoUPCLLLefqRf2Ug
            trN2/lfe9mLWsjIsSrw58LGHAbFCp+99mgWEsqdswX/a65zrSRKKJSHWLbMeYTYZ
            nhhywFBohfUyDKgZ93eFAQwDTaXaUIRQPR0BB/4y5LrnKsOfcguZOia9G9rfYQ41
            8bcMpphxbP4k+ARbcGhMIfB2+otyDM4+T9s8fjwfcINCRoOWiQPAZ5xeW1PPPnl4
            Rb+XIGBDiVBDOIzr80nAonJA2coGVXIG+3PrPdfYP3kawYn8/BILa0bPahYzU/Qm
            PWLfosOxbIESiHsd6j02Yf/oJC2WuaeMoi4S2JZHYernGdlvzR2N4x14+snXiUF5
            C9SOKk9fuh8s4iWkM/K70tSZGv1PJGKyDZPsUxtR8zhbyxLhNvC6BI8jLemR3Vok
            DpT57USJBu4NmnefHwkyeNb9OCYRXv/DjYVQVmOHsywzWkz3FcmlnLfl7wO8hQEM
            A7xU5N/tFCUtAQf/T54LdfmeUgLjFYAABagA+Xs3bhravq0bl8vCHxIDqm4rtuaJ
            sVawyfqS7MJ9QeseJVnZ77I+oSRrUPrvX+jUjUqYEfAB2gCqd1svPVM3UGnuoOuj
            1aGHjE54zMSr2IviqPE7p9RbTh+1+UkBk+nd/253v4TCeAI/QDLzAYzFAva0MqGv
            2dfYH+nC83fmRCHbQwl2UB6lgSNNBc2tD++f+GGi6q6KstugyLL85s2y4CQZxTuM
            sI7GIq+QZK2QQ03wFe8jqJH/WLc8qJT/tx/b4zZO+Rnj2JaVRdpD8MbM+6d2qWQ1
            UUcw0gEayatZNMXsx8bxNdakv+S1sVOp4XV+ptJeAeVnn8V+SUMqR5SbxI0PSjjX
            vq9zx8AW87RcjQkHjKuceExU64YvOovpCsdV+OmYuQxh3Je5S6n3JGIk94bhkARO
            poQcx7/Zj0KVezPHxC7p+7aGpkJMnNSvlijqUw==
            =NFkU
            -----END PGP MESSAGE-----
        mfa_config: |
            -----BEGIN PGP MESSAGE-----
            Version: GnuPG v1
            
            hQEMAzBIdhbwMcRkAQf9HC6Xz7G2uhGdrVotSupSD4/c95YLIv+yXo158MwjpdRW
            C96RwA+OwsfDqkmV2n/RkM7cscsuNTXbfpaWkD9ndOa8tNM6OswN6T3+hQQN5Mf7
            koM/MfQViqVB8uWZmwvwPMdsmhzv4W7Yei7ugvM+aMcY0v3zjJELO4Uj6fSr61Fp
            KXd6wHuqYbcJmMAs2xbG6M7ugocyeWZuY3r4ESFhgVdOatIHsL48Y7IBhtJQRpOm
            41T5q4K9nnwQUIbmGxlyssguRnD+jorKV8SDSsnJtycNJ7cvmZjqG64r2KaQ1VGj
            28qXodUrzD8NwLYACmnP2qxlxV4mJ5UnOo5DvisJ1oUBDANamwU8JssFUgEIAJu6
            71oKpM5JbGGbi3fDkGl4dPwZa63wUdz5XYgFrnuzJV1VmwICJQg7TAbOyTDgSDV6
            bELHLFDGNUPakdWp+gDnWRaQOPfdCscrV+GARWoZQqDV8nkd9FOSVjMNmPcwcYV8
            xG46t7KvFZVc+9OcTrwIoYYmSf0Z/d+H2iwmWiJWrcDorvrzenZ42O7cnDsFvtny
            /A2FTCsPY6p3f7nlXwn0RTm804ixedj/U8Rz4QSwNUcdp9G4LtV1gK3NUZDpVUrM
            CAH5tH9kHvnN6xYwo6gF1ut63BAR6Nu8zWL5jBgd34QryMdglz5hvMac2cKiymrn
            NsE0omAnSsV0Da43EJGFAQwDTaXaUIRQPR0BB/9MW1AtG2VyTu5RMNt9YmZPdZih
            2HA8kr9IxlBvurf4AigniLzjyWlG1x4lvk8YaoDV/CEoU0tYLz9S54K9ipQApV3u
            JwiOahcpy6A3jKAt5W0xYlGWvDnt58ZgUC94WRuSXfYX8/95lCMB8SpMtZMx+3iR
            pU+CivO5NrDMxUFglkuKPD8yasgCRaWueOcHPC2sx2zZ9W5vh2RCAIAKHL6oI16Y
            e9emTOTSw7vaKffVPNXPhgt9foQdfUhB2zLkkJmzUxlpbVI5Mgv/eZB5uO3IstJc
            FLrCBY10DSQo94lPFHRRPa270r/xW9RJnxOSEZhrDwF+6ZF5iSETRNCCALqfhQEM
            A7xU5N/tFCUtAQf/aFTPBFDPm81cxZMOGLd/6kBDPPry45igiyHsP0mikDsy0ixu
            uFAWOsTOaYbH0FFoYBF5PnN3cEzkqR5upSv0b2Uvelzze+wlPZyXa4tCLOTyzd+g
            bJbGJhRlw13Z4GrknUfTCgUzUsHze/VRm4V3YqZTSwZ+89ivyemBy7m8Iqx5qDnC
            rrhKhihxwVgVf+OPP29YdX2dVyrO9vcYJveqqZ8fOmOveiYOq3A37Da0cXGFvJvD
            PEUa23k4KQ6ZrJ+mGzoO3eKFXRSaStAS+l1MmzYkva+yjPcge2HiS8L8EJtuP81V
            NvD4DCszeMgaa7ExL8iGZCP9im6SyiOy6LLFotKQAYRhnnaTzfQzkUhr7lANDjlk
            THlgNX93CitIQFzak9YtKQQCuk1k8gnQVbPUMKhC77v7PMbdNnJ90JbEsD+RCwhf
            2IzVdDSsSKITPR1biOftd+qfeuAlRCSEK74cJO6fMa5is73/guAnYKWVqOpAtZKT
            7j49qHxaUMD76F12jhj4+PC0s7sWqtgBGR1IzlGV
            =IN/o
            -----END PGP MESSAGE-----
        ssh_keys: 
          - jcl

      duncan:
        name: Duncan Bubba
        uid: 2011
        gid: 2011
        shell: bash
        custom_env: False
        secure: False
        createhome: True
        groups: []
        password: ""
        mfa_config: |
            -----BEGIN PGP MESSAGE-----
            Version: GnuPG v1
            
            hQEMAzBIdhbwMcRkAQgAg9cQS1VenDM09htGpkRQ9qtE4XSJxmQubyR72vis7njr
            bjIrPh2R/jz+9UBwJ6KSLZZbF1dhCCOj+cjdAi20vNTKMg+PgTtkCPGNjVoJ3ySV
            N8g0BeFv9MQPYRqz7S8+GdRdEhF4e96y1CtJqyt0GqwZl61NTky6gFjAIkA2CofP
            Oy9wP7DDoETajM19a9C7hcn90h+4KrnjQFAmQitC5Yi0nZOOeKIxExLCzxjOJ9EM
            +2K/fZdL1g6qP3/I7oQBNK/EXf5Qdud98hvDE7+6F45NRzkL/Oa4+Nk8C8rclLzs
            I9lSGbioEuzIq1H4bixfl85do4F/B5o2FA76sbTxi4UBDANamwU8JssFUgEH+waM
            r9FEfkKCgTnR4KLXrva7e7iiKZISu52iVykLJPpIajPvWhsmwDNz58BexZY8EIMG
            WLwZ7tq7Jy+oGcDydtpxL2iqH5RyD3Rvsxv3iNJ4wmGvGPp9idVInYK2Ug1B71nG
            xQkcSoVxCbLH6MsDETNNeyFVqEhVwquEpi+Xw4ehhd5bEc89xRHoKCI1egUbnFKG
            4/LJ1AIFLEbyUsPG8KPUbR4bqiwGjLgY265qaYnBh/MUsMYcAfGpWgeR7C4wJHDQ
            5nYdJSGZxfFm9T0DiAQoeWPNX5/xZXYnUJqsYJ6rT4mbvDQC+9LLwrKNwyeiMpBz
            dVlF+YoQHRpzZr46Vw+FAQwDTaXaUIRQPR0BCACC6QgiIqlM2nAAsNdIdvRLNpc4
            DnmTOIqXHDpnsrtHvQsc2jIhCHyu47X9DvMwB/b/AzVRNh300BSjKpi8fe1WlNOu
            DWSPkoS/SPgSy6ZiUeLUYCDsoP9LvqM8YU0jeMLsCDP73NNgdlKvEJQW6th5vUdH
            1cpAaK2KH2y5Z7wwzW1UiICuUJI9bzBW/7gOEWaCOj3MSy+Ll7j7C4zogyNd3ZX7
            a83KyrFAXqIaf+YPD50+A9cIl7Vhs7hIUsAMI9ov4KIriNgxUkgX8fQ0RjWagiPZ
            5Sw9uxDHIUF5hR0UZlIQOXTk4UDuZlVQASX8+WkyZ4YKiSU3fvB3bWVzIA1OhQEM
            A7xU5N/tFCUtAQf+M7lXXX1nGZtI1a5uIt9XlyWbiy2bwiGDeTPTN1LHJyRgB5tL
            dd034pDdTMpcvEGiH4qPlPHh40TnG1t5JSelu1i3JSr5OGTRU4hhOh46CtUAJgiO
            2UIMPhYUAIHTPrL7D1BwPVw4oUbS1opB/VIia+dU1v3Jm04iGzZB0DeA8M/3UImm
            vkSYAalRSpl1xOViWE9tEjuoQzg2H/V2b8SDa96O+bCRHJJiaw8aU0q0HW+UKNYz
            cZhdl1nfe/AACE8l3HOGBkw/bpWSa3AkXUNpM96/M+YLaOL8NnuLGK3/O6S7hKpO
            xTw1VDeINU5eFtEmZzTtrKpXB/Q2Av5puyKL5NKGAThhq9qaYuiai2SEPmjCXLkd
            F7HbWwMd8mAQwApcDvuxP7JL7KEzY0Dr7OdRXnZARyYiDoiizT40xVA1LOgfr6te
            Cxr+L7B4XVb9LsI5w3VIGZuGFXaBbxSLBT8zsoRqj41NEdNCTVIQmDasbqO5FWLX
            mw1mAv2kX0UaOK6wy7ULkMCfCSE=
            =K2Oh
            -----END PGP MESSAGE----
        roles:
          - web
        not_roles: []
        ssh_keys:
          - duncan

  remove:
    roles: 
      fake_role:
        uid: 1501
        gid: 1501
        purge: False

    users: {}
