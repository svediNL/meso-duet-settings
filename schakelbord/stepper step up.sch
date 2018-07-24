<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.4.1">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+05V" urn="urn:adsk.eagle:symbol:26987/1" library_version="2">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26990/1" library_version="2">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" urn="urn:adsk.eagle:component:27032/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="+5V" symbol="+05V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:27037/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="mesoprint">
<packages>
<package name="BKL_3XPINHEAD">
<pad name="P$1" x="-2.54" y="0" drill="1.4" shape="offset" rot="R270"/>
<pad name="P$2" x="0" y="0" drill="1.4" shape="offset" rot="R270"/>
<pad name="P$3" x="2.54" y="0" drill="1.4" shape="offset" rot="R270"/>
<wire x1="-3.8" y1="2.6" x2="3.8" y2="2.6" width="0.2" layer="22"/>
<wire x1="3.8" y1="2.6" x2="3.8" y2="-2.6" width="0.2" layer="22"/>
<wire x1="3.8" y1="-2.6" x2="-3.8" y2="-2.6" width="0.2" layer="22"/>
<wire x1="-3.8" y1="-2.6" x2="-3.8" y2="2.6" width="0.2" layer="22"/>
</package>
<package name="SCREW_X6">
<pad name="P$1" x="-6.35" y="0" drill="1.4" shape="offset" rot="R270"/>
<pad name="P$2" x="-3.81" y="0" drill="1.4" shape="offset" rot="R270"/>
<pad name="P$3" x="-1.27" y="0" drill="1.4" shape="offset" rot="R270"/>
<pad name="P$4" x="1.27" y="0" drill="1.4" shape="offset" rot="R270"/>
<pad name="P$5" x="3.81" y="0" drill="1.4" shape="offset" rot="R270"/>
<pad name="P$6" x="6.35" y="0" drill="1.4" shape="offset" rot="R270"/>
<wire x1="-8" y1="3.2" x2="-8" y2="-3.2" width="0.2" layer="22"/>
<wire x1="-8" y1="-3.2" x2="8" y2="-3.2" width="0.2" layer="22"/>
<wire x1="8" y1="-3.2" x2="8" y2="3.2" width="0.2" layer="22"/>
<wire x1="8" y1="3.2" x2="-8" y2="3.2" width="0.2" layer="22"/>
</package>
<package name="SCREW_X2">
<pad name="P$1" x="-1.27" y="0" drill="1.4" shape="offset" rot="R270"/>
<pad name="P$2" x="1.27" y="0" drill="1.4" shape="offset" rot="R270"/>
<wire x1="-3" y1="3.2" x2="-3" y2="-3.2" width="0.2" layer="22"/>
<wire x1="-3" y1="-3.2" x2="3" y2="-3.2" width="0.2" layer="22"/>
<wire x1="3" y1="-3.2" x2="3" y2="3.2" width="0.2" layer="22"/>
<wire x1="3" y1="3.2" x2="-3" y2="3.2" width="0.2" layer="22"/>
</package>
<package name="VERT_RES">
<pad name="P$1" x="-2" y="0" drill="0.9" diameter="1.6"/>
<pad name="P$2" x="2" y="0" drill="0.9" diameter="1.6"/>
<wire x1="2" y1="0" x2="-2" y2="0" width="0.2" layer="21"/>
<circle x="2" y="0" radius="1.5" width="0.2" layer="21"/>
<text x="3" y="2" size="1.3" layer="21" font="vector" ratio="20" rot="MR0">&gt;NAME</text>
</package>
<package name="NPN_SS8050">
<pad name="E" x="-1.27" y="0" drill="0.7" diameter="1.2"/>
<pad name="C" x="1.27" y="0" drill="0.7" diameter="1.2"/>
<pad name="B" x="0" y="1.27" drill="0.7" diameter="1.2"/>
<wire x1="-2" y1="-1" x2="2" y2="-1" width="0.127" layer="21"/>
<wire x1="-2.5" y1="0" x2="2.5" y2="0" width="0.127" layer="21" curve="-180"/>
<wire x1="-2.5" y1="0" x2="-2" y2="-1" width="0.127" layer="21"/>
<wire x1="2" y1="-1" x2="2.5" y2="0" width="0.127" layer="21"/>
<wire x1="2.5" y1="0" x2="-2.5" y2="0" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="BKL_3XPINHEAD">
<pin name="P$1" x="0" y="-2.54" visible="off" length="short" rot="R90"/>
<pin name="P$2" x="5.08" y="-2.54" visible="off" length="short" rot="R90"/>
<pin name="P$3" x="10.16" y="-2.54" visible="off" length="short" rot="R90"/>
<wire x1="-5.08" y1="0" x2="17.78" y2="0" width="0.254" layer="94"/>
<wire x1="17.78" y1="0" x2="17.78" y2="7.62" width="0.254" layer="94"/>
<wire x1="17.78" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="94">&gt;NAME</text>
</symbol>
<symbol name="SCREW_X6">
<pin name="P$1" x="-12.7" y="0" visible="pad" length="short" function="dot" rot="R90"/>
<pin name="P$2" x="-7.62" y="0" visible="pad" length="short" function="dot" rot="R90"/>
<pin name="P$3" x="-2.54" y="0" visible="pad" length="short" function="dot" rot="R90"/>
<pin name="P$4" x="2.54" y="0" visible="pad" length="short" function="dot" rot="R90"/>
<pin name="P$5" x="7.62" y="0" visible="pad" length="short" function="dot" rot="R90"/>
<pin name="P$6" x="12.7" y="0" visible="pad" length="short" function="dot" rot="R90"/>
<wire x1="-15.24" y1="6.35" x2="-15.24" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-2.54" x2="15.24" y2="-2.54" width="0.254" layer="94"/>
<wire x1="15.24" y1="-2.54" x2="15.24" y2="6.35" width="0.254" layer="94"/>
<wire x1="15.24" y1="6.35" x2="-15.24" y2="6.35" width="0.254" layer="94"/>
<text x="-15.24" y="7.62" size="2.54" layer="94">&gt;NAME</text>
</symbol>
<symbol name="SCREW_X2">
<pin name="P$1" x="-2.54" y="0" visible="pad" length="short" function="dot" rot="R90"/>
<pin name="P$2" x="2.54" y="0" visible="pad" length="short" function="dot" rot="R90"/>
<wire x1="-5.08" y1="6.35" x2="-5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="6.35" width="0.254" layer="94"/>
<wire x1="5.08" y1="6.35" x2="-5.08" y2="6.35" width="0.254" layer="94"/>
<text x="-5.08" y="7.62" size="2.54" layer="94">&gt;NAME</text>
</symbol>
<symbol name="VERT_RES">
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<pin name="P$1" x="-5.08" y="0" visible="off" length="short"/>
<pin name="P$2" x="5.08" y="0" visible="off" length="short" rot="R180"/>
<text x="-5.08" y="2.54" size="1.27" layer="94">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="NPN_SS8050">
<circle x="0" y="0" radius="5.08" width="0.254" layer="94"/>
<pin name="B" x="-10.16" y="0" visible="off"/>
<pin name="C" x="2.54" y="9.525" visible="off" length="middle" rot="R270"/>
<pin name="E" x="2.54" y="-9.525" visible="off" length="middle" rot="R90"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="0" width="0.508" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="-2.54" width="0.508" layer="94"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="4.445" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="2.54" y2="-4.445" width="0.254" layer="94"/>
<wire x1="0.381" y1="-2.54" x2="0.381" y2="-1.905" width="0.254" layer="94"/>
<wire x1="0.254" y1="-2.54" x2="-0.254" y2="-2.54" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BKL_3XPINHEAD" prefix="J">
<gates>
<gate name="G$1" symbol="BKL_3XPINHEAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BKL_3XPINHEAD">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SCREW_X6">
<gates>
<gate name="G$1" symbol="SCREW_X6" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SCREW_X6">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
<connect gate="G$1" pin="P$5" pad="P$5"/>
<connect gate="G$1" pin="P$6" pad="P$6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SCREW_X2">
<gates>
<gate name="G$1" symbol="SCREW_X2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SCREW_X2">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VERT_RES">
<gates>
<gate name="G$1" symbol="VERT_RES" x="0" y="0"/>
</gates>
<devices>
<device name="" package="VERT_RES">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NPN_SS8050">
<gates>
<gate name="G$1" symbol="NPN_SS8050" x="0" y="0"/>
</gates>
<devices>
<device name="" package="NPN_SS8050">
<connects>
<connect gate="G$1" pin="B" pad="B"/>
<connect gate="G$1" pin="C" pad="C"/>
<connect gate="G$1" pin="E" pad="E"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="Q1" library="mesoprint" deviceset="NPN_SS8050" device="" value="SS8050"/>
<part name="Q2" library="mesoprint" deviceset="NPN_SS8050" device="" value="SS8050"/>
<part name="Q3" library="mesoprint" deviceset="NPN_SS8050" device="" value="SS8050"/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY4" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY5" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY6" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="DUETX" library="mesoprint" deviceset="BKL_3XPINHEAD" device=""/>
<part name="EXT_DRIVER_X" library="mesoprint" deviceset="SCREW_X6" device=""/>
<part name="Q4" library="mesoprint" deviceset="NPN_SS8050" device="" value="SS8050"/>
<part name="Q5" library="mesoprint" deviceset="NPN_SS8050" device="" value="SS8050"/>
<part name="Q6" library="mesoprint" deviceset="NPN_SS8050" device="" value="SS8050"/>
<part name="SUPPLY7" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY8" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY9" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY10" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="DUETY" library="mesoprint" deviceset="BKL_3XPINHEAD" device=""/>
<part name="EXT_DRIVER_Y" library="mesoprint" deviceset="SCREW_X6" device=""/>
<part name="Q7" library="mesoprint" deviceset="NPN_SS8050" device="" value="SS8050"/>
<part name="Q8" library="mesoprint" deviceset="NPN_SS8050" device="" value="SS8050"/>
<part name="Q9" library="mesoprint" deviceset="NPN_SS8050" device="" value="SS8050"/>
<part name="SUPPLY11" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY12" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY13" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY14" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="DUETZ" library="mesoprint" deviceset="BKL_3XPINHEAD" device=""/>
<part name="EXT_DRIVER_Z" library="mesoprint" deviceset="SCREW_X6" device=""/>
<part name="VIN" library="mesoprint" deviceset="SCREW_X2" device=""/>
<part name="R1" library="mesoprint" deviceset="VERT_RES" device="" value="22kΩ"/>
<part name="R2" library="mesoprint" deviceset="VERT_RES" device="" value="22kΩ"/>
<part name="R3" library="mesoprint" deviceset="VERT_RES" device="" value="22kΩ"/>
<part name="R4" library="mesoprint" deviceset="VERT_RES" device="" value="22kΩ"/>
<part name="R5" library="mesoprint" deviceset="VERT_RES" device="" value="22kΩ"/>
<part name="R6" library="mesoprint" deviceset="VERT_RES" device="" value="22kΩ"/>
<part name="R7" library="mesoprint" deviceset="VERT_RES" device="" value="22kΩ"/>
<part name="R8" library="mesoprint" deviceset="VERT_RES" device="" value="22kΩ"/>
<part name="R9" library="mesoprint" deviceset="VERT_RES" device="" value="22kΩ"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="64.77" y="21.59" size="1.778" layer="97" rot="R180">X STEP</text>
<text x="49.53" y="44.45" size="1.778" layer="97" rot="R180">X DIR</text>
<text x="34.29" y="67.31" size="1.778" layer="97" rot="R180">X EN</text>
<text x="153.67" y="21.59" size="1.778" layer="97" rot="R180">Y STEP</text>
<text x="138.43" y="44.45" size="1.778" layer="97" rot="R180">Y DIR</text>
<text x="123.19" y="67.31" size="1.778" layer="97" rot="R180">Y EN</text>
<text x="242.57" y="24.13" size="1.778" layer="97" rot="R180">Z STEP</text>
<text x="227.33" y="46.99" size="1.778" layer="97" rot="R180">Z DIR</text>
<text x="212.09" y="69.85" size="1.778" layer="97" rot="R180">Z EN</text>
<wire x1="177.8" y1="0" x2="177.8" y2="93.98" width="0.1524" layer="97" style="dashdot"/>
<wire x1="177.8" y1="93.98" x2="261.62" y2="93.98" width="0.1524" layer="97" style="dashdot"/>
<wire x1="261.62" y1="93.98" x2="261.62" y2="0" width="0.1524" layer="97" style="dashdot"/>
<wire x1="261.62" y1="0" x2="177.8" y2="0" width="0.1524" layer="97" style="dashdot"/>
<wire x1="172.72" y1="0" x2="172.72" y2="93.98" width="0.1524" layer="97" style="dashdot"/>
<wire x1="88.9" y1="0" x2="88.9" y2="93.98" width="0.1524" layer="97" style="dashdot"/>
<wire x1="172.72" y1="0" x2="88.9" y2="0" width="0.1524" layer="97" style="dashdot"/>
<wire x1="172.72" y1="93.98" x2="88.9" y2="93.98" width="0.1524" layer="97" style="dashdot"/>
<wire x1="83.82" y1="0" x2="83.82" y2="93.98" width="0.1524" layer="97" style="dashdot"/>
<wire x1="0" y1="0" x2="0" y2="93.98" width="0.1524" layer="97" style="dashdot"/>
<wire x1="83.82" y1="93.98" x2="0" y2="93.98" width="0.1524" layer="97" style="dashdot"/>
<wire x1="83.82" y1="0" x2="0" y2="0" width="0.1524" layer="97" style="dashdot"/>
</plain>
<instances>
<instance part="Q1" gate="G$1" x="35.56" y="60.96" smashed="yes">
<attribute name="NAME" x="40.64" y="60.96" size="1.778" layer="95"/>
<attribute name="VALUE" x="40.64" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="Q2" gate="G$1" x="50.8" y="38.1" smashed="yes">
<attribute name="NAME" x="55.88" y="38.1" size="1.778" layer="95"/>
<attribute name="VALUE" x="55.88" y="35.56" size="1.778" layer="96"/>
</instance>
<instance part="Q3" gate="G$1" x="66.04" y="15.24" smashed="yes">
<attribute name="NAME" x="71.12" y="15.24" size="1.778" layer="95"/>
<attribute name="VALUE" x="71.12" y="12.7" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY1" gate="+5V" x="25.4" y="111.76" rot="R270"/>
<instance part="SUPPLY2" gate="GND" x="25.4" y="101.6" rot="R90"/>
<instance part="SUPPLY3" gate="+5V" x="30.48" y="81.28" rot="R90"/>
<instance part="SUPPLY4" gate="GND" x="68.58" y="5.08"/>
<instance part="SUPPLY5" gate="GND" x="53.34" y="27.94"/>
<instance part="SUPPLY6" gate="GND" x="38.1" y="50.8"/>
<instance part="DUETX" gate="G$1" x="10.16" y="33.02" rot="R90"/>
<instance part="EXT_DRIVER_X" gate="G$1" x="50.8" y="76.2"/>
<instance part="Q4" gate="G$1" x="124.46" y="60.96" smashed="yes">
<attribute name="NAME" x="129.54" y="60.96" size="1.778" layer="95"/>
<attribute name="VALUE" x="129.54" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="Q5" gate="G$1" x="139.7" y="38.1" smashed="yes">
<attribute name="NAME" x="144.78" y="38.1" size="1.778" layer="95"/>
<attribute name="VALUE" x="144.78" y="35.56" size="1.778" layer="96"/>
</instance>
<instance part="Q6" gate="G$1" x="154.94" y="15.24" smashed="yes">
<attribute name="NAME" x="160.02" y="15.24" size="1.778" layer="95"/>
<attribute name="VALUE" x="160.02" y="12.7" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY7" gate="+5V" x="119.38" y="81.28" rot="R90"/>
<instance part="SUPPLY8" gate="GND" x="157.48" y="5.08"/>
<instance part="SUPPLY9" gate="GND" x="142.24" y="27.94"/>
<instance part="SUPPLY10" gate="GND" x="127" y="50.8"/>
<instance part="DUETY" gate="G$1" x="99.06" y="33.02" rot="R90"/>
<instance part="EXT_DRIVER_Y" gate="G$1" x="139.7" y="76.2"/>
<instance part="Q7" gate="G$1" x="213.36" y="63.5" smashed="yes">
<attribute name="NAME" x="218.44" y="63.5" size="1.778" layer="95"/>
<attribute name="VALUE" x="218.44" y="60.96" size="1.778" layer="96"/>
</instance>
<instance part="Q8" gate="G$1" x="228.6" y="40.64" smashed="yes">
<attribute name="NAME" x="233.68" y="40.64" size="1.778" layer="95"/>
<attribute name="VALUE" x="233.68" y="38.1" size="1.778" layer="96"/>
</instance>
<instance part="Q9" gate="G$1" x="243.84" y="17.78" smashed="yes">
<attribute name="NAME" x="248.92" y="17.78" size="1.778" layer="95"/>
<attribute name="VALUE" x="248.92" y="15.24" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY11" gate="+5V" x="208.28" y="83.82" rot="R90"/>
<instance part="SUPPLY12" gate="GND" x="246.38" y="7.62"/>
<instance part="SUPPLY13" gate="GND" x="231.14" y="30.48"/>
<instance part="SUPPLY14" gate="GND" x="215.9" y="53.34"/>
<instance part="DUETZ" gate="G$1" x="187.96" y="35.56" rot="R90"/>
<instance part="EXT_DRIVER_Z" gate="G$1" x="228.6" y="78.74"/>
<instance part="VIN" gate="G$1" x="13.97" y="106.68" rot="R90"/>
<instance part="R1" gate="G$1" x="20.32" y="60.96"/>
<instance part="R2" gate="G$1" x="33.02" y="38.1"/>
<instance part="R3" gate="G$1" x="45.72" y="15.24"/>
<instance part="R4" gate="G$1" x="109.22" y="60.96"/>
<instance part="R5" gate="G$1" x="114.3" y="38.1"/>
<instance part="R6" gate="G$1" x="134.62" y="15.24"/>
<instance part="R7" gate="G$1" x="198.12" y="63.5"/>
<instance part="R8" gate="G$1" x="208.28" y="40.64"/>
<instance part="R9" gate="G$1" x="223.52" y="17.78"/>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="SUPPLY1" gate="+5V" pin="+5V"/>
<wire x1="20.32" y1="111.76" x2="22.86" y2="111.76" width="0.1524" layer="91"/>
<pinref part="VIN" gate="G$1" pin="P$2"/>
<wire x1="13.97" y1="109.22" x2="20.32" y2="109.22" width="0.1524" layer="91"/>
<wire x1="20.32" y1="109.22" x2="20.32" y2="111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SUPPLY3" gate="+5V" pin="+5V"/>
<wire x1="33.02" y1="81.28" x2="38.1" y2="81.28" width="0.1524" layer="91"/>
<pinref part="EXT_DRIVER_X" gate="G$1" pin="P$1"/>
<wire x1="38.1" y1="81.28" x2="38.1" y2="76.2" width="0.1524" layer="91"/>
<pinref part="EXT_DRIVER_X" gate="G$1" pin="P$3"/>
<wire x1="38.1" y1="81.28" x2="48.26" y2="81.28" width="0.1524" layer="91"/>
<wire x1="48.26" y1="81.28" x2="48.26" y2="76.2" width="0.1524" layer="91"/>
<junction x="38.1" y="81.28"/>
<pinref part="EXT_DRIVER_X" gate="G$1" pin="P$5"/>
<wire x1="48.26" y1="81.28" x2="58.42" y2="81.28" width="0.1524" layer="91"/>
<wire x1="58.42" y1="81.28" x2="58.42" y2="76.2" width="0.1524" layer="91"/>
<junction x="48.26" y="81.28"/>
</segment>
<segment>
<pinref part="SUPPLY7" gate="+5V" pin="+5V"/>
<wire x1="121.92" y1="81.28" x2="127" y2="81.28" width="0.1524" layer="91"/>
<pinref part="EXT_DRIVER_Y" gate="G$1" pin="P$1"/>
<wire x1="127" y1="81.28" x2="127" y2="76.2" width="0.1524" layer="91"/>
<pinref part="EXT_DRIVER_Y" gate="G$1" pin="P$3"/>
<wire x1="127" y1="81.28" x2="137.16" y2="81.28" width="0.1524" layer="91"/>
<wire x1="137.16" y1="81.28" x2="137.16" y2="76.2" width="0.1524" layer="91"/>
<junction x="127" y="81.28"/>
<pinref part="EXT_DRIVER_Y" gate="G$1" pin="P$5"/>
<wire x1="137.16" y1="81.28" x2="147.32" y2="81.28" width="0.1524" layer="91"/>
<wire x1="147.32" y1="81.28" x2="147.32" y2="76.2" width="0.1524" layer="91"/>
<junction x="137.16" y="81.28"/>
</segment>
<segment>
<pinref part="SUPPLY11" gate="+5V" pin="+5V"/>
<wire x1="210.82" y1="83.82" x2="215.9" y2="83.82" width="0.1524" layer="91"/>
<pinref part="EXT_DRIVER_Z" gate="G$1" pin="P$1"/>
<wire x1="215.9" y1="83.82" x2="215.9" y2="78.74" width="0.1524" layer="91"/>
<pinref part="EXT_DRIVER_Z" gate="G$1" pin="P$3"/>
<wire x1="215.9" y1="83.82" x2="226.06" y2="83.82" width="0.1524" layer="91"/>
<wire x1="226.06" y1="83.82" x2="226.06" y2="78.74" width="0.1524" layer="91"/>
<junction x="215.9" y="83.82"/>
<pinref part="EXT_DRIVER_Z" gate="G$1" pin="P$5"/>
<wire x1="226.06" y1="83.82" x2="236.22" y2="83.82" width="0.1524" layer="91"/>
<wire x1="236.22" y1="83.82" x2="236.22" y2="78.74" width="0.1524" layer="91"/>
<junction x="226.06" y="83.82"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
<pinref part="VIN" gate="G$1" pin="P$1"/>
<wire x1="13.97" y1="104.14" x2="20.32" y2="104.14" width="0.1524" layer="91"/>
<wire x1="20.32" y1="104.14" x2="20.32" y2="101.6" width="0.1524" layer="91"/>
<wire x1="20.32" y1="101.6" x2="22.86" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q1" gate="G$1" pin="E"/>
<pinref part="SUPPLY6" gate="GND" pin="GND"/>
<wire x1="38.1" y1="51.435" x2="38.1" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q2" gate="G$1" pin="E"/>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<wire x1="53.34" y1="28.575" x2="53.34" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q3" gate="G$1" pin="E"/>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
<wire x1="68.58" y1="5.715" x2="68.58" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q4" gate="G$1" pin="E"/>
<pinref part="SUPPLY10" gate="GND" pin="GND"/>
<wire x1="127" y1="51.435" x2="127" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q5" gate="G$1" pin="E"/>
<pinref part="SUPPLY9" gate="GND" pin="GND"/>
<wire x1="142.24" y1="28.575" x2="142.24" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q6" gate="G$1" pin="E"/>
<pinref part="SUPPLY8" gate="GND" pin="GND"/>
<wire x1="157.48" y1="5.715" x2="157.48" y2="7.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q7" gate="G$1" pin="E"/>
<pinref part="SUPPLY14" gate="GND" pin="GND"/>
<wire x1="215.9" y1="53.975" x2="215.9" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q8" gate="G$1" pin="E"/>
<pinref part="SUPPLY13" gate="GND" pin="GND"/>
<wire x1="231.14" y1="31.115" x2="231.14" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q9" gate="G$1" pin="E"/>
<pinref part="SUPPLY12" gate="GND" pin="GND"/>
<wire x1="246.38" y1="8.255" x2="246.38" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X_EN-" class="0">
<segment>
<pinref part="EXT_DRIVER_X" gate="G$1" pin="P$2"/>
<wire x1="43.18" y1="76.2" x2="43.18" y2="68.58" width="0.1524" layer="91"/>
<wire x1="43.18" y1="68.58" x2="38.1" y2="68.58" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="C"/>
<wire x1="38.1" y1="68.58" x2="38.1" y2="70.485" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X_DIR-" class="0">
<segment>
<pinref part="Q2" gate="G$1" pin="C"/>
<pinref part="EXT_DRIVER_X" gate="G$1" pin="P$4"/>
<wire x1="53.34" y1="47.625" x2="53.34" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="X_STEP-" class="0">
<segment>
<pinref part="EXT_DRIVER_X" gate="G$1" pin="P$6"/>
<wire x1="63.5" y1="76.2" x2="63.5" y2="68.58" width="0.1524" layer="91"/>
<wire x1="63.5" y1="68.58" x2="68.58" y2="68.58" width="0.1524" layer="91"/>
<pinref part="Q3" gate="G$1" pin="C"/>
<wire x1="68.58" y1="68.58" x2="68.58" y2="24.765" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y_EN-" class="0">
<segment>
<pinref part="EXT_DRIVER_Y" gate="G$1" pin="P$2"/>
<wire x1="132.08" y1="76.2" x2="132.08" y2="68.58" width="0.1524" layer="91"/>
<wire x1="132.08" y1="68.58" x2="127" y2="68.58" width="0.1524" layer="91"/>
<pinref part="Q4" gate="G$1" pin="C"/>
<wire x1="127" y1="68.58" x2="127" y2="70.485" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y_DIR-" class="0">
<segment>
<pinref part="Q5" gate="G$1" pin="C"/>
<pinref part="EXT_DRIVER_Y" gate="G$1" pin="P$4"/>
<wire x1="142.24" y1="47.625" x2="142.24" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Y_STEP-" class="0">
<segment>
<pinref part="EXT_DRIVER_Y" gate="G$1" pin="P$6"/>
<wire x1="152.4" y1="76.2" x2="152.4" y2="68.58" width="0.1524" layer="91"/>
<wire x1="152.4" y1="68.58" x2="157.48" y2="68.58" width="0.1524" layer="91"/>
<pinref part="Q6" gate="G$1" pin="C"/>
<wire x1="157.48" y1="68.58" x2="157.48" y2="24.765" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z_EN-" class="0">
<segment>
<pinref part="EXT_DRIVER_Z" gate="G$1" pin="P$2"/>
<wire x1="220.98" y1="78.74" x2="220.98" y2="71.12" width="0.1524" layer="91"/>
<wire x1="220.98" y1="71.12" x2="215.9" y2="71.12" width="0.1524" layer="91"/>
<wire x1="215.9" y1="71.12" x2="215.9" y2="73.025" width="0.1524" layer="91"/>
<pinref part="Q7" gate="G$1" pin="C"/>
</segment>
</net>
<net name="Z_DIR-" class="0">
<segment>
<pinref part="Q8" gate="G$1" pin="C"/>
<pinref part="EXT_DRIVER_Z" gate="G$1" pin="P$4"/>
<wire x1="231.14" y1="50.165" x2="231.14" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="Z_STEP-" class="0">
<segment>
<pinref part="EXT_DRIVER_Z" gate="G$1" pin="P$6"/>
<wire x1="241.3" y1="78.74" x2="241.3" y2="71.12" width="0.1524" layer="91"/>
<wire x1="241.3" y1="71.12" x2="246.38" y2="71.12" width="0.1524" layer="91"/>
<pinref part="Q9" gate="G$1" pin="C"/>
<wire x1="246.38" y1="71.12" x2="246.38" y2="27.305" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="B"/>
<pinref part="R1" gate="G$1" pin="P$2"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="P$1"/>
<pinref part="DUETX" gate="G$1" pin="P$3"/>
<wire x1="15.24" y1="60.96" x2="15.24" y2="43.18" width="0.1524" layer="91"/>
<wire x1="15.24" y1="43.18" x2="12.7" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="DUETX" gate="G$1" pin="P$2"/>
<pinref part="R2" gate="G$1" pin="P$1"/>
<wire x1="12.7" y1="38.1" x2="27.94" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="P$2"/>
<pinref part="Q2" gate="G$1" pin="B"/>
<wire x1="38.1" y1="38.1" x2="40.64" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="DUETX" gate="G$1" pin="P$1"/>
<wire x1="12.7" y1="33.02" x2="15.24" y2="33.02" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="P$1"/>
<wire x1="15.24" y1="33.02" x2="15.24" y2="15.24" width="0.1524" layer="91"/>
<wire x1="15.24" y1="15.24" x2="40.64" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="P$2"/>
<pinref part="Q3" gate="G$1" pin="B"/>
<wire x1="50.8" y1="15.24" x2="55.88" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="P$2"/>
<pinref part="Q9" gate="G$1" pin="B"/>
<wire x1="228.6" y1="17.78" x2="233.68" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="P$1"/>
<wire x1="218.44" y1="17.78" x2="193.04" y2="17.78" width="0.1524" layer="91"/>
<wire x1="193.04" y1="17.78" x2="193.04" y2="35.56" width="0.1524" layer="91"/>
<pinref part="DUETZ" gate="G$1" pin="P$1"/>
<wire x1="193.04" y1="35.56" x2="190.5" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="DUETZ" gate="G$1" pin="P$2"/>
<pinref part="R8" gate="G$1" pin="P$1"/>
<wire x1="190.5" y1="40.64" x2="203.2" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R8" gate="G$1" pin="P$2"/>
<pinref part="Q8" gate="G$1" pin="B"/>
<wire x1="213.36" y1="40.64" x2="218.44" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="DUETZ" gate="G$1" pin="P$3"/>
<wire x1="190.5" y1="45.72" x2="193.04" y2="45.72" width="0.1524" layer="91"/>
<wire x1="193.04" y1="45.72" x2="193.04" y2="63.5" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="P$2"/>
<pinref part="Q7" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="P$2"/>
<pinref part="Q6" gate="G$1" pin="B"/>
<wire x1="139.7" y1="15.24" x2="144.78" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="P$1"/>
<wire x1="129.54" y1="15.24" x2="104.14" y2="15.24" width="0.1524" layer="91"/>
<wire x1="104.14" y1="15.24" x2="104.14" y2="33.02" width="0.1524" layer="91"/>
<pinref part="DUETY" gate="G$1" pin="P$1"/>
<wire x1="104.14" y1="33.02" x2="101.6" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="DUETY" gate="G$1" pin="P$2"/>
<pinref part="R5" gate="G$1" pin="P$1"/>
<wire x1="101.6" y1="38.1" x2="109.22" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="P$2"/>
<pinref part="Q5" gate="G$1" pin="B"/>
<wire x1="119.38" y1="38.1" x2="129.54" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="DUETY" gate="G$1" pin="P$3"/>
<wire x1="101.6" y1="43.18" x2="104.14" y2="43.18" width="0.1524" layer="91"/>
<wire x1="104.14" y1="43.18" x2="104.14" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="P$1"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="P$2"/>
<pinref part="Q4" gate="G$1" pin="B"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
