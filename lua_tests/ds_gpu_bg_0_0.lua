require("ds_lib")

wait_ns(10000)

reg_set(0, ds.Reg_DS_on)
reg_set(1, ds.Reg_DS_on)

-- 200/100 vertical
reg_set(384, gpu.Reg_Framebuffer_PosX )
reg_set( 60, gpu.Reg_Framebuffer_PosY )
reg_set(256, gpu.Reg_Framebuffer_SizeX)
reg_set(192, gpu.Reg_Framebuffer_SizeY)
reg_set(2  , gpu.Reg_Framebuffer_Scale)
reg_set(0  , gpu.Reg_Framebuffer_LCD)

reg_set(512, gpu.Reg_Framebuffer2_PosX )
reg_set(450, gpu.Reg_Framebuffer2_PosY )
reg_set(256, gpu.Reg_Framebuffer2_SizeX)
reg_set(192, gpu.Reg_Framebuffer2_SizeY)
reg_set(1  , gpu.Reg_Framebuffer2_Scale)
reg_set(0  , gpu.Reg_Framebuffer2_LCD)

-- testing settings from 2D_CharBg_1

-- vram writeable
write_dsbus_32bit(0x00000080, 0x04000240) -- MemControl1
write_dsbus_32bit(0x00000000, 0x04000244) -- MemControl2
write_dsbus_32bit(0x00000000, 0x04000248) -- MemControl3

-- palette
write_dsbus_32bit(0x628a7ffe, 0x05000000)
write_dsbus_32bit(0x6f0d6acb, 0x05000004)
write_dsbus_32bit(0x6aec6f2f, 0x05000008)
write_dsbus_32bit(0x77757352, 0x0500000c)
write_dsbus_32bit(0x51e6460d, 0x05000010)
write_dsbus_32bit(0x66f05a27, 0x05000014)
write_dsbus_32bit(0x41845a8f, 0x05000018)
write_dsbus_32bit(0x49c53943, 0x0500001c)
write_dsbus_32bit(0x41c73567, 0x05000020)
write_dsbus_32bit(0x4e2c5668, 0x05000024)
write_dsbus_32bit(0x62ad41cb, 0x05000028)
write_dsbus_32bit(0x566c2924, 0x0500002c)
write_dsbus_32bit(0x5eb1524f, 0x05000030)
write_dsbus_32bit(0x45e93566, 0x05000034)
write_dsbus_32bit(0x1ca16f55, 0x05000038)
write_dsbus_32bit(0x24e26b13, 0x0500003c)
write_dsbus_32bit(0x31442d02, 0x05000040)
write_dsbus_32bit(0x10607798, 0x05000044)
write_dsbus_32bit(0x7bba39aa, 0x05000048)
write_dsbus_32bit(0x7bdc779b, 0x0500004c)
write_dsbus_32bit(0x66c90820, 0x05000050)

-- VRAM A
write_dsbus_32bit(0x00010000, 0x06800000)
write_dsbus_32bit(0x00030002, 0x06800004)
write_dsbus_32bit(0x00050004, 0x06800008)
write_dsbus_32bit(0x00070006, 0x0680000c)
write_dsbus_32bit(0x00110010, 0x06800040)
write_dsbus_32bit(0x00130012, 0x06800044)
write_dsbus_32bit(0x00150014, 0x06800048)
write_dsbus_32bit(0x00170016, 0x0680004c)
write_dsbus_32bit(0x00210020, 0x06800080)
write_dsbus_32bit(0x00230022, 0x06800084)
write_dsbus_32bit(0x00250024, 0x06800088)
write_dsbus_32bit(0x00270026, 0x0680008c)
write_dsbus_32bit(0x00310030, 0x068000c0)
write_dsbus_32bit(0x00330032, 0x068000c4)
write_dsbus_32bit(0x00350034, 0x068000c8)
write_dsbus_32bit(0x00370036, 0x068000cc)
write_dsbus_32bit(0x00410040, 0x06800100)
write_dsbus_32bit(0x00430042, 0x06800104)
write_dsbus_32bit(0x00450044, 0x06800108)
write_dsbus_32bit(0x00470046, 0x0680010c)
write_dsbus_32bit(0x00510050, 0x06800140)
write_dsbus_32bit(0x00530052, 0x06800144)
write_dsbus_32bit(0x00550054, 0x06800148)
write_dsbus_32bit(0x00570056, 0x0680014c)
write_dsbus_32bit(0x00610060, 0x06800180)
write_dsbus_32bit(0x00630062, 0x06800184)
write_dsbus_32bit(0x00650064, 0x06800188)
write_dsbus_32bit(0x00670066, 0x0680018c)
write_dsbus_32bit(0x00710070, 0x068001c0)
write_dsbus_32bit(0x00730072, 0x068001c4)
write_dsbus_32bit(0x00750074, 0x068001c8)
write_dsbus_32bit(0x00770076, 0x068001cc)

write_dsbus_32bit(0x0f000000, 0x0680406c)
write_dsbus_32bit(0x090d0000, 0x06804074)
write_dsbus_32bit(0x0f0f0d0f, 0x0680407c)
write_dsbus_32bit(0x01010000, 0x06804094)
write_dsbus_32bit(0x09000000, 0x06804098)
write_dsbus_32bit(0x0201010a, 0x0680409c)
write_dsbus_32bit(0x0f0e0d00, 0x068040a0)
write_dsbus_32bit(0x0101010a, 0x068040a4)
write_dsbus_32bit(0x090f0f0f, 0x068040a8)
write_dsbus_32bit(0x1101010a, 0x068040ac)
write_dsbus_32bit(0x0a090f09, 0x068040b0)
write_dsbus_32bit(0x11010101, 0x068040b4)
write_dsbus_32bit(0x010a090f, 0x068040b8)
write_dsbus_32bit(0x11010109, 0x068040bc)
write_dsbus_32bit(0x02010000, 0x068040c8)
write_dsbus_32bit(0x04030302, 0x068040cc)
write_dsbus_32bit(0x05020201, 0x068040d0)
write_dsbus_32bit(0x04040403, 0x068040d4)
write_dsbus_32bit(0x03050101, 0x068040d8)
write_dsbus_32bit(0x06040404, 0x068040dc)
write_dsbus_32bit(0x04121110, 0x068040e0)
write_dsbus_32bit(0x06060604, 0x068040e4)
write_dsbus_32bit(0x17111016, 0x068040e8)
write_dsbus_32bit(0x0b070603, 0x068040ec)
write_dsbus_32bit(0x1b111a1a, 0x068040f0)
write_dsbus_32bit(0x0815171b, 0x068040f4)
write_dsbus_32bit(0x17131b1b, 0x068040f8)
write_dsbus_32bit(0x08080817, 0x068040fc)
write_dsbus_32bit(0x04030304, 0x06804108)
write_dsbus_32bit(0x00000304, 0x0680410c)
write_dsbus_32bit(0x06070706, 0x06804110)
write_dsbus_32bit(0x06070706, 0x06804114)
write_dsbus_32bit(0x07060b04, 0x06804118)
write_dsbus_32bit(0x07070707, 0x0680411c)
write_dsbus_32bit(0x06151413, 0x06804120)
write_dsbus_32bit(0x06070b06, 0x06804124)
write_dsbus_32bit(0x0c080808, 0x06804128)
write_dsbus_32bit(0x18181318, 0x0680412c)
write_dsbus_32bit(0x0c180808, 0x06804130)
write_dsbus_32bit(0x18180c18, 0x06804134)
write_dsbus_32bit(0x0c18080c, 0x06804138)
write_dsbus_32bit(0x0c0c0c18, 0x0680413c)
write_dsbus_32bit(0x00000808, 0x06804150)
write_dsbus_32bit(0x0b0c0b06, 0x06804158)
write_dsbus_32bit(0x00000006, 0x0680415c)
write_dsbus_32bit(0x0707060b, 0x06804160)
write_dsbus_32bit(0x00080b07, 0x06804164)
write_dsbus_32bit(0x07060c18, 0x06804168)
write_dsbus_32bit(0x13190b07, 0x0680416c)
write_dsbus_32bit(0x07060c18, 0x06804170)
write_dsbus_32bit(0x180b1c07, 0x06804174)
write_dsbus_32bit(0x0b0c1919, 0x06804178)
write_dsbus_32bit(0x1c060707, 0x0680417c)
write_dsbus_32bit(0x0000000c, 0x068041a8)
write_dsbus_32bit(0x00000b06, 0x068041b0)
write_dsbus_32bit(0x0b0b0707, 0x068041b8)
write_dsbus_32bit(0x0d000000, 0x06804424)
write_dsbus_32bit(0x23000000, 0x0680442c)
write_dsbus_32bit(0x1d0e0000, 0x06804434)
write_dsbus_32bit(0x0e0e0e00, 0x0680443c)
write_dsbus_32bit(0x1d000000, 0x06804440)
write_dsbus_32bit(0x0f090d0d, 0x06804444)
write_dsbus_32bit(0x0f0f0000, 0x06804448)
write_dsbus_32bit(0x0a0a0f0d, 0x0680444c)
write_dsbus_32bit(0x1f0e0f00, 0x06804450)
write_dsbus_32bit(0x0a0a0d1d, 0x06804454)
write_dsbus_32bit(0x201d0e0f, 0x06804458)
write_dsbus_32bit(0x21090f0d, 0x0680445c)
write_dsbus_32bit(0x0f1d0e0f, 0x06804460)
write_dsbus_32bit(0x16200f0f, 0x06804464)
write_dsbus_32bit(0x0f0e0e20, 0x06804468)
write_dsbus_32bit(0x201f160d, 0x0680446c)
write_dsbus_32bit(0x0f090f0e, 0x06804470)
write_dsbus_32bit(0x161f2016, 0x06804474)
write_dsbus_32bit(0x0d0f090d, 0x06804478)
write_dsbus_32bit(0x1f1f0e1f, 0x0680447c)
write_dsbus_32bit(0x01010a0d, 0x06804480)
write_dsbus_32bit(0x1b020201, 0x06804484)
write_dsbus_32bit(0x0101010a, 0x06804488)
write_dsbus_32bit(0x03030502, 0x0680448c)
write_dsbus_32bit(0x0201010a, 0x06804490)
write_dsbus_32bit(0x04030201, 0x06804494)
write_dsbus_32bit(0x01010a21, 0x06804498)
write_dsbus_32bit(0x04040111, 0x0680449c)
write_dsbus_32bit(0x11112121, 0x068044a0)
write_dsbus_32bit(0x1317021b, 0x068044a4)
write_dsbus_32bit(0x1a1a2121, 0x068044a8)
write_dsbus_32bit(0x1b241b16, 0x068044ac)
write_dsbus_32bit(0x16090a09, 0x068044b0)
write_dsbus_32bit(0x1b101b10, 0x068044b4)
write_dsbus_32bit(0x1a020201, 0x068044b8)
write_dsbus_32bit(0x151b1b1b, 0x068044bc)
write_dsbus_32bit(0x0604171b, 0x068044c0)
write_dsbus_32bit(0x0c180c06, 0x068044c4)
write_dsbus_32bit(0x0606171b, 0x068044c8)
write_dsbus_32bit(0x180b0b06, 0x068044cc)
write_dsbus_32bit(0x06041313, 0x068044d0)
write_dsbus_32bit(0x0b0c180b, 0x068044d4)
write_dsbus_32bit(0x0c0c130b, 0x068044d8)
write_dsbus_32bit(0x0b0c0c0c, 0x068044dc)
write_dsbus_32bit(0x08150b17, 0x068044e0)
write_dsbus_32bit(0x180c1813, 0x068044e4)
write_dsbus_32bit(0x13041314, 0x068044e8)
write_dsbus_32bit(0x19181308, 0x068044ec)
write_dsbus_32bit(0x0c0c141b, 0x068044f0)
write_dsbus_32bit(0x19181813, 0x068044f4)
write_dsbus_32bit(0x17141b15, 0x068044f8)
write_dsbus_32bit(0x0c181808, 0x068044fc)
write_dsbus_32bit(0x180c0b0b, 0x06804500)
write_dsbus_32bit(0x190c0c0c, 0x06804504)
write_dsbus_32bit(0x0c0c070b, 0x06804508)
write_dsbus_32bit(0x070c0c0c, 0x0680450c)
write_dsbus_32bit(0x0c181e07, 0x06804510)
write_dsbus_32bit(0x0707190c, 0x06804514)
write_dsbus_32bit(0x0c0c0b1e, 0x06804518)
write_dsbus_32bit(0x0722071e, 0x0680451c)
write_dsbus_32bit(0x19180c18, 0x06804520)
write_dsbus_32bit(0x1c220707, 0x06804524)
write_dsbus_32bit(0x1e190c0b, 0x06804528)
write_dsbus_32bit(0x1c1c0707, 0x0680452c)
write_dsbus_32bit(0x1c070707, 0x06804530)
write_dsbus_32bit(0x25071c07, 0x06804534)
write_dsbus_32bit(0x07070707, 0x06804538)
write_dsbus_32bit(0x1c1c0722, 0x0680453c)
write_dsbus_32bit(0x190c0c1e, 0x06804540)
write_dsbus_32bit(0x07070706, 0x06804544)
write_dsbus_32bit(0x1919191e, 0x06804548)
write_dsbus_32bit(0x19191e1e, 0x0680454c)
write_dsbus_32bit(0x1e19191e, 0x06804550)
write_dsbus_32bit(0x1919191e, 0x06804554)
write_dsbus_32bit(0x1c1e1e1c, 0x06804558)
write_dsbus_32bit(0x1e19191e, 0x0680455c)
write_dsbus_32bit(0x221e1e1e, 0x06804560)
write_dsbus_32bit(0x1e1e1e22, 0x06804564)
write_dsbus_32bit(0x221c1c1c, 0x06804568)
write_dsbus_32bit(0x1c220722, 0x0680456c)
write_dsbus_32bit(0x221c1c25, 0x06804570)
write_dsbus_32bit(0x22222225, 0x06804574)
write_dsbus_32bit(0x22262525, 0x06804578)
write_dsbus_32bit(0x25252525, 0x0680457c)
write_dsbus_32bit(0x0707071c, 0x06804580)
write_dsbus_32bit(0x0000000b, 0x06804584)
write_dsbus_32bit(0x071c190c, 0x06804588)
write_dsbus_32bit(0x00000b06, 0x0680458c)
write_dsbus_32bit(0x07061919, 0x06804590)
write_dsbus_32bit(0x000b061c, 0x06804594)
write_dsbus_32bit(0x1e1e1e1e, 0x06804598)
write_dsbus_32bit(0x0b0b0707, 0x0680459c)
write_dsbus_32bit(0x071e1e1e, 0x068045a0)
write_dsbus_32bit(0x06060707, 0x068045a4)
write_dsbus_32bit(0x07071e1c, 0x068045a8)
write_dsbus_32bit(0x1c07071c, 0x068045ac)
write_dsbus_32bit(0x1e070722, 0x068045b0)
write_dsbus_32bit(0x1c071e19, 0x068045b4)
write_dsbus_32bit(0x1e1c2222, 0x068045b8)
write_dsbus_32bit(0x0707070b, 0x068045bc)
write_dsbus_32bit(0x0000000c, 0x068045e0)
write_dsbus_32bit(0x00000006, 0x068045e8)
write_dsbus_32bit(0x00000c0b, 0x068045f0)
write_dsbus_32bit(0x000c0b06, 0x068045f8)
write_dsbus_32bit(0x20200e00, 0x06804804)
write_dsbus_32bit(0x200e0e1d, 0x0680480c)
write_dsbus_32bit(0x0d0e201d, 0x06804814)
write_dsbus_32bit(0x0e000000, 0x06804818)
write_dsbus_32bit(0x0e201f20, 0x0680481c)
write_dsbus_32bit(0x20000000, 0x06804820)
write_dsbus_32bit(0x0d0e0e0d, 0x06804824)
write_dsbus_32bit(0x20000000, 0x06804828)
write_dsbus_32bit(0x0f0f0d0e, 0x0680482c)
write_dsbus_32bit(0x1f200000, 0x06804830)
write_dsbus_32bit(0x0d0f0f20, 0x06804834)
write_dsbus_32bit(0x200e0000, 0x06804838)
write_dsbus_32bit(0x200d0e1d, 0x0680483c)
write_dsbus_32bit(0x1f0d090d, 0x06804840)
write_dsbus_32bit(0x0921211f, 0x06804844)
write_dsbus_32bit(0x2009090d, 0x06804848)
write_dsbus_32bit(0x0a211621, 0x0680484c)
write_dsbus_32bit(0x0d09090f, 0x06804850)
write_dsbus_32bit(0x0a201f21, 0x06804854)
write_dsbus_32bit(0x0909090f, 0x06804858)
write_dsbus_32bit(0x090d0d0f, 0x0680485c)
write_dsbus_32bit(0x0f090f0f, 0x06804860)
write_dsbus_32bit(0x1f1a090f, 0x06804864)
write_dsbus_32bit(0x0a0f0f09, 0x06804868)
write_dsbus_32bit(0x110a0909, 0x0680486c)
write_dsbus_32bit(0x0a0d0d09, 0x06804870)
write_dsbus_32bit(0x01110a01, 0x06804874)
write_dsbus_32bit(0x0a210f0f, 0x06804878)
write_dsbus_32bit(0x0a090102, 0x0680487c)
write_dsbus_32bit(0x1a020502, 0x06804880)
write_dsbus_32bit(0x0b1b101b, 0x06804884)
write_dsbus_32bit(0x1a120505, 0x06804888)
write_dsbus_32bit(0x04131010, 0x0680488c)
write_dsbus_32bit(0x11161103, 0x06804890)
write_dsbus_32bit(0x0404131a, 0x06804894)
write_dsbus_32bit(0x1111110a, 0x06804898)
write_dsbus_32bit(0x04060b1a, 0x0680489c)
write_dsbus_32bit(0x1a1b0a21, 0x068048a0)
write_dsbus_32bit(0x0c03151b, 0x068048a4)
write_dsbus_32bit(0x101b020a, 0x068048a8)
write_dsbus_32bit(0x24111a10, 0x068048ac)
write_dsbus_32bit(0x1b120105, 0x068048b0)
write_dsbus_32bit(0x0b171313, 0x068048b4)
write_dsbus_32bit(0x1b110102, 0x068048b8)
write_dsbus_32bit(0x0b131b15, 0x068048bc)
write_dsbus_32bit(0x0c141506, 0x068048c0)
write_dsbus_32bit(0x19181819, 0x068048c4)
write_dsbus_32bit(0x0c140b06, 0x068048c8)
write_dsbus_32bit(0x07190c0b, 0x068048cc)
write_dsbus_32bit(0x14140b06, 0x068048d0)
write_dsbus_32bit(0x071c1e06, 0x068048d4)
write_dsbus_32bit(0x08081904, 0x068048d8)
write_dsbus_32bit(0x07070618, 0x068048dc)
write_dsbus_32bit(0x13142414, 0x068048e0)
write_dsbus_32bit(0x07071813, 0x068048e4)
write_dsbus_32bit(0x130c1414, 0x068048e8)
write_dsbus_32bit(0x1c1e1918, 0x068048ec)
write_dsbus_32bit(0x0c040604, 0x068048f0)
write_dsbus_32bit(0x0c180808, 0x068048f4)
write_dsbus_32bit(0x14080b0b, 0x068048f8)
write_dsbus_32bit(0x0c181808, 0x068048fc)
write_dsbus_32bit(0x221e1e1c, 0x06804900)
write_dsbus_32bit(0x221c1c1c, 0x06804904)
write_dsbus_32bit(0x221e191e, 0x06804908)
write_dsbus_32bit(0x25221c22, 0x0680490c)
write_dsbus_32bit(0x221e191e, 0x06804910)
write_dsbus_32bit(0x25252225, 0x06804914)
write_dsbus_32bit(0x221e1919, 0x06804918)
write_dsbus_32bit(0x25221c22, 0x0680491c)
write_dsbus_32bit(0x1c1e1e07, 0x06804920)
write_dsbus_32bit(0x25221c07, 0x06804924)
write_dsbus_32bit(0x1e1e1c07, 0x06804928)
write_dsbus_32bit(0x221c1c1e, 0x0680492c)
write_dsbus_32bit(0x2207071e, 0x06804930)
write_dsbus_32bit(0x221c1c22, 0x06804934)
write_dsbus_32bit(0x1e19190c, 0x06804938)
write_dsbus_32bit(0x22221e1e, 0x0680493c)
write_dsbus_32bit(0x25252525, 0x06804940)
write_dsbus_32bit(0x25252626, 0x06804944)
write_dsbus_32bit(0x27272525, 0x06804948)
write_dsbus_32bit(0x22262627, 0x0680494c)
write_dsbus_32bit(0x27272725, 0x06804950)
write_dsbus_32bit(0x22262727, 0x06804954)
write_dsbus_32bit(0x27272725, 0x06804958)
write_dsbus_32bit(0x22262727, 0x0680495c)
write_dsbus_32bit(0x27272725, 0x06804960)
write_dsbus_32bit(0x25252727, 0x06804964)
write_dsbus_32bit(0x27272525, 0x06804968)
write_dsbus_32bit(0x25252527, 0x0680496c)
write_dsbus_32bit(0x25252525, 0x06804970)
write_dsbus_32bit(0x25252525, 0x06804974)
write_dsbus_32bit(0x25252522, 0x06804978)
write_dsbus_32bit(0x25252525, 0x0680497c)
write_dsbus_32bit(0x07222222, 0x06804980)
write_dsbus_32bit(0x07070707, 0x06804984)
write_dsbus_32bit(0x22222222, 0x06804988)
write_dsbus_32bit(0x07070722, 0x0680498c)
write_dsbus_32bit(0x22221c1c, 0x06804990)
write_dsbus_32bit(0x07071e07, 0x06804994)
write_dsbus_32bit(0x22071c1c, 0x06804998)
write_dsbus_32bit(0x190c0c19, 0x0680499c)
write_dsbus_32bit(0x1c071c22, 0x068049a0)
write_dsbus_32bit(0x180c191e, 0x068049a4)
write_dsbus_32bit(0x07222222, 0x068049a8)
write_dsbus_32bit(0x180c1e1e, 0x068049ac)
write_dsbus_32bit(0x07070722, 0x068049b0)
write_dsbus_32bit(0x18191c1e, 0x068049b4)
write_dsbus_32bit(0x071c1c22, 0x068049b8)
write_dsbus_32bit(0x191e1c07, 0x068049bc)
write_dsbus_32bit(0x000c0c1e, 0x068049c0)
write_dsbus_32bit(0x13131819, 0x068049c8)
write_dsbus_32bit(0x17180c06, 0x068049d0)
write_dsbus_32bit(0x14180b1e, 0x068049d8)
write_dsbus_32bit(0x00000014, 0x068049dc)
write_dsbus_32bit(0x08130b0b, 0x068049e0)
write_dsbus_32bit(0x00000014, 0x068049e4)
write_dsbus_32bit(0x130c0b0b, 0x068049e8)
write_dsbus_32bit(0x00000008, 0x068049ec)
write_dsbus_32bit(0x080c0b19, 0x068049f0)
write_dsbus_32bit(0x00001308, 0x068049f4)
write_dsbus_32bit(0x080c060b, 0x068049f8)
write_dsbus_32bit(0x00001408, 0x068049fc)
write_dsbus_32bit(0x201d0000, 0x06804c00)
write_dsbus_32bit(0x090f0e23, 0x06804c04)
write_dsbus_32bit(0x201f0000, 0x06804c08)
write_dsbus_32bit(0x090f0f20, 0x06804c0c)
write_dsbus_32bit(0x0d0d2000, 0x06804c10)
write_dsbus_32bit(0x090f0f0d, 0x06804c14)
write_dsbus_32bit(0x0d0d0e00, 0x06804c18)
write_dsbus_32bit(0x090f0f0f, 0x06804c1c)
write_dsbus_32bit(0x0d0d2000, 0x06804c20)
write_dsbus_32bit(0x0f090f0d, 0x06804c24)
write_dsbus_32bit(0x0d0e1d00, 0x06804c28)
write_dsbus_32bit(0x0e090f0f, 0x06804c2c)
write_dsbus_32bit(0x0e1d1d00, 0x06804c30)
write_dsbus_32bit(0x200f0f0f, 0x06804c34)
write_dsbus_32bit(0x1d1f2000, 0x06804c38)
write_dsbus_32bit(0x0d0e0f0f, 0x06804c3c)
write_dsbus_32bit(0x0f200d09, 0x06804c40)
write_dsbus_32bit(0x02020202, 0x06804c44)
write_dsbus_32bit(0x0f0e0d0a, 0x06804c48)
write_dsbus_32bit(0x0201010a, 0x06804c4c)
write_dsbus_32bit(0x090f090a, 0x06804c50)
write_dsbus_32bit(0x020a010a, 0x06804c54)
write_dsbus_32bit(0x0d210d0f, 0x06804c58)
write_dsbus_32bit(0x0502010a, 0x06804c5c)
write_dsbus_32bit(0x1f1f231d, 0x06804c60)
write_dsbus_32bit(0x0a0a0a20, 0x06804c64)
write_dsbus_32bit(0x20201d23, 0x06804c68)
write_dsbus_32bit(0x1f20161d, 0x06804c6c)
write_dsbus_32bit(0x1f201d1d, 0x06804c70)
write_dsbus_32bit(0x201f1d1d, 0x06804c74)
write_dsbus_32bit(0x1f1f0e0e, 0x06804c78)
write_dsbus_32bit(0x211d1f1f, 0x06804c7c)
write_dsbus_32bit(0x1b111102, 0x06804c80)
write_dsbus_32bit(0x1311241b, 0x06804c84)
write_dsbus_32bit(0x11112112, 0x06804c88)
write_dsbus_32bit(0x1b1b1110, 0x06804c8c)
write_dsbus_32bit(0x1a111b02, 0x06804c90)
write_dsbus_32bit(0x141b1116, 0x06804c94)
write_dsbus_32bit(0x10111103, 0x06804c98)
write_dsbus_32bit(0x13150b13, 0x06804c9c)
write_dsbus_32bit(0x15101a11, 0x06804ca0)
write_dsbus_32bit(0x04040404, 0x06804ca4)
write_dsbus_32bit(0x1b1a1a1f, 0x06804ca8)
write_dsbus_32bit(0x06040415, 0x06804cac)
write_dsbus_32bit(0x101a1a1a, 0x06804cb0)
write_dsbus_32bit(0x04040413, 0x06804cb4)
write_dsbus_32bit(0x1b112111, 0x06804cb8)
write_dsbus_32bit(0x24241b1b, 0x06804cbc)
write_dsbus_32bit(0x14141b14, 0x06804cc0)
write_dsbus_32bit(0x190c0c13, 0x06804cc4)
write_dsbus_32bit(0x08131414, 0x06804cc8)
write_dsbus_32bit(0x18180c08, 0x06804ccc)
write_dsbus_32bit(0x08142414, 0x06804cd0)
write_dsbus_32bit(0x180c0b0c, 0x06804cd4)
write_dsbus_32bit(0x08131713, 0x06804cd8)
write_dsbus_32bit(0x0c0b070b, 0x06804cdc)
write_dsbus_32bit(0x17131315, 0x06804ce0)
write_dsbus_32bit(0x0b06070b, 0x06804ce4)
write_dsbus_32bit(0x15241404, 0x06804ce8)
write_dsbus_32bit(0x080c0406, 0x06804cec)
write_dsbus_32bit(0x13141b0b, 0x06804cf0)
write_dsbus_32bit(0x0814130c, 0x06804cf4)
write_dsbus_32bit(0x1414241b, 0x06804cf8)
write_dsbus_32bit(0x13081314, 0x06804cfc)
write_dsbus_32bit(0x1919190c, 0x06804d00)
write_dsbus_32bit(0x25071e19, 0x06804d04)
write_dsbus_32bit(0x190c1818, 0x06804d08)
write_dsbus_32bit(0x22221e19, 0x06804d0c)
write_dsbus_32bit(0x19191813, 0x06804d10)
write_dsbus_32bit(0x22221c19, 0x06804d14)
write_dsbus_32bit(0x0c190c0c, 0x06804d18)
write_dsbus_32bit(0x07220719, 0x06804d1c)
write_dsbus_32bit(0x0b18180c, 0x06804d20)
write_dsbus_32bit(0x07070706, 0x06804d24)
write_dsbus_32bit(0x07190c18, 0x06804d28)
write_dsbus_32bit(0x07070707, 0x06804d2c)
write_dsbus_32bit(0x1e181813, 0x06804d30)
write_dsbus_32bit(0x07070707, 0x06804d34)
write_dsbus_32bit(0x180c1813, 0x06804d38)
write_dsbus_32bit(0x07070618, 0x06804d3c)
write_dsbus_32bit(0x25222222, 0x06804d40)
write_dsbus_32bit(0x22252525, 0x06804d44)
write_dsbus_32bit(0x22072222, 0x06804d48)
write_dsbus_32bit(0x07222222, 0x06804d4c)
write_dsbus_32bit(0x22072222, 0x06804d50)
write_dsbus_32bit(0x1e071e1c, 0x06804d54)
write_dsbus_32bit(0x1c070707, 0x06804d58)
write_dsbus_32bit(0x1e071c1e, 0x06804d5c)
write_dsbus_32bit(0x07070707, 0x06804d60)
write_dsbus_32bit(0x07070707, 0x06804d64)
write_dsbus_32bit(0x07070707, 0x06804d68)
write_dsbus_32bit(0x071e061e, 0x06804d6c)
write_dsbus_32bit(0x07070707, 0x06804d70)
write_dsbus_32bit(0x1c1e0b1e, 0x06804d74)
write_dsbus_32bit(0x07070707, 0x06804d78)
write_dsbus_32bit(0x1c1e0707, 0x06804d7c)
write_dsbus_32bit(0x07071c07, 0x06804d80)
write_dsbus_32bit(0x06061c07, 0x06804d84)
write_dsbus_32bit(0x071e1e07, 0x06804d88)
write_dsbus_32bit(0x06061c1c, 0x06804d8c)
write_dsbus_32bit(0x0719191e, 0x06804d90)
write_dsbus_32bit(0x06061c06, 0x06804d94)
write_dsbus_32bit(0x1e1e0619, 0x06804d98)
write_dsbus_32bit(0x1c1c060b, 0x06804d9c)
write_dsbus_32bit(0x180c0707, 0x06804da0)
write_dsbus_32bit(0x06071c19, 0x06804da4)
write_dsbus_32bit(0x18181e22, 0x06804da8)
write_dsbus_32bit(0x06061c0c, 0x06804dac)
write_dsbus_32bit(0x18190707, 0x06804db0)
write_dsbus_32bit(0x0606060c, 0x06804db4)
write_dsbus_32bit(0x06060707, 0x06804db8)
write_dsbus_32bit(0x06060604, 0x06804dbc)
write_dsbus_32bit(0x0b06060b, 0x06804dc0)
write_dsbus_32bit(0x00001717, 0x06804dc4)
write_dsbus_32bit(0x0b0c0b0c, 0x06804dc8)
write_dsbus_32bit(0x00000403, 0x06804dcc)
write_dsbus_32bit(0x1914180b, 0x06804dd0)
write_dsbus_32bit(0x00130b04, 0x06804dd4)
write_dsbus_32bit(0x15170606, 0x06804dd8)
write_dsbus_32bit(0x00130c0c, 0x06804ddc)
write_dsbus_32bit(0x0b0b0606, 0x06804de0)
write_dsbus_32bit(0x00131b14, 0x06804de4)
write_dsbus_32bit(0x06060606, 0x06804de8)
write_dsbus_32bit(0x00041413, 0x06804dec)
write_dsbus_32bit(0x030b0606, 0x06804df0)
write_dsbus_32bit(0x000b1413, 0x06804df4)
write_dsbus_32bit(0x24241706, 0x06804df8)
write_dsbus_32bit(0x000b1414, 0x06804dfc)
write_dsbus_32bit(0x00000000, 0x06804e00)
write_dsbus_32bit(0x20200e00, 0x06805000)
write_dsbus_32bit(0x0f0d090f, 0x06805004)
write_dsbus_32bit(0x0e1d2000, 0x06805008)
write_dsbus_32bit(0x2021210f, 0x0680500c)
write_dsbus_32bit(0x0d201d00, 0x06805010)
write_dsbus_32bit(0x1f0f0f0f, 0x06805014)
write_dsbus_32bit(0x0d0e2000, 0x06805018)
write_dsbus_32bit(0x0f090d0d, 0x0680501c)
write_dsbus_32bit(0x0d0d0e00, 0x06805020)
write_dsbus_32bit(0x090f0d0d, 0x06805024)
write_dsbus_32bit(0x0d0d0e00, 0x06805028)
write_dsbus_32bit(0x0f090f0f, 0x0680502c)
write_dsbus_32bit(0x0f0e0000, 0x06805030)
write_dsbus_32bit(0x1f0f0f0f, 0x06805034)
write_dsbus_32bit(0x20230000, 0x06805038)
write_dsbus_32bit(0x230e0f0f, 0x0680503c)
write_dsbus_32bit(0x1d0e0909, 0x06805040)
write_dsbus_32bit(0x11211f1d, 0x06805044)
write_dsbus_32bit(0x0d09090d, 0x06805048)
write_dsbus_32bit(0x090d200d, 0x0680504c)
write_dsbus_32bit(0x0a0a0d1f, 0x06805050)
write_dsbus_32bit(0x020a090a, 0x06805054)
write_dsbus_32bit(0x0a09201f, 0x06805058)
write_dsbus_32bit(0x0201010a, 0x0680505c)
write_dsbus_32bit(0x09090d0e, 0x06805060)
write_dsbus_32bit(0x01020a0f, 0x06805064)
write_dsbus_32bit(0x0909090d, 0x06805068)
write_dsbus_32bit(0x020a0d0f, 0x0680506c)
write_dsbus_32bit(0x0a090f1d, 0x06805070)
write_dsbus_32bit(0x09200e0a, 0x06805074)
write_dsbus_32bit(0x090f0920, 0x06805078)
write_dsbus_32bit(0x161f210f, 0x0680507c)
write_dsbus_32bit(0x1b1b1a1a, 0x06805080)
write_dsbus_32bit(0x1b111010, 0x06805084)
write_dsbus_32bit(0x05151201, 0x06805088)
write_dsbus_32bit(0x17030117, 0x0680508c)
write_dsbus_32bit(0x05030502, 0x06805090)
write_dsbus_32bit(0x04041701, 0x06805094)
write_dsbus_32bit(0x02010502, 0x06805098)
write_dsbus_32bit(0x04041717, 0x0680509c)
write_dsbus_32bit(0x05010101, 0x068050a0)
write_dsbus_32bit(0x03151112, 0x068050a4)
write_dsbus_32bit(0x02010102, 0x068050a8)
write_dsbus_32bit(0x151b1112, 0x068050ac)
write_dsbus_32bit(0x17120a0a, 0x068050b0)
write_dsbus_32bit(0x1b161202, 0x068050b4)
write_dsbus_32bit(0x11111a1f, 0x068050b8)
write_dsbus_32bit(0x12161112, 0x068050bc)
write_dsbus_32bit(0x1314141b, 0x068050c0)
write_dsbus_32bit(0x08131313, 0x068050c4)
write_dsbus_32bit(0x1314141b, 0x068050c8)
write_dsbus_32bit(0x13140813, 0x068050cc)
write_dsbus_32bit(0x24241013, 0x068050d0)
write_dsbus_32bit(0x17241b1b, 0x068050d4)
write_dsbus_32bit(0x13131504, 0x068050d8)
write_dsbus_32bit(0x17241414, 0x068050dc)
write_dsbus_32bit(0x13130404, 0x068050e0)
write_dsbus_32bit(0x04132413, 0x068050e4)
write_dsbus_32bit(0x04040404, 0x068050e8)
write_dsbus_32bit(0x04031703, 0x068050ec)
write_dsbus_32bit(0x04060404, 0x068050f0)
write_dsbus_32bit(0x04040404, 0x068050f4)
write_dsbus_32bit(0x04040604, 0x068050f8)
write_dsbus_32bit(0x03030b04, 0x068050fc)
write_dsbus_32bit(0x0b060c08, 0x06805100)
write_dsbus_32bit(0x07070b0b, 0x06805104)
write_dsbus_32bit(0x0604060b, 0x06805108)
write_dsbus_32bit(0x0604060c, 0x0680510c)
write_dsbus_32bit(0x0b040606, 0x06805110)
write_dsbus_32bit(0x0b0b0617, 0x06805114)
write_dsbus_32bit(0x0b040606, 0x06805118)
write_dsbus_32bit(0x0b040404, 0x0680511c)
write_dsbus_32bit(0x0b0b0406, 0x06805120)
write_dsbus_32bit(0x0b0b190b, 0x06805124)
write_dsbus_32bit(0x15030304, 0x06805128)
write_dsbus_32bit(0x0b15130b, 0x0680512c)
write_dsbus_32bit(0x03030304, 0x06805130)
write_dsbus_32bit(0x1b0b0b0b, 0x06805134)
write_dsbus_32bit(0x03030b0b, 0x06805138)
write_dsbus_32bit(0x240b0b03, 0x0680513c)
write_dsbus_32bit(0x071c061c, 0x06805140)
write_dsbus_32bit(0x06060707, 0x06805144)
write_dsbus_32bit(0x06060606, 0x06805148)
write_dsbus_32bit(0x06060606, 0x0680514c)
write_dsbus_32bit(0x0606040b, 0x06805150)
write_dsbus_32bit(0x0c0b0404, 0x06805154)
write_dsbus_32bit(0x06060b0c, 0x06805158)
write_dsbus_32bit(0x170c0406, 0x0680515c)
write_dsbus_32bit(0x06040b03, 0x06805160)
write_dsbus_32bit(0x0404040b, 0x06805164)
write_dsbus_32bit(0x0b041513, 0x06805168)
write_dsbus_32bit(0x040b150b, 0x0680516c)
write_dsbus_32bit(0x0b040b1b, 0x06805170)
write_dsbus_32bit(0x15151503, 0x06805174)
write_dsbus_32bit(0x030b0414, 0x06805178)
write_dsbus_32bit(0x03170303, 0x0680517c)
write_dsbus_32bit(0x0606071c, 0x06805180)
write_dsbus_32bit(0x0b0b0b0b, 0x06805184)
write_dsbus_32bit(0x0604040b, 0x06805188)
write_dsbus_32bit(0x04030b0b, 0x0680518c)
write_dsbus_32bit(0x0b040b15, 0x06805190)
write_dsbus_32bit(0x1504040b, 0x06805194)
write_dsbus_32bit(0x0b150b0b, 0x06805198)
write_dsbus_32bit(0x0b040603, 0x0680519c)
write_dsbus_32bit(0x0b17150b, 0x068051a0)
write_dsbus_32bit(0x04040b04, 0x068051a4)
write_dsbus_32bit(0x0b150b03, 0x068051a8)
write_dsbus_32bit(0x04151503, 0x068051ac)
write_dsbus_32bit(0x15040404, 0x068051b0)
write_dsbus_32bit(0x04030303, 0x068051b4)
write_dsbus_32bit(0x15040404, 0x068051b8)
write_dsbus_32bit(0x03121215, 0x068051bc)
write_dsbus_32bit(0x13241413, 0x068051c0)
write_dsbus_32bit(0x00051b1b, 0x068051c4)
write_dsbus_32bit(0x04131b17, 0x068051c8)
write_dsbus_32bit(0x00151503, 0x068051cc)
write_dsbus_32bit(0x040b1b17, 0x068051d0)
write_dsbus_32bit(0x00171704, 0x068051d4)
write_dsbus_32bit(0x13150b17, 0x068051d8)
write_dsbus_32bit(0x00010117, 0x068051dc)
write_dsbus_32bit(0x10111504, 0x068051e0)
write_dsbus_32bit(0x00010512, 0x068051e4)
write_dsbus_32bit(0x10111504, 0x068051e8)
write_dsbus_32bit(0x0001051b, 0x068051ec)
write_dsbus_32bit(0x11130504, 0x068051f0)
write_dsbus_32bit(0x00000312, 0x068051f4)
write_dsbus_32bit(0x13111703, 0x068051f8)
write_dsbus_32bit(0x00000104, 0x068051fc)
write_dsbus_32bit(0x1d280000, 0x06805400)
write_dsbus_32bit(0x1d231d1d, 0x06805404)
write_dsbus_32bit(0x23280000, 0x06805408)
write_dsbus_32bit(0x0e231d1d, 0x0680540c)
write_dsbus_32bit(0x20000000, 0x06805410)
write_dsbus_32bit(0x0f1d1d0e, 0x06805414)
write_dsbus_32bit(0x20000000, 0x06805418)
write_dsbus_32bit(0x090d0d0e, 0x0680541c)
write_dsbus_32bit(0x0e000000, 0x06805420)
write_dsbus_32bit(0x090f0e0d, 0x06805424)
write_dsbus_32bit(0x0f0d200e, 0x0680542c)
write_dsbus_32bit(0x0e0d0d0e, 0x06805434)
write_dsbus_32bit(0x23200e00, 0x0680543c)
write_dsbus_32bit(0x200f0a0f, 0x06805440)
write_dsbus_32bit(0x0d201d1d, 0x06805444)
write_dsbus_32bit(0x0d0a0909, 0x06805448)
write_dsbus_32bit(0x011f1f20, 0x0680544c)
write_dsbus_32bit(0x0a21200a, 0x06805450)
write_dsbus_32bit(0x0f0d0d0f, 0x06805454)
write_dsbus_32bit(0x0a1f0e09, 0x06805458)
write_dsbus_32bit(0x0f210f01, 0x0680545c)
write_dsbus_32bit(0x0a0a0e0d, 0x06805460)
write_dsbus_32bit(0x2020090a, 0x06805464)
write_dsbus_32bit(0x1d0d0d0d, 0x06805468)
write_dsbus_32bit(0x211d200e, 0x0680546c)
write_dsbus_32bit(0x231d1d1d, 0x06805470)
write_dsbus_32bit(0x0a1d231d, 0x06805474)
write_dsbus_32bit(0x23282323, 0x06805478)
write_dsbus_32bit(0x011f1f0f, 0x0680547c)
write_dsbus_32bit(0x1a1a1209, 0x06805480)
write_dsbus_32bit(0x03131111, 0x06805484)
write_dsbus_32bit(0x16120305, 0x06805488)
write_dsbus_32bit(0x121b101a, 0x0680548c)
write_dsbus_32bit(0x21111209, 0x06805490)
write_dsbus_32bit(0x12161111, 0x06805494)
write_dsbus_32bit(0x1221090a, 0x06805498)
write_dsbus_32bit(0x1b160911, 0x0680549c)
write_dsbus_32bit(0x0101120f, 0x068054a0)
write_dsbus_32bit(0x11161a01, 0x068054a4)
write_dsbus_32bit(0x0212090a, 0x068054a8)
write_dsbus_32bit(0x121a1101, 0x068054ac)
write_dsbus_32bit(0x1e180102, 0x068054b0)
write_dsbus_32bit(0x120a1212, 0x068054b4)
write_dsbus_32bit(0x14150202, 0x068054b8)
write_dsbus_32bit(0x12091b16, 0x068054bc)
write_dsbus_32bit(0x03050303, 0x068054c0)
write_dsbus_32bit(0x03031703, 0x068054c4)
write_dsbus_32bit(0x0403171b, 0x068054c8)
write_dsbus_32bit(0x15151504, 0x068054cc)
write_dsbus_32bit(0x04030505, 0x068054d0)
write_dsbus_32bit(0x17150304, 0x068054d4)
write_dsbus_32bit(0x04030505, 0x068054d8)
write_dsbus_32bit(0x03030304, 0x068054dc)
write_dsbus_32bit(0x03030502, 0x068054e0)
write_dsbus_32bit(0x02020404, 0x068054e4)
write_dsbus_32bit(0x03051201, 0x068054e8)
write_dsbus_32bit(0x17050403, 0x068054ec)
write_dsbus_32bit(0x03051201, 0x068054f0)
write_dsbus_32bit(0x05050303, 0x068054f4)
write_dsbus_32bit(0x05021212, 0x068054f8)
write_dsbus_32bit(0x02050305, 0x068054fc)
write_dsbus_32bit(0x15031515, 0x06805500)
write_dsbus_32bit(0x17171515, 0x06805504)
write_dsbus_32bit(0x03151b1b, 0x06805508)
write_dsbus_32bit(0x04040b15, 0x0680550c)
write_dsbus_32bit(0x12101b17, 0x06805510)
write_dsbus_32bit(0x04040315, 0x06805514)
write_dsbus_32bit(0x1b130504, 0x06805518)
write_dsbus_32bit(0x03040312, 0x0680551c)
write_dsbus_32bit(0x03040101, 0x06805520)
write_dsbus_32bit(0x03030305, 0x06805524)
write_dsbus_32bit(0x0305171b, 0x06805528)
write_dsbus_32bit(0x05030303, 0x0680552c)
write_dsbus_32bit(0x03050502, 0x06805530)
write_dsbus_32bit(0x05030303, 0x06805534)
write_dsbus_32bit(0x03051212, 0x06805538)
write_dsbus_32bit(0x01050303, 0x0680553c)
write_dsbus_32bit(0x15050415, 0x06805540)
write_dsbus_32bit(0x04150517, 0x06805544)
write_dsbus_32bit(0x15151504, 0x06805548)
write_dsbus_32bit(0x04151512, 0x0680554c)
write_dsbus_32bit(0x01050304, 0x06805550)
write_dsbus_32bit(0x04041513, 0x06805554)
write_dsbus_32bit(0x05150303, 0x06805558)
write_dsbus_32bit(0x04040305, 0x0680555c)
write_dsbus_32bit(0x05050503, 0x06805560)
write_dsbus_32bit(0x03040217, 0x06805564)
write_dsbus_32bit(0x05050502, 0x06805568)
write_dsbus_32bit(0x03030117, 0x0680556c)
write_dsbus_32bit(0x03011b02, 0x06805570)
write_dsbus_32bit(0x05030303, 0x06805574)
write_dsbus_32bit(0x03051112, 0x06805578)
write_dsbus_32bit(0x01050503, 0x0680557c)
write_dsbus_32bit(0x03040404, 0x06805580)
write_dsbus_32bit(0x17101715, 0x06805584)
write_dsbus_32bit(0x03040404, 0x06805588)
write_dsbus_32bit(0x121b1205, 0x0680558c)
write_dsbus_32bit(0x05030304, 0x06805590)
write_dsbus_32bit(0x12020215, 0x06805594)
write_dsbus_32bit(0x05040403, 0x06805598)
write_dsbus_32bit(0x01121705, 0x0680559c)
write_dsbus_32bit(0x05030303, 0x068055a0)
write_dsbus_32bit(0x01010205, 0x068055a4)
write_dsbus_32bit(0x01050505, 0x068055a8)
write_dsbus_32bit(0x1b05111a, 0x068055ac)
write_dsbus_32bit(0x1b030505, 0x068055b0)
write_dsbus_32bit(0x12011111, 0x068055b4)
write_dsbus_32bit(0x01121212, 0x068055b8)
write_dsbus_32bit(0x01111205, 0x068055bc)
write_dsbus_32bit(0x031b1203, 0x068055c0)
write_dsbus_32bit(0x00001205, 0x068055c4)
write_dsbus_32bit(0x05111705, 0x068055c8)
write_dsbus_32bit(0x00002111, 0x068055cc)
write_dsbus_32bit(0x1b1b0205, 0x068055d0)
write_dsbus_32bit(0x00000016, 0x068055d4)
write_dsbus_32bit(0x11010502, 0x068055d8)
write_dsbus_32bit(0x00000016, 0x068055dc)
write_dsbus_32bit(0x02011212, 0x068055e0)
write_dsbus_32bit(0x00000012, 0x068055e4)
write_dsbus_32bit(0x2912011b, 0x068055e8)
write_dsbus_32bit(0x12120111, 0x068055f0)
write_dsbus_32bit(0x00091112, 0x068055f8)
write_dsbus_32bit(0x23281d00, 0x06805804)
write_dsbus_32bit(0x23280000, 0x0680580c)
write_dsbus_32bit(0x23000000, 0x06805814)
write_dsbus_32bit(0x23000000, 0x0680581c)
write_dsbus_32bit(0x1f231d23, 0x06805840)
write_dsbus_32bit(0x091d0f0e, 0x06805844)
write_dsbus_32bit(0x1f1d1d1d, 0x06805848)
write_dsbus_32bit(0x201d201f, 0x0680584c)
write_dsbus_32bit(0x1d1d1d23, 0x06805850)
write_dsbus_32bit(0x20231d1d, 0x06805854)
write_dsbus_32bit(0x1d1d2323, 0x06805858)
write_dsbus_32bit(0x0e201f23, 0x0680585c)
write_dsbus_32bit(0x1f1d201d, 0x06805860)
write_dsbus_32bit(0x200f1d23, 0x06805864)
write_dsbus_32bit(0x1f1f2300, 0x06805868)
write_dsbus_32bit(0x1d0d1623, 0x0680586c)
write_dsbus_32bit(0x1f230000, 0x06805870)
write_dsbus_32bit(0x1d1d1f23, 0x06805874)
write_dsbus_32bit(0x1d000000, 0x06805878)
write_dsbus_32bit(0x1f1d1f1d, 0x0680587c)
write_dsbus_32bit(0x1f160a02, 0x06805880)
write_dsbus_32bit(0x1a16211d, 0x06805884)
write_dsbus_32bit(0x1f200e0a, 0x06805888)
write_dsbus_32bit(0x1f23231f, 0x0680588c)
write_dsbus_32bit(0x1d0e0e0e, 0x06805890)
write_dsbus_32bit(0x1d1d1d1d, 0x06805894)
write_dsbus_32bit(0x1d1f1d1d, 0x06805898)
write_dsbus_32bit(0x1f1f1d1d, 0x0680589c)
write_dsbus_32bit(0x1d201d1d, 0x068058a0)
write_dsbus_32bit(0x0d0f201f, 0x068058a4)
write_dsbus_32bit(0x201d1d1d, 0x068058a8)
write_dsbus_32bit(0x2902201d, 0x068058ac)
write_dsbus_32bit(0x1d0e2323, 0x068058b0)
write_dsbus_32bit(0x090a0d23, 0x068058b4)
write_dsbus_32bit(0x231d1d1f, 0x068058b8)
write_dsbus_32bit(0x0f0a0a1d, 0x068058bc)
write_dsbus_32bit(0x031b1611, 0x068058c0)
write_dsbus_32bit(0x05020503, 0x068058c4)
write_dsbus_32bit(0x0112161f, 0x068058c8)
write_dsbus_32bit(0x05052902, 0x068058cc)
write_dsbus_32bit(0x12291a1f, 0x068058d0)
write_dsbus_32bit(0x09010212, 0x068058d4)
write_dsbus_32bit(0x09291220, 0x068058d8)
write_dsbus_32bit(0x1f0d0a12, 0x068058dc)
write_dsbus_32bit(0x09290512, 0x068058e0)
write_dsbus_32bit(0x0d1f110a, 0x068058e4)
write_dsbus_32bit(0x29292929, 0x068058e8)
write_dsbus_32bit(0x29090a01, 0x068058ec)
write_dsbus_32bit(0x29120a0a, 0x068058f0)
write_dsbus_32bit(0x01292929, 0x068058f4)
write_dsbus_32bit(0x2929090f, 0x068058f8)
write_dsbus_32bit(0x01091229, 0x068058fc)
write_dsbus_32bit(0x05111f12, 0x06805900)
write_dsbus_32bit(0x12011205, 0x06805904)
write_dsbus_32bit(0x111f1105, 0x06805908)
write_dsbus_32bit(0x11011201, 0x0680590c)
write_dsbus_32bit(0x1f1f1a09, 0x06805910)
write_dsbus_32bit(0x0a120511, 0x06805914)
write_dsbus_32bit(0x16211f1f, 0x06805918)
write_dsbus_32bit(0x01122911, 0x0680591c)
write_dsbus_32bit(0x09090a11, 0x06805920)
write_dsbus_32bit(0x0a290202, 0x06805924)
write_dsbus_32bit(0x29292929, 0x06805928)
write_dsbus_32bit(0x1f12091b, 0x0680592c)
write_dsbus_32bit(0x0d120229, 0x06805930)
write_dsbus_32bit(0x0d090916, 0x06805934)
write_dsbus_32bit(0x1d0d0a29, 0x06805938)
write_dsbus_32bit(0x120a0d1f, 0x0680593c)
write_dsbus_32bit(0x05030212, 0x06805940)
write_dsbus_32bit(0x01020205, 0x06805944)
write_dsbus_32bit(0x05030212, 0x06805948)
write_dsbus_32bit(0x05020205, 0x0680594c)
write_dsbus_32bit(0x03050501, 0x06805950)
write_dsbus_32bit(0x03291b12, 0x06805954)
write_dsbus_32bit(0x02050505, 0x06805958)
write_dsbus_32bit(0x03011111, 0x0680595c)
write_dsbus_32bit(0x05050501, 0x06805960)
write_dsbus_32bit(0x29122929, 0x06805964)
write_dsbus_32bit(0x05022921, 0x06805968)
write_dsbus_32bit(0x01120105, 0x0680596c)
write_dsbus_32bit(0x02022909, 0x06805970)
write_dsbus_32bit(0x09090205, 0x06805974)
write_dsbus_32bit(0x02020229, 0x06805978)
write_dsbus_32bit(0x09120205, 0x0680597c)
write_dsbus_32bit(0x01091f21, 0x06805980)
write_dsbus_32bit(0x161f0d09, 0x06805984)
write_dsbus_32bit(0x12161601, 0x06805988)
write_dsbus_32bit(0x1f16111b, 0x0680598c)
write_dsbus_32bit(0x12110504, 0x06805990)
write_dsbus_32bit(0x21160d01, 0x06805994)
write_dsbus_32bit(0x29010102, 0x06805998)
write_dsbus_32bit(0x12160f01, 0x0680599c)
write_dsbus_32bit(0x01020201, 0x068059a0)
write_dsbus_32bit(0x021b1202, 0x068059a4)
write_dsbus_32bit(0x12021229, 0x068059a8)
write_dsbus_32bit(0x0005020a, 0x068059ac)
write_dsbus_32bit(0x12121201, 0x068059b0)
write_dsbus_32bit(0x00002912, 0x068059b4)
write_dsbus_32bit(0x2909110a, 0x068059b8)
write_dsbus_32bit(0x00000029, 0x068059bc)
write_dsbus_32bit(0x00201101, 0x068059c0)
write_dsbus_32bit(0x00002912, 0x068059c8)
write_dsbus_32bit(0x00000001, 0x068059d0)
write_dsbus_32bit(0x00000029, 0x068059d8)
write_dsbus_32bit(0x200d2123, 0x06805c44)
write_dsbus_32bit(0x0d0f0000, 0x06805c4c)
write_dsbus_32bit(0x0d000000, 0x06805c54)
write_dsbus_32bit(0x1d231d1d, 0x06805c80)
write_dsbus_32bit(0x0d0d0f1f, 0x06805c84)
write_dsbus_32bit(0x20201f20, 0x06805c88)
write_dsbus_32bit(0x1d1f0a0d, 0x06805c8c)
write_dsbus_32bit(0x0909090d, 0x06805c90)
write_dsbus_32bit(0x0e090a0a, 0x06805c94)
write_dsbus_32bit(0x20200d00, 0x06805c98)
write_dsbus_32bit(0x0a0a0a0e, 0x06805c9c)
write_dsbus_32bit(0x23000000, 0x06805ca0)
write_dsbus_32bit(0x0a091d23, 0x06805ca4)
write_dsbus_32bit(0x09090000, 0x06805cac)
write_dsbus_32bit(0x090a090d, 0x06805cc0)
write_dsbus_32bit(0x12090d0d, 0x06805cc4)
write_dsbus_32bit(0x0e0e200f, 0x06805cc8)
write_dsbus_32bit(0x01010e20, 0x06805ccc)
write_dsbus_32bit(0x290d1d0d, 0x06805cd0)
write_dsbus_32bit(0x0d110d0a, 0x06805cd4)
write_dsbus_32bit(0x010e231d, 0x06805cd8)
write_dsbus_32bit(0x230d0502, 0x06805cdc)
write_dsbus_32bit(0x1d1d200e, 0x06805ce0)
write_dsbus_32bit(0x23210a0e, 0x06805ce4)
write_dsbus_32bit(0x200e090a, 0x06805ce8)
write_dsbus_32bit(0x1d231f1d, 0x06805cec)
write_dsbus_32bit(0x090a0000, 0x06805cf0)
write_dsbus_32bit(0x1d1f2020, 0x06805cf4)
write_dsbus_32bit(0x1f1d0d29, 0x06805d00)
write_dsbus_32bit(0x200d201d, 0x06805d04)
write_dsbus_32bit(0x211f2112, 0x06805d08)
write_dsbus_32bit(0x20112120, 0x06805d0c)
write_dsbus_32bit(0x1621201f, 0x06805d10)
write_dsbus_32bit(0x09161d0d, 0x06805d14)
write_dsbus_32bit(0x1d21201f, 0x06805d18)
write_dsbus_32bit(0x1d1d1d23, 0x06805d1c)
write_dsbus_32bit(0x0d202121, 0x06805d20)
write_dsbus_32bit(0x201f210d, 0x06805d24)
write_dsbus_32bit(0x0f0d200d, 0x06805d28)
write_dsbus_32bit(0x1f1d200f, 0x06805d2c)
write_dsbus_32bit(0x0d201d1d, 0x06805d30)
write_dsbus_32bit(0x00001d1d, 0x06805d34)
write_dsbus_32bit(0x2912090f, 0x06805d40)
write_dsbus_32bit(0x0a292929, 0x06805d44)
write_dsbus_32bit(0x121d2021, 0x06805d48)
write_dsbus_32bit(0x090a0912, 0x06805d4c)
write_dsbus_32bit(0x091d210a, 0x06805d50)
write_dsbus_32bit(0x09091112, 0x06805d54)
write_dsbus_32bit(0x0f1d1111, 0x06805d58)
write_dsbus_32bit(0x00090a0f, 0x06805d5c)
write_dsbus_32bit(0x091d1d1d, 0x06805d60)
write_dsbus_32bit(0x00000009, 0x06805d64)
write_dsbus_32bit(0x00001d1d, 0x06805d68)
write_dsbus_32bit(0x0912120a, 0x06805d80)
write_dsbus_32bit(0x00001201, 0x06805d88)
write_dsbus_32bit(0x0000000a, 0x06805d90)

-- register
write_dsbus_32bit(0x00010100, 0x04000000) -- A_DISPCNT
write_dsbus_32bit(0x00000084, 0x04000008) -- A_BG0CNT
write_dsbus_32bit(0x00000081, 0x04000240) -- MemControl1
write_dsbus_32bit(0x03000000, 0x04000244) -- MemControl2
write_dsbus_32bit(0x00000000, 0x04000248) -- MemControl3

reg_set(1, ds.Reg_DS_freerunclock)

brk()