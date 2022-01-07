<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ae1a3ca0-e482-48ac-b792-a024db401dac(smartcasts.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT" />
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="1359186315025500371" name="xml" index="20twgj" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="5rfTprUa0Xo">
    <property role="TrG5h" value="smartcasts" />
    <property role="2DA0ip" value="../.." />
    <node concept="10PD9b" id="5rfTprUa0Xp" role="10PD9s" />
    <node concept="3b7kt6" id="5rfTprUa0Xq" role="10PD9s" />
    <node concept="398rNT" id="5rfTprUa0Xr" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2sgV4H" id="5rfTprUa0Xs" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" />
      <node concept="398BVA" id="5rfTprUa0Xt" role="2JcizS">
        <ref role="398BVh" node="5rfTprUa0Xr" resolve="mps_home" />
      </node>
    </node>
    <node concept="1l3spV" id="5rfTprUa0XS" role="1l3spN">
      <node concept="3981dG" id="5rfTprUa0XT" role="39821P">
        <node concept="3_J27D" id="5rfTprUa0XU" role="Nbhlr">
          <node concept="3Mxwew" id="5rfTprUa0XV" role="3MwsjC">
            <property role="3MwjfP" value="SmartCasts.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="5rfTprUa0XW" role="39821P">
          <ref role="m_rDy" node="5rfTprUa0XF" resolve="SmartCasts" />
          <node concept="pUk6x" id="5rfTprUa0XX" role="pUk7w" />
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="5rfTprUa0XF" role="3989C9">
      <property role="m$_wk" value="SmartCasts" />
      <node concept="3_J27D" id="5rfTprUa0XG" role="m$_yQ">
        <node concept="3Mxwew" id="5rfTprUa0XH" role="3MwsjC">
          <property role="3MwjfP" value="SmartCasts" />
        </node>
      </node>
      <node concept="3_J27D" id="5rfTprUa0XI" role="m$_w8">
        <node concept="3Mxwew" id="5rfTprUa0XJ" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="5rfTprUa0XK" role="m$_yh">
        <ref role="m$f5T" node="5rfTprUa0XE" resolve="SmartCasts" />
      </node>
      <node concept="m$_yC" id="5rfTprUa0XL" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" />
      </node>
      <node concept="m$_yC" id="5rfTprUa1nW" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4O0hKJpjIV3" resolve="jetbrains.mps.ide.devkit" />
      </node>
      <node concept="3_J27D" id="5rfTprUa0XM" role="m_cZH">
        <node concept="3Mxwew" id="5rfTprUa0XN" role="3MwsjC">
          <property role="3MwjfP" value="SmartCasts" />
        </node>
      </node>
      <node concept="2pNNFK" id="5rfTprUa0XO" role="20twgj">
        <property role="2pNNFO" value="depends" />
        <node concept="3o6iSG" id="5rfTprUa0XP" role="3o6s8t">
          <property role="3o6i5n" value="com.intellij.modules.platform" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5rfTprUa0XE" role="3989C9">
      <property role="TrG5h" value="SmartCasts" />
      <node concept="1E1JtD" id="5rfTprUa0Xz" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="smartcasts" />
        <property role="3LESm3" value="c45dae0d-3002-45a6-9357-a3abf67e30a3" />
        <node concept="55IIr" id="5rfTprUa0Xu" role="3LF7KH">
          <node concept="2Ry0Ak" id="5rfTprUa0Xv" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="5rfTprUa0Xw" role="2Ry0An">
              <property role="2Ry0Am" value="smartcasts" />
              <node concept="2Ry0Ak" id="5rfTprUa0Xx" role="2Ry0An">
                <property role="2Ry0Am" value="smartcasts.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0XY" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0XZ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0Y0" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0Y1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0Y2" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0Y3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0Y4" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0Y5" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0Y6" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0Y7" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LeP" resolve="jetbrains.mps.analyzers.runtime" />
          </node>
        </node>
        <node concept="1BupzO" id="5rfTprUa0Yc" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="5rfTprUa0Yd" role="1HemKq">
            <node concept="55IIr" id="5rfTprUa0Y8" role="3LXTmr">
              <node concept="2Ry0Ak" id="5rfTprUa0Y9" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5rfTprUa0Ya" role="2Ry0An">
                  <property role="2Ry0Am" value="smartcasts" />
                  <node concept="2Ry0Ak" id="5rfTprUa0Yb" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5rfTprUa0Ye" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0Yf" role="3bR37C">
          <node concept="1Busua" id="5rfTprUa0Yg" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1yeLz9" id="5rfTprUa0Yh" role="1TViLv">
          <property role="TrG5h" value="smartcasts.generator" />
          <property role="3LESm3" value="83b2e915-994d-4a24-9eba-c4dc802c8cd5" />
          <node concept="1SiIV0" id="5rfTprUa0Yi" role="3bR37C">
            <node concept="3bR9La" id="5rfTprUa0Yj" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1SiIV0" id="5rfTprUa0Yk" role="3bR37C">
            <node concept="3bR9La" id="5rfTprUa0Yl" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7YI57w6K08j" resolve="jetbrains.mps.baseLanguage#1129914002933" />
            </node>
          </node>
          <node concept="1BupzO" id="5rfTprUa0Yr" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="5rfTprUa0Ys" role="1HemKq">
              <node concept="55IIr" id="5rfTprUa0Ym" role="3LXTmr">
                <node concept="2Ry0Ak" id="5rfTprUa0Yn" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="5rfTprUa0Yo" role="2Ry0An">
                    <property role="2Ry0Am" value="smartcasts" />
                    <node concept="2Ry0Ak" id="5rfTprUa0Yp" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="5rfTprUa0Yq" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="5rfTprUa0Yt" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="5rfTprUa1ns" role="3bR31x">
          <node concept="3LXTmp" id="5rfTprUa1nt" role="3rtmxm">
            <node concept="55IIr" id="5rfTprUa1nu" role="3LXTmr">
              <node concept="2Ry0Ak" id="5rfTprUa1nv" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5rfTprUa1nw" role="2Ry0An">
                  <property role="2Ry0Am" value="smartcasts" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5rfTprUa1ny" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5rfTprUa0XD" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="pluginSolution" />
        <property role="3LESm3" value="bc105a2f-5ddb-414d-92dc-9416bc133ab7" />
        <node concept="55IIr" id="5rfTprUa0X$" role="3LF7KH">
          <node concept="2Ry0Ak" id="5rfTprUa0X_" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5rfTprUa0XA" role="2Ry0An">
              <property role="2Ry0Am" value="pluginSolution" />
              <node concept="2Ry0Ak" id="5rfTprUa0XB" role="2Ry0An">
                <property role="2Ry0Am" value="pluginSolution.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0Yu" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0Yv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0Yw" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0Yx" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0Yy" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0Yz" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0Y$" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0Y_" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0YA" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0YB" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0YC" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0YD" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0YE" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0YF" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:5bqL32k0kuu" resolve="jetbrains.mps.lang.dataFlow.pluginSolution" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa0YG" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa0YH" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:2eDSGe9d1qi" resolve="jetbrains.mps.ide" />
          </node>
        </node>
        <node concept="1BupzO" id="5rfTprUa0YM" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="5rfTprUa0YN" role="1HemKq">
            <node concept="55IIr" id="5rfTprUa0YI" role="3LXTmr">
              <node concept="2Ry0Ak" id="5rfTprUa0YJ" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5rfTprUa0YK" role="2Ry0An">
                  <property role="2Ry0Am" value="pluginSolution" />
                  <node concept="2Ry0Ak" id="5rfTprUa0YL" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5rfTprUa0YO" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5rfTprUa1mK" role="3bR37C">
          <node concept="3bR9La" id="5rfTprUa1mL" role="1SiIV1">
            <ref role="3bR37D" node="5rfTprUa0Xz" resolve="smartcasts" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

