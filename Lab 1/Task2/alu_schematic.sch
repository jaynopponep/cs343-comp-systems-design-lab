<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="B" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="A_INVERT" />
        <signal name="B_INVERT" />
        <signal name="XLXN_33" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="CARRY_OUT" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="OP0" />
        <signal name="OP1" />
        <signal name="OUTPUT" />
        <signal name="CARRY_IN" />
        <port polarity="Output" name="OUTPUT" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="xor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="208" y1="-128" y2="-128" x1="256" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="64" ey="-176" sx="64" sy="-80" r="56" cx="32" cy="-128" />
            <arc ex="128" ey="-176" sx="208" sy="-128" r="88" cx="132" cy="-88" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="64" y1="-80" y2="-80" x1="128" />
            <line x2="64" y1="-176" y2="-176" x1="128" />
            <arc ex="208" ey="-128" sx="128" sy="-80" r="88" cx="132" cy="-168" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_3">
            <blockpin signalname="B" name="D0" />
            <blockpin signalname="XLXN_6" name="D1" />
            <blockpin signalname="B_INVERT" name="S0" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_4">
            <blockpin signalname="A" name="D0" />
            <blockpin signalname="XLXN_5" name="D1" />
            <blockpin signalname="A_INVERT" name="S0" />
            <blockpin signalname="CARRY_IN" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="CARRY_IN" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_6">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="CARRY_IN" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="CARRY_IN" name="I0" />
            <blockpin signalname="CARRY_IN" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_11">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="CARRY_IN" name="I1" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="CARRY_IN" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="xor3" name="XLXI_17">
            <blockpin signalname="XLXN_33" name="I0" />
            <blockpin signalname="CARRY_IN" name="I1" />
            <blockpin signalname="CARRY_IN" name="I2" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_19">
            <blockpin signalname="XLXN_42" name="I0" />
            <blockpin signalname="XLXN_41" name="I1" />
            <blockpin signalname="XLXN_40" name="I2" />
            <blockpin signalname="CARRY_OUT" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_20">
            <blockpin signalname="XLXN_44" name="D0" />
            <blockpin signalname="XLXN_45" name="D1" />
            <blockpin signalname="XLXN_46" name="D2" />
            <blockpin name="D3" />
            <blockpin name="E" />
            <blockpin signalname="OP0" name="S0" />
            <blockpin signalname="OP1" name="S1" />
            <blockpin signalname="OUTPUT" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="544" type="branch" />
            <wire x2="656" y1="544" y2="544" x1="576" />
            <wire x2="976" y1="544" y2="544" x1="656" />
            <wire x2="656" y1="528" y2="544" x1="656" />
            <wire x2="656" y1="528" y2="688" x1="656" />
        </branch>
        <branch name="B">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="576" y="880" type="branch" />
            <wire x2="656" y1="880" y2="880" x1="576" />
            <wire x2="656" y1="880" y2="1040" x1="656" />
            <wire x2="672" y1="1040" y2="1040" x1="656" />
            <wire x2="944" y1="880" y2="880" x1="656" />
        </branch>
        <instance x="656" y="720" name="XLXI_1" orien="R0" />
        <instance x="672" y="1072" name="XLXI_2" orien="R0" />
        <branch name="A_INVERT">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="976" y="688" type="branch" />
            <wire x2="976" y1="672" y2="688" x1="976" />
            <wire x2="1024" y1="688" y2="688" x1="976" />
        </branch>
        <branch name="B_INVERT">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="1072" type="branch" />
            <wire x2="944" y1="1008" y2="1072" x1="944" />
            <wire x2="1056" y1="1072" y2="1072" x1="944" />
            <wire x2="1072" y1="1072" y2="1072" x1="1056" />
        </branch>
        <instance x="1552" y="672" name="XLXI_5" orien="R0" />
        <instance x="1600" y="1008" name="XLXI_6" orien="R0" />
        <instance x="976" y="704" name="XLXI_4" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="896" y1="688" y2="688" x1="880" />
            <wire x2="976" y1="608" y2="608" x1="896" />
            <wire x2="896" y1="608" y2="688" x1="896" />
        </branch>
        <instance x="944" y="1040" name="XLXI_3" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="912" y1="1040" y2="1040" x1="896" />
            <wire x2="944" y1="944" y2="944" x1="912" />
            <wire x2="912" y1="944" y2="1040" x1="912" />
        </branch>
        <instance x="1648" y="1248" name="XLXI_10" orien="R0" />
        <instance x="1648" y="1424" name="XLXI_11" orien="R0" />
        <instance x="1648" y="1600" name="XLXI_12" orien="R0" />
        <instance x="1680" y="1824" name="XLXI_17" orien="R0" />
        <branch name="XLXN_33">
            <wire x2="1328" y1="912" y2="912" x1="1264" />
            <wire x2="1504" y1="912" y2="912" x1="1328" />
            <wire x2="1504" y1="912" y2="944" x1="1504" />
            <wire x2="1600" y1="944" y2="944" x1="1504" />
            <wire x2="1328" y1="912" y2="1360" x1="1328" />
            <wire x2="1456" y1="1360" y2="1360" x1="1328" />
            <wire x2="1456" y1="1360" y2="1536" x1="1456" />
            <wire x2="1648" y1="1536" y2="1536" x1="1456" />
            <wire x2="1648" y1="1360" y2="1360" x1="1456" />
            <wire x2="1328" y1="1360" y2="1760" x1="1328" />
            <wire x2="1680" y1="1760" y2="1760" x1="1328" />
            <wire x2="1504" y1="608" y2="912" x1="1504" />
            <wire x2="1552" y1="608" y2="608" x1="1504" />
        </branch>
        <instance x="2096" y="1456" name="XLXI_19" orien="R0" />
        <branch name="XLXN_40">
            <wire x2="2096" y1="1152" y2="1152" x1="1904" />
            <wire x2="2096" y1="1152" y2="1264" x1="2096" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="2096" y1="1328" y2="1328" x1="1904" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="2096" y1="1504" y2="1504" x1="1904" />
            <wire x2="2096" y1="1392" y2="1504" x1="2096" />
        </branch>
        <branch name="CARRY_OUT">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2384" y="1328" type="branch" />
            <wire x2="2384" y1="1328" y2="1328" x1="2352" />
        </branch>
        <branch name="OP1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="1520" type="branch" />
            <wire x2="2720" y1="976" y2="1520" x1="2720" />
            <wire x2="2736" y1="1520" y2="1520" x1="2720" />
            <wire x2="2784" y1="976" y2="976" x1="2720" />
        </branch>
        <branch name="OP0">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1008" type="branch" />
            <wire x2="2784" y1="912" y2="912" x1="2672" />
            <wire x2="2672" y1="912" y2="1008" x1="2672" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1952" y1="1696" y2="1696" x1="1936" />
            <wire x2="1952" y1="784" y2="1696" x1="1952" />
            <wire x2="2784" y1="784" y2="784" x1="1952" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1872" y1="912" y2="912" x1="1856" />
            <wire x2="1872" y1="720" y2="912" x1="1872" />
            <wire x2="2784" y1="720" y2="720" x1="1872" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1824" y1="576" y2="576" x1="1808" />
            <wire x2="1824" y1="576" y2="656" x1="1824" />
            <wire x2="2784" y1="656" y2="656" x1="1824" />
        </branch>
        <instance x="2784" y="1072" name="XLXI_20" orien="R0" />
        <branch name="OUTPUT">
            <wire x2="3136" y1="752" y2="752" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="752" name="OUTPUT" orien="R0" />
        <branch name="CARRY_IN">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1120" type="branch" />
            <wire x2="1376" y1="1120" y2="1120" x1="912" />
            <wire x2="1376" y1="1120" y2="1296" x1="1376" />
            <wire x2="1648" y1="1296" y2="1296" x1="1376" />
            <wire x2="1376" y1="1296" y2="1696" x1="1376" />
            <wire x2="1680" y1="1696" y2="1696" x1="1376" />
            <wire x2="1648" y1="1120" y2="1120" x1="1376" />
        </branch>
        <branch name="CARRY_IN">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1472" type="branch" />
            <wire x2="1424" y1="576" y2="576" x1="1296" />
            <wire x2="1488" y1="576" y2="576" x1="1424" />
            <wire x2="1488" y1="576" y2="880" x1="1488" />
            <wire x2="1600" y1="880" y2="880" x1="1488" />
            <wire x2="1424" y1="576" y2="1184" x1="1424" />
            <wire x2="1648" y1="1184" y2="1184" x1="1424" />
            <wire x2="1424" y1="1184" y2="1472" x1="1424" />
            <wire x2="1424" y1="1472" y2="1632" x1="1424" />
            <wire x2="1680" y1="1632" y2="1632" x1="1424" />
            <wire x2="1584" y1="1472" y2="1472" x1="1424" />
            <wire x2="1648" y1="1472" y2="1472" x1="1584" />
            <wire x2="1488" y1="544" y2="576" x1="1488" />
            <wire x2="1552" y1="544" y2="544" x1="1488" />
        </branch>
    </sheet>
</drawing>