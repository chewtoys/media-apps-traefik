## Preferred

This taken from [Trash-Guides](https://trash-guides.info/Sonarr/V3/Sonarr-Release-Profile-RegEx/)

[100] /(amzn|amazon).?web.?dl/i
[100] /(atvp).?web.?dl/i
[100] /(hmax).?web.?dl/i
[90] /(dsnp|dsny|disney).?web.?dl/i
[90] /(nf|netflix).?web.?dl/i
[90] /(qibi).?web.?dl/i
[85] /(hulu).?web.?dl/i
[75] /(dcu).?web.?dl/i
[75] /(hbo).?web.?dl/i
[75] /(red).?web.?dl/i
[75] /(it).?web.?dl/i
[80] /(-deflate|-inflate)/i
[50] /(-AJP69|-BTN|-CasStudio|-CtrlHD|-KiNGS)/i
[50] /(-monkee|-NTb|-NTG|-QOQ|-RTN)/i
[50] /(-TOMMY|-ViSUM|-T6D)/i
[25] /(-BTW|-Chotab|-CiT|-DEEP|-iJP|-iT00NZ)/i
[25] /(-LAZY|-NYH|-SA89|-SIGMA|-TEPES|-TVSmash)/i
[25] /(-SDCC|-iKA|-iJP|-Cinefeel|-SPiRiT|-FC)/i
[25] /(-JETIX|-Coo7|-WELP|-KiMCHI|-BLUTONiUM)/i
[25] /(-orbitron|-ETHiCS|-RTFM|-PSiG|-MZABI)/i
[12] /(repack3)/i
[11] /(repack2)/i
[10] /(repack|proper)/i
[-100] /(TBS|-BRiNK|-CHX|-XLF|-worldmkv|-GHOSTS)/i
[-100] /(-VIDEOHOLE)/i

> Optional (use these only if you dislike renamed and re-tagged releases)

[-25] /(\[rartv\]|\[eztv\]|\[TGx\])/i
[-25] /(-4P|-4Planet|-AsRequested|-BUYMORE)/i
[-25] /(-Chamele0n|-GEROV|-iNC0GNiTO|-NZBGeek)/i
[-25] /(-Obfuscated|-postbot|-Rakuv|-Scrambled)/i
[-25] /(-WhiteRev|-xpost)/i

> Optional (matches releases that ends with EN)

[-25] /\s?\ben\b$/i

> Optional Matches any release that contains '1-' as prefix for Release Groups

[-25] /(1-.+)$/i

> Optional Matches Season Packs (use this if you prefer Season packs)
> I don't use this one

[15] /\bS\d+\b(?!E\d+\b)/i

## Must Not Contain

/(x|h)\.?265/i, hevc
