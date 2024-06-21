<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S0" />
        <signal name="S1" />
        <signal name="D0" />
        <signal name="D2" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="D3" />
        <signal name="D1" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="Y">
        </signal>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="S0" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="S1" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_3">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="S0" name="I1" />
            <blockpin signalname="XLXN_14" name="I2" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_5">
            <blockpin signalname="D2" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_6">
            <blockpin signalname="D3" name="I0" />
            <blockpin signalname="S0" name="I1" />
            <blockpin signalname="S1" name="I2" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_7">
            <blockpin signalname="XLXN_29" name="I0" />
            <blockpin signalname="XLXN_28" name="I1" />
            <blockpin signalname="XLXN_26" name="I2" />
            <blockpin signalname="XLXN_25" name="I3" />
            <blockpin signalname="Y" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="S0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="416" y="512" type="branch" />
            <wire x2="816" y1="512" y2="512" x1="416" />
            <wire x2="1136" y1="512" y2="512" x1="816" />
            <wire x2="816" y1="512" y2="1056" x1="816" />
            <wire x2="1536" y1="1056" y2="1056" x1="816" />
            <wire x2="816" y1="1056" y2="1456" x1="816" />
            <wire x2="1536" y1="1456" y2="1456" x1="816" />
        </branch>
        <branch name="S1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="400" y="688" type="branch" />
            <wire x2="576" y1="688" y2="688" x1="400" />
            <wire x2="576" y1="688" y2="1184" x1="576" />
            <wire x2="1536" y1="1184" y2="1184" x1="576" />
            <wire x2="576" y1="1184" y2="1392" x1="576" />
            <wire x2="1536" y1="1392" y2="1392" x1="576" />
            <wire x2="992" y1="688" y2="688" x1="576" />
        </branch>
        <branch name="D0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="384" y="912" type="branch" />
            <wire x2="1536" y1="912" y2="912" x1="384" />
        </branch>
        <branch name="D2">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1312" type="branch" />
            <wire x2="1536" y1="1312" y2="1312" x1="384" />
        </branch>
        <instance x="1136" y="544" name="XLXI_1" orien="R0" />
        <instance x="1536" y="976" name="XLXI_3" orien="R0" />
        <instance x="1536" y="1184" name="XLXI_4" orien="R0" />
        <instance x="1536" y="1376" name="XLXI_5" orien="R0" />
        <instance x="1536" y="1584" name="XLXI_6" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1440" y1="512" y2="512" x1="1360" />
            <wire x2="1440" y1="512" y2="848" x1="1440" />
            <wire x2="1440" y1="848" y2="1248" x1="1440" />
            <wire x2="1536" y1="1248" y2="1248" x1="1440" />
            <wire x2="1536" y1="848" y2="848" x1="1440" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1232" y1="688" y2="688" x1="1216" />
            <wire x2="1232" y1="688" y2="784" x1="1232" />
            <wire x2="1232" y1="784" y2="992" x1="1232" />
            <wire x2="1536" y1="992" y2="992" x1="1232" />
            <wire x2="1536" y1="784" y2="784" x1="1232" />
        </branch>
        <branch name="D3">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="352" y="1520" type="branch" />
            <wire x2="1536" y1="1520" y2="1520" x1="352" />
        </branch>
        <branch name="D1">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="320" y="1120" type="branch" />
            <wire x2="1536" y1="1120" y2="1120" x1="320" />
        </branch>
        <instance x="992" y="720" name="XLXI_2" orien="R0" />
        <instance x="1968" y="1280" name="XLXI_7" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="1968" y1="848" y2="848" x1="1792" />
            <wire x2="1968" y1="848" y2="1024" x1="1968" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1872" y1="1056" y2="1056" x1="1792" />
            <wire x2="1872" y1="1056" y2="1088" x1="1872" />
            <wire x2="1968" y1="1088" y2="1088" x1="1872" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="1808" y1="1248" y2="1248" x1="1792" />
            <wire x2="1968" y1="1152" y2="1152" x1="1808" />
            <wire x2="1808" y1="1152" y2="1248" x1="1808" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1968" y1="1456" y2="1456" x1="1792" />
            <wire x2="1968" y1="1216" y2="1456" x1="1968" />
        </branch>
        <branch name="Y">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1120" type="branch" />
            <wire x2="2256" y1="1120" y2="1120" x1="2224" />
        </branch>
    </sheet>
</drawing>