#!/usr/bin/python3

import sys
#import pprint

#pp = pprint.PrettyPrinter(indent=4)


# original Flash level data

#
levelfr = [];
levelfr.append("               "); 
levelfr.append("        bbbb   ");
levelfr.append("        bbbb   ");
levelfr.append("bbb     b  bbbb");
levelfr.append("bbbbbbbbb   beb");
levelfr.append("bbb    bbh  bbb");
levelfr.append("bbb    bbb  bbb");
levelfr.append(" bbl   b       ");
levelfr.append("  bbbbbb       ");
levelfr.append("               ");
levelfr.append([1,4]);
levelfr.append({"swatch95": [[3,7,"onoff"]]});
#
levelsc = [];
levelsc.append("               ");
levelsc.append("       s       ");
levelsc.append("bbsb   b       ");
levelsc.append("bbbbb  b       ");
levelsc.append("bsbbbbbblrbblrb");
levelsc.append("bbbbbl  b   b  ");
levelsc.append("bbsb    b   b  ");
levelsc.append("b       s  bbb ");
levelsc.append("b         bbeb ");
levelsc.append("blrh      bbbb ");
levelsc.append([2,4]);
levelsc.append({"swatch14": [[8,4,"off"],[9,4,"off"]],"swatch71": [[8,4,"on"],[9,4,"on"]],"swatch22": [[12,4,"off"],[13,4,"off"],[1,9,"off"],[2,9,"off"]],"swatch26": [[12,4,"off"],[13,4,"off"],[1,9,"off"],[2,9,"off"]],"swatch39": [[5,5,"onoff"]],"swatch87": [[12,4,"on"],[13,4,"on"],[1,9,"on"],[2,9,"on"]]});
#
leveltw = [];
leveltw.append("bbb            "); 
leveltw.append("bbbbbbbbbl  bbb");
leveltw.append("bbb    rbbbbbeb");
leveltw.append("bbb         hhb");
leveltw.append("bbb            ");
leveltw.append("bbb            ");
leveltw.append("bbb   rbbbbbh  ");
leveltw.append("bbbbbbbbl  bb  ");
leveltw.append("bsb        bb  ");
leveltw.append("bbb        bh  ");
leveltw.append([1,1]);
leveltw.append({"swatch18": [[8,7,"onoff"]],"swatch126": [[7,2,"on"]],"swatch129": [[9,1,"on"],[8,7,"off"]],"swatch123": [[6,6,"off"]],"swatch133": [[6,6,"on"]]});
#
levelsw = [];
levelsw.append("               ");
levelsw.append(" bbbbbhhhbbbbb ");
levelsw.append(" bbbb      beb ");
levelsw.append(" bbbb      bbb ");
levelsw.append(" bbbbbbb    b  ");
levelsw.append(" h    rb    b  ");
levelsw.append(" h    qb   bb  ");
levelsw.append(" h    rb   bb  ");
levelsw.append("      bbbbbb   ");
levelsw.append("               ");
levelsw.append([12,1]);
levelsw.append({"swatch81": [[6,5,"off"],[6,6,"on"]],"swatch71": [[6,7,"on"]],"swatch61": [[6,7,"off"]],"swatch15": [[6,5,"off"]],"swatch16": [[6,5,"on"],[6,7,"off"]],"swatch17": [[6,6,"off"],[6,7,"on"]]});
#
leveldd = [];
leveldd.append("  bb           "); 
leveldd.append("  bbb          ");
leveldd.append("  bbs     bbbl ");
leveldd.append("   bbbbl  bebl ");
leveldd.append("      bblrbbb  ");
leveldd.append(" bb   bb       ");
leveldd.append("bbhbkqbb       ");
leveldd.append("bbk   bb   bbb ");
leveldd.append("bbk   bbsbbbbb ");
leveldd.append("           bbb ");
leveldd.append([1,7]);
leveldd.append({"swatch42": [[13,2,"onoff"],[13,3,"onoff"],[8,4,"onoff"],[9,4,"onoff"]],"swatch88": [[7,3,"on"],[4,6,"off"],[5,6,"off"]],"swatch26": [[8,4,"on"],[9,4,"on"]]});
#
levelmn = [];
levelmn.append("        bb     ");
levelmn.append("       bbb     "); 
levelmn.append("bb  bbbbbb     ");
levelmn.append("bbbbbb  b      ");
levelmn.append("bbbb    b   bbb");
levelmn.append(" bb     hbbbbeb");
levelmn.append("  b     hb  bbb");
levelmn.append("  bbbl  bb     ");
levelmn.append("   bbb  bb     ");
levelmn.append("   rbbbbbb     ");
levelmn.append([1,3]);
levelmn.append({"swatch85": [[3,9,"onoff"]],"swatch86": [[5,7,"onoff"]]});
#
levellh = [];
levellh.append("      bb    bbb");
levellh.append("    bbbbbb  beb");
levellh.append(" bbbbbbsbbbbbbb");
levellh.append(" bbbbs  bbbbbl ");
levellh.append(" bbb      bbb  ");
levellh.append("  b        b   ");
levellh.append("  b        b   ");
levellh.append("  bl      qb   ");
levellh.append("  bb      bb   ");
levellh.append("   h      h    ");
levellh.append([2,3]);
levellh.append({"swatch109": [[3,7,"onoff"]],"swatch39": [[13,3,"onoff"]],"swatch53": [[3,7,"off"],[13,3,"off"]],"swatch72": [[3,7,"off"],[13,3,"off"]]});
#
levelgg = [];
levelgg.append("     bbbbbb    ");
levelgg.append("     b  bbb    ");
levelgg.append("     b  bbbbb  ");
levelgg.append("bbbbbb     bbbb");
levelgg.append("    bbb    bbeb");
levelgg.append("    bbb     bbb");
levelgg.append("      b  bb    ");
levelgg.append("      bbbbb    ");
levelgg.append("      bbbbb    ");
levelgg.append("       bbb     ");
levelgg.append([0,3]);
levelgg.append({});
#
levelss = [];
levelss.append("         bbb   ");
levelss.append("         bbb   ");
levelss.append("         bbb   ");
levelss.append("bbbbbb   bbbbbb");
levelss.append("bbbbvb   bbbbeb");
levelss.append("bbbbbb   bbbbbb");
levelss.append("         bbb   ");
levelss.append("         bbb   ");
levelss.append("         bbb   "); 
levelss.append("               ");
levelss.append([1,4]);
levelss.append({});
levelss.append({"swatch44": [10,1,10,7]});
#
levelre = [];
levelre.append("               ");
levelre.append("               ");
levelre.append("               ");
levelre.append("bbbb   b   bbbb");
levelre.append("bbbb   b   bbvb");
levelre.append("bbbbbbbbbbbbbbb");
levelre.append("      beb      ");
levelre.append("      bbb      ");
levelre.append("               ");
levelre.append("               ");
levelre.append([1,4]);
levelre.append({});
levelre.append({"swatch134": [12,4,2,4]});
#
levelpp = [];
levelpp.append(" bbb     bbbbbb");
levelpp.append(" beblrblrbbbbvb");
levelpp.append(" bbb     bbbbl ");
levelpp.append("          bbbl ");
levelpp.append("            bb ");
levelpp.append("             b ");
levelpp.append("             b ");
levelpp.append("            bb ");
levelpp.append("     bbbbb  bb ");
levelpp.append("     bs  bbbhb ");
levelpp.append([10,1]);
levelpp.append({"swatch129": [[7,1,"onoff"],[8,1,"onoff"],[13,2,"onoff"],[13,3,"onoff"]], "swatch69": [[4,1,"onoff"],[5,1,"onoff"]]});
levelpp.append({"swatch131": [13,1,10,1]});
#
levelez = [];
levelez.append("               "); 
levelez.append("               "); 
levelez.append("  bbb          "); 
levelez.append("  bbbbbb       "); 
levelez.append("  bbbbbbbbb    "); 
levelez.append("   bbbbbbbbb   ");
levelez.append("       bbebb   ");
levelez.append("        bbb    ");
levelez.append("               ");
levelez.append("               "); 
levelez.append([3,3]);
#
levelub = [];
levelub.append("        bbb    "); 
levelub.append("   bbb  bbb    "); 
levelub.append("blrbbbbbbbbbbb "); 
levelub.append("blrbbb      hb "); 
levelub.append("b           bb "); 
levelub.append("b           bb ");
levelub.append("b       bbbbbb ");
levelub.append("bbbbb   bbb    ");
levelub.append(" bbeb   bbb    ");
levelub.append("  bbb   bbbbbh "); 
levelub.append([4,2]);
levelub.append({"swatch123": [[1,2,"onoff"],[2,2,"onoff"]],"swatch139": [[1,3,"onoff"],[2,3,"onoff"]]});
#
levelht = [];
levelht.append("       bbb  bbb");
levelht.append("    bkqbbblrhbb");
levelht.append("bblrb  bbb  bbb");
levelht.append("bbbbb   s      ");
levelht.append("bb             ");
levelht.append(" b     v       ");
levelht.append(" b     b       ");
levelht.append("bbb   bbb  sbb ");
levelht.append("bbbbbbbbbkqbeb ");
levelht.append("bbb   bbb  sbb ");
levelht.append([1,8]);
levelht.append({"swatch121": [[2,2,"onoff"],[3,2,"onoff"],[5,1,"onoff"],[6,1,"onoff"]], "swatch83": [[5,1,"onoff"],[6,1,"onoff"],[10,1,"onoff"],[11,1,"onoff"]], "swatch117": [[9,8,"off"],[10,8,"off"]], "swatch119": [[9,8,"off"],[10,8,"off"]]});
levelht.append({"swatch75": [13,1,1,8]});
#
levelis = [];
levelis.append("               "); 
levelis.append("               ");  
levelis.append(" v        bbb  ");  
levelis.append("vbvlrhhblrbeb  ");  
levelis.append(" v        bbb  "); 
levelis.append("               "); 
levelis.append("               "); 
levelis.append("  bbb   bbb    "); 
levelis.append("  bbbbbbbvb    "); 
levelis.append("  bbb   bbb    ");  
levelis.append([3,8]);
levelis.append({"swatch53": [[3,3,"on"],[4,3,"on"]],"swatch63": [[8,3,"on"],[9,3,"on"]]});
levelis.append({"swatch98": [1,2,0,3], "swatch12": [7,3,5,3], "swatch03": [2,3,1,2], "swatch23": [0,3,2,3], "swatch14": [1,4,0,3]});
#
leveltb = [];
leveltb.append("            bbb"); 
leveltb.append("  bbbkqbbblrbbb");  
leveltb.append("  bbb  sbb  bbb");  
leveltb.append("  bbb  bbb     ");  
leveltb.append("  bsb  vbs     "); 
leveltb.append("  bbb  bbb     "); 
leveltb.append("bbbb   bbblrsbb"); 
leveltb.append("bs          bbb"); 
leveltb.append("            beb"); 
leveltb.append("            bbb");  
leveltb.append([8,2]);
leveltb.append({"swatch72": [[5,1,"off"],[6,1,"off"]],"swatch94": [[5,1,"off"],[6,1,"off"]],"swatch34": [[5,1,"off"],[6,1,"off"]],"swatch126": [[10,6,"onoff"],[11,6,"onoff"]],"swatch17": [[10,1,"onoff"],[11,1,"onoff"]]});
leveltb.append({"swatch74": [13,1,13,7]});
#
levelmp = [];
levelmp.append("  skqb   blrh  "); 
levelmp.append("     b   b     "); 
levelmp.append("     bbbbb     "); 
levelmp.append("hlrbbbbbbbbblrh"); 
levelmp.append("     bbbbb     ");
levelmp.append("     rb  b     ");
levelmp.append("     rb  bkqs  ");
levelmp.append("bbb  bb  b     ");
levelmp.append("beblrb   b     "); 
levelmp.append("bbbl     bkqs  "); 
levelmp.append([7,3]);
levelmp.append({"swatch20": [[10,0,"on"],[11,0,"on"],[10,6,"off"],[11,6,"off"]],"swatch120": [[5,5,"on"],[5,6,"on"]],"swatch03": [[3,8,"on"],[4,8,"on"],[10,9,"off"],[11,9,"off"]],"swatch143": [[3,9,"on"]],"swatch126": [[1,3,"on"],[2,3,"on"]],"swatch129": [[12,3,"on"],[13,3,"on"],[10,6,"off"],[11,6,"off"],[3,0,"off"],[4,0,"off"],[10,0,"off"],[11,0,"off"]]});
#
levelhg = [];
levelhg.append("     bbbb    v "); 
levelhg.append("     bbsbbb  b "); 
levelhg.append("    bbbbbbb  b "); 
levelhg.append("bbkqbbbb  bbbb "); 
levelhg.append("bbbl  b   bb   "); 
levelhg.append("bbb   b   b    ");
levelhg.append(" b    bbb      ");
levelhg.append(" h    bebl     ");
levelhg.append("      bbb      ");
levelhg.append("               "); 
levelhg.append([10,5]);
levelhg.append({"swatch71": [[2,3,"off"],[3,3,"off"]],"swatch17": [[9,7,"on"],[3,4,"on"]]});
levelhg.append({"swatch130": [12,3,10,5]});
#
levelgt = [];
levelgt.append("             h "); 
levelgt.append("      bbb  bbb ");
levelgt.append("      bhbbbbbl ");
levelgt.append("    bbbbb  bb  ");
levelgt.append("    bebl   bb  ");
levelgt.append("  bbbbb   bbbb ");
levelgt.append(" bbbb     bbbb ");
levelgt.append(" bbbb  bbbbb   ");
levelgt.append("      bbb      ");
levelgt.append("      bbb      ");
levelgt.append([3,6]);
levelgt.append({"swatch72": [[13,2,"onoff"]],"swatch130": [[7,4,"onoff"]]});
#
leveldw = [];
leveldw.append("   bbbk        "); 
leveldw.append("   bebk        ");
leveldw.append("   bbb         ");
leveldw.append("   b   bbbbbb  ");
leveldw.append("   b   bb  bb  ");
leveldw.append("  bbbbbbb  bbb ");
leveldw.append("       bs    b ");
leveldw.append("       bbbb  b ");
leveldw.append("       bbbbbbb ");
leveldw.append("          bbb  ");
leveldw.append([2,5]);
leveldw.append({"swatch86": [[6,0,"off"],[6,1,"off"]]});
#
levelkn = [];
levelkn.append("               "); 
levelkn.append("           bbbb"); 
levelkn.append("    rbbbbbbbhbv"); 
levelkn.append("  blrbhb   bbbb"); 
levelkn.append(" hb  bb      b "); 
levelkn.append(" bb  b       b ");
levelkn.append(" bbbbb     bbb ");
levelkn.append(" bbb  bbblrbeb ");
levelkn.append("      hbl  bbb ");
levelkn.append("               "); 
levelkn.append([2,3]);
levelkn.append({"swatch14": [[4,2,"on"]],"swatch122": [[4,3,"on"],[3,3,"on"]],"swatch63": [[8,8,"on"]],"swatch68": [[9,7,"on"],[10,7,"on"]]});
levelkn.append({"swatch142": [6,7,8,7]});
#
levelol = [];
levelol.append("     bbsbbb    "); 
levelol.append("     bbbbbbl   ");
levelol.append("bbb  sbbsbbbbb ");
levelol.append("bbbkqbbbbssbbs ");
levelol.append("     bbsbbsbbb ");
levelol.append("     bbbbbbsbb ");
levelol.append("bbb  bbbbbbsbbb");
levelol.append("bebkqbsb  bbbsh");
levelol.append("bbb  bbb   bbbb");
levelol.append("bbb         bbb");
levelol.append([1,3]);
levelol.append({"swatch147": [[11,1,"on"]],"swatch70": [[3,7,"off"],[4,7,"off"]],"swatch52": [[3,7,"off"],[4,7,"off"]],"swatch82": [[3,7,"off"],[4,7,"off"]],"swatch93": [[3,7,"off"],[4,7,"off"]],"swatch103": [[3,7,"off"],[4,7,"off"]],"swatch104": [[3,7,"off"],[4,7,"off"]],"swatch115": [[3,7,"off"],[4,7,"off"]],"swatch133": [[3,7,"off"],[4,7,"off"]],"swatch116": [[3,7,"off"],[4,7,"off"]],"swatch137": [[3,7,"off"],[4,7,"off"]],"swatch74": [[3,7,"off"],[4,7,"off"]],"swatch67": [[3,7,"off"],[4,7,"off"]]});
#
levelwe = [];
levelwe.append("               ");
levelwe.append("   fffffff     ");
levelwe.append("   fffffff     ");
levelwe.append("bbbb     bbb   ");
levelwe.append("bbb       bb   ");
levelwe.append("bbb       bb   ");
levelwe.append("bbb  bbbbfffff ");
levelwe.append("bbb  bbbbfffff ");
levelwe.append("     beb  ffbf ");
levelwe.append("     bbb  ffff ");
levelwe.append([1,6]);
levelwe.append({});
#
levelsb = [];
levelsb.append(" bbbfbbbbfbbbb "); 
levelsb.append(" bb        bbb ");
levelsb.append(" bb         bbb");
levelsb.append(" bbb   bbb  bbb");
levelsb.append(" bbbfffbeb  bbb");
levelsb.append(" bbb  fbbb  b  ");
levelsb.append("   b  fffffbb  ");
levelsb.append("   bbbffbfff   ");
levelsb.append("    bbffffff   ");
levelsb.append("    bbb  bb    ");
levelsb.append([13,3]);
levelsb.append({});
#
levelpq = [];
levelpq.append("               "); 
levelpq.append("      bbbb  bbb");
levelpq.append("bbbb  bbhb  beb");
levelpq.append("bbsb  bbbb  bbb");
levelpq.append("bbbb  bbbb  bbb");
levelpq.append("bbbblrbbbblrbbb");
levelpq.append("bbbb  bbbb     ");
levelpq.append("               ");
levelpq.append("               ");
levelpq.append("               ");
levelpq.append([1,5]);
levelpq.append({"swatch23": [[4,5,"onoff"],[5,5,"onoff"]],"swatch82": [[10,5,"onoff"],[11,5,"onoff"]]});
#
leveltt = [];
leveltt.append(" bbb        bbb");
leveltt.append(" bhb        bsb");
leveltt.append(" bbb   bbbkqbbb");
leveltt.append("rbbbl  beb  bbs");
leveltt.append("b   b  bbb    b");
leveltt.append("s   b  fff    b");
leveltt.append("blrbbbfffffbbbk");
leveltt.append("   bbbfffffbvb ");
leveltt.append("   bbbfffffbbb ");
leveltt.append("   bbbbbl      ");
leveltt.append([4,7]);
leveltt.append({"swatch143": [[14,6,"off"],[10,2,"off"],[11,2,"off"]],"swatch131": [[8,9,"onoff"],[1,6,"on"],[2,6,"on"]],"swatch05": [[0,3,"on"],[1,6,"off"],[2,6,"off"]],"swatch21": [[4,3,"on"]]});
leveltt.append({"swatch127": [12,7,2,2]});
#
levelvh = [];
levelvh.append("bbb    bbbbbbbb");
levelvh.append("bbbbbbbbbbb  bb"); 
levelvh.append("bbb    bb    bb"); 
levelvh.append("            bhb"); 
levelvh.append("            bb "); 
levelvh.append("bbb  ffffb  ss "); 
levelvh.append("bebfffffff  bbb"); 
levelvh.append("bbbfffffffffbbb"); 
levelvh.append("     fffffffbbb"); 
levelvh.append("      qbbk     "); 
levelvh.append([1,1]);
levelvh.append({"swatch125": [[6,9,"off"]],"swatch135": [[9,9,"off"]],"swatch133": [[6,9,"off"],[9,9,"off"]]});
#
levelpb = [];
levelpb.append(" bbbbbbbbbsbbbb");
levelpb.append("     bb      bb");
levelpb.append("     bb      bb");
levelpb.append("             bb");
levelpb.append("             bb");
levelpb.append("bbb  bblrbsbbbb");
levelpb.append("beb  bb        ");
levelpb.append("bbb  bb        ");
levelpb.append(" bb  bb        ");
levelpb.append(" bkqbbbbbbsbbb ");
levelpb.append([1,0]);
levelpb.append({"swatch100": [[7,5,"onoff"],[8,5,"onoff"]],"swatch105": [[2,9,"off"],[3,9,"off"]],"swatch109": [[2,9,"on"],[3,9,"on"]]});
#
levelkc = [];
levelkc.append("           bbbl");
levelkc.append(" bbb    h  bebl");
levelkc.append(" bbbkqbbblrbbbl");
levelkc.append(" bbb  bbb   b  ");
levelkc.append(" fff  sbb   f  ");
levelkc.append("  f   bbb  fff ");
levelkc.append("  b   bbb  bbb ");
levelkc.append("qbbblrbsbkqbbb ");
levelkc.append("qbhb  h    bbb ");
levelkc.append("qbbb           ");
levelkc.append([12,7]);
levelkc.append({"swatch81": [[9,2,"onoff"],[10,2,"onoff"]],"swatch68": [[4,7,"onoff"],[5,7,"onoff"]],"swatch28": [[14,2,"on"],[14,1,"on"],[14,0,"on"],[4,2,"off"],[5,2,"off"]],"swatch77": [[4,2,"off"],[5,2,"off"],[9,2,"off"],[10,2,"off"],[4,7,"off"],[5,7,"off"],[9,7,"off"],[10,7,"off"]],"swatch64": [[4,2,"off"],[5,2,"off"],[9,2,"off"],[10,2,"off"],[4,7,"off"],[5,7,"off"],[9,7,"off"],[10,7,"off"]]});
#
levelji = [];
levelji.append("               "); 
levelji.append("               "); 
levelji.append("      bbbbbbb  "); 
levelji.append("bbbb  bbb  bb  "); 
levelji.append("bbbbbbbbb  bbbb"); 
levelji.append("bbbb       bbeb"); 
levelji.append("bbbb       bbbb"); 
levelji.append("            bbb"); 
levelji.append("               "); 
levelji.append("               "); 
levelji.append([1,5]);
levelji.append({});
#
leveled = [];
leveled.append("             bh"); 
leveled.append("   bbkqbb   bbb"); 
leveled.append("  bbblrbb  bhbb"); 
leveled.append("  beb   bbbbb  "); 
leveled.append("  bbb    bbb   "); 
leveled.append("          bb   "); 
leveled.append("     bbb  bb   "); 
leveled.append(" bblrbhb  bb   "); 
leveled.append(" bblrbbbbbbb   "); 
leveled.append("               "); 
leveled.append([11,6]);
leveled.append({"swatch140": [[3,7,"onoff"],[4,7,"onoff"],[5,1,"onoff"],[6,1,"onoff"]],"swatch122": [[3,8,"onoff"],[4,8,"onoff"]],"swatch67": [[5,2,"onoff"],[6,2,"onoff"]]});
#
levelfm = [];
levelfm.append(" bbkqbb        ");
levelfm.append(" bb  bbb       ");
levelfm.append("ffb  bbbb      ");
levelfm.append("ff     bbb     ");
levelfm.append("ff      bbb    ");
levelfm.append("fbbb     bbv   ");
levelfm.append(" beb      bbbbb");
levelfm.append(" bbbbbb   bsbbb");
levelfm.append("  b  bb   bbb  ");
levelfm.append("  b  bbbkqbbb  ");
levelfm.append([2,2]);
levelfm.append({"swatch117": [[4,0,"off"],[3,0,"off"],[8,9,"off"],[9,9,"off"]]});
levelfm.append({"swatch115": [14,6,12,9]});
#
levelgv = [];  
levelgv.append("   bbbbbffbbbb ");
levelgv.append("   bebb     fb ");
levelgv.append("   bbb      fbh");
levelgv.append("       fbbkqbbb");
levelgv.append("  b    ff     b");
levelgv.append(" hbf   ff     b");
levelgv.append("ffff   bbl  rbb");
levelgv.append("fffbfbffbf  hbl");
levelgv.append("bfffffffffffb  ");
levelgv.append(" fbfff  ffffb  ");
levelgv.append([2,4]);
levelgv.append({"swatch15": [[10,3,"on"],[11,3,"on"]],"swatch142": [[10,3,"off"],[11,3,"off"],[9,6,"on"],[12,6,"on"]],"swatch127": [[14,7,"onoff"]]});
#
levelxx = [];
levelxx.append("           bbbb"); 
levelxx.append(" bbbbkqbsbbbbbb"); 
levelxx.append(" bbbb       bbb"); 
levelxx.append(" bbsb          "); 
levelxx.append(" bbbb          "); 
levelxx.append("   bbbsbkqbbb  "); 
levelxx.append("          bbbbs"); 
levelxx.append("bbb       bbbbb"); 
levelxx.append("bebbbkqbbbbbb  "); 
levelxx.append("bbbb           "); 
levelxx.append([13,1]);
levelxx.append({"swatch81": [[6,1,"onoff"],[5,1,"onoff"]],"swatch65": [[5,8,"off"],[6,8,"off"]],"swatch33": [[5,8,"on"],[6,8,"on"]],"swatch146": [[5,8,"onoff"],[6,8,"onoff"]]});
#
#  777654
levels = ["",levelez,levelpq,levelji,levelwe,levelxx,levelgg,levelfr,levelss,levelre,levelpp,leveldw,levelgt,levelsb,levelub,levelht,levelis,leveltw,levelsc,levelpb,leveltb,levelmn,levellh,leveltt,levelkn,leveldd,levelhg,levelvh,levelfm,levelmp,levelgv,levelkc,leveled,levelol];
levelcodes = ["","780464","290299","918660","520967","028431","524383","189493","499707","074355","300590","291709","958640","448106","210362","098598","000241","683596","284933","119785","543019","728724","987319","293486","088198","250453","426329","660141","769721","691859","280351","138620","879021","614955"];


# convert original level data to a better format
def rotate(x, y):
    return (9 - y, x)
levels2 = []
i = 1
class GetOutOfLoop( Exception ):
    pass
for level in levels:
    try:
        if len(level) > 0:
            # get start position
            x0 = 0
            y0 = 0
            for line in level:
                if type(line) is list:
                    x0, y0 = line

            # convert level and get swatches
            swatches = []
            geometry = []
            y = 0
            dictline = False
            for line in level:
                if type(line) is str:
                    line2 = ""
                    x = 0
                    for c in line:
                        # known field types
                        if c in [' ', 'b', 'e', 's', 'l', 'r', 'h', 'f', 'k', 'q', 'v']:
                            line2 += c
                        else:
                            # if c == 'v':
                            #    raise GetOutOfLoop
                                
                            # show level, if unknown field type
                            print("code %s, level: %s, unknown char: %s" % (levelcodes[i], i, c))
                            for line in level:
                                print(line)
                            sys.exit(1)
                        if c in ['s', 'h', 'v']:
                            (x2, y2) = rotate(x, y)
                            swatch = { 'type': c, 'position': { 'x': x2, 'y': y2 } }
                            swatches.append(swatch)
                        x += 1
                    geometry.append(line2)
                    y += 1
                if type(line) is dict:
                    for s in swatches:
                        # split swatches are in the second line
                        if s['type'] == 'v':
                            if not dictline:
                                continue
                        else:
                            if dictline:
                                continue

                        # get swatch source position
                        x2 = s['position']['x']
                        y2 = s['position']['y']
                        
                        # rotate back -90° to get swatch name
                        (x2, y2) = rotate(x2, y2)
                        (x2, y2) = rotate(x2, y2)
                        (x2, y2) = rotate(x2, y2)
                        name = 'swatch' + str(x2) + str(y2)
                        
                        # add swatch targets
                        if name in line:
                            fields = line[name]
                            f2 = []
                            if s['type'] == 'v':
                                # split swatch
                                (xf, yf, xf2, yf2) = fields
                                (x2, y2) = rotate(xf, yf)
                                (x3, y3) = rotate(xf2, yf2)
                                f2.append({ 'position': { 'x': x2, 'y': y2 }, 'action': 'split1' })
                                f2.append({ 'position': { 'x': x3, 'y': y3 }, 'action': 'split2' })
                            else:
                                # normal swatch
                                for (xf, yf, action) in fields:
                                    (x2, y2) = rotate(xf, yf)
                                    f2.append({ 'position': { 'x': x2, 'y': y2 }, 'action': action })
                            s['fields'] = f2
                        else:
                            print("error: %s missing" % name)
                            print("code %s, level: %s" % (levelcodes[i], i))
                            sys.exit(1)
                    dictline = True

            (x2, y2) = rotate(x0, y0)
            level2 = { 'geometry': geometry, 'start':  { 'x': x2, 'y': y2 }, 'swatches': swatches }
            # pp.pprint(level2)
            # print()
            levels2.append(level2)
            i += 1
    except GetOutOfLoop:
        pass

# format after processing:
# each level is a dictionary:
# geometry: list of strings, each string is a line, each character a field:
#   space: no field
#   b : blank field
#   e : end field
#   s : round switch, can be hit by any part of the block
#   h : x switch, can be switched only if the block hits the switch vertically
#   l, r : if a switch is hit, these fields appear or disappear
#   k, q : same as l and r, but initially on instead of off
# start: x, y start coordinate of the block

# rotate geometry by 90°
def setc(level, x, y, c):
    line = level[y]
    line = line[:x] + c + line[x+1:]
    level[y] = line
for level2 in levels2:
    y = 0
    geometry = []
    for i in range(15):
        geometry.append(" " * 10)
    for line in level2['geometry']:
        x = 0
        for c in line:
            (x2, y2) = rotate(x, y)
            setc(geometry, x2, y2, c)
            x += 1
        y += 1
    level2['geometry'] = geometry

def saveFile(levels2, levelOffset, nextBank, filename):
    
    with open(filename, "w") as file:
    
        # generate C code
        file.write('#include "source/level.h"\n')
        file.write("\n")
        file.write("const uint8_t levelCount = %d;\n" % len(levels2))
        file.write("const uint8_t levelOffset = %d;\n" % levelOffset)
        file.write("const uint8_t nextBank = %d;\n" % nextBank)
        file.write("\n")
        
        i = 0
        for level in levels2:
            # print level
            swatches = level['swatches']
            if len(swatches) > 0:
                s = 0
                for swatch in swatches:
                    sx = swatch['position']['x']
                    sy = swatch['position']['y']
                    file.write("const struct Swatch const swatch_%d_%d = {\n" % (i, s));
                    file.write("    .type = SWATCH_TYPE_%s,\n" % swatch['type'].upper());
                    file.write("    .position = { .x = %d, .y = %d },\n" % (sx, sy));
                    fields = swatch['fields']
                    file.write("    .fields_count = %d,\n" % len(fields));
                    file.write("    .fields =\n");
                    file.write("        {\n");
                    for field in fields:
                        file.write("            &(const struct SwatchField) {\n");
                        action = field['action']
                        fx = field['position']['x']
                        fy = field['position']['y']
                        file.write("                .action = SWATCH_FIELD_ACTION_%s, .position = { .x = %d, .y = %d },\n" % (action.upper(), fx, fy));
                        file.write("            },\n");
                    file.write("        }\n");
                    file.write("};\n")
                    file.write("\n")
                    s += 1
            i += 1
        
        i = 0
        for level in levels2:
            # print level
            file.write("const struct Level const level%d =\n" % i)
            file.write("{\n")
            file.write("    .geometry = \n")
            for line in level['geometry']:
                file.write('        "' + line + '"\n')
            file.write("    , .start = { .x = %d, .y = %d }\n" % (level['start']['x'], level['start']['y']))
            swatches = level['swatches']
            file.write("    , .swatches_count = %d\n" % len(swatches));
            if len(swatches) > 0:
                file.write("    , .swatches =\n");
                file.write("    {\n");
                s = 0
                for swatch in swatches:
                    file.write("        &swatch_%d_%d,\n" % (i, s));
                    s += 1
                file.write("    },\n");
            file.write("};\n")
            i += 1
        
        file.write("const struct Level* const levels[] = {\n")
        i = 0
        for level in levels2:
            # print level
            file.write("    &level%d,\n" % i)
            i += 1
        file.write("};\n")

saveFile(levels2[:15], 1, 1, "leveldata0.c")
saveFile(levels2[16:], 17, 0, "leveldata1.c")

print("level files created")
