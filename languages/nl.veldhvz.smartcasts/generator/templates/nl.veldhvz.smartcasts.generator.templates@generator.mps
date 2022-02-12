<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2411daee-7da7-4d95-8385-28ac59e3193c(nl.veldhvz.smartcasts.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="2zx5" ref="r:cf6d662a-7432-4e3b-be7d-5864282d542c(nl.veldhvz.smartcasts.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="ykvv" ref="r:aed8b1e5-a052-45c1-b903-336a74a95a75(nl.veldhvz.smartcasts.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
      <concept id="5455284157994012186" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitLink" flags="ng" index="2pIpSj">
        <reference id="5455284157994012188" name="link" index="2pIpSl" />
        <child id="1595412875168045827" name="initValue" index="28nt2d" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
      <concept id="8182547171709752110" name="jetbrains.mps.lang.quotation.structure.NodeBuilderExpression" flags="nn" index="36biLy">
        <child id="8182547171709752112" name="expression" index="36biLW" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="6TkHOIgAI5S">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="5rfTprTWCCT" role="3acgRq">
      <ref role="30HIoZ" to="2zx5:35H7XdESSJG" resolve="SmartCastedVariableReference" />
      <node concept="1Koe21" id="5rfTprTWCDK" role="1lVwrX">
        <node concept="3clFb_" id="5rfTprTWCE0" role="1Koe22">
          <property role="TrG5h" value="method" />
          <node concept="3clFbS" id="5rfTprTWCE3" role="3clF47">
            <node concept="3cpWs8" id="5rfTprTWEGQ" role="3cqZAp">
              <node concept="3cpWsn" id="5rfTprTWEGR" role="3cpWs9">
                <property role="TrG5h" value="x" />
                <node concept="3uibUv" id="5rfTprTWEGS" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5rfTprTWCFx" role="3cqZAp">
              <node concept="3cpWsn" id="5rfTprTWCF$" role="3cpWs9">
                <property role="TrG5h" value="y" />
                <node concept="10Oyi0" id="5rfTprTWCFv" role="1tU5fm" />
                <node concept="1eOMI4" id="5rfTprTWCDe" role="33vP2m">
                  <node concept="10QFUN" id="5rfTprTWCDb" role="1eOMHV">
                    <node concept="3uibUv" id="5rfTprTWCMk" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                      <node concept="29HgVG" id="5rfTprTWFSJ" role="lGtFl">
                        <node concept="3NFfHV" id="5rfTprTWFUW" role="3NFExx">
                          <node concept="3clFbS" id="5rfTprTWFUX" role="2VODD2">
                            <node concept="3cpWs8" id="5rfTprU4D6x" role="3cqZAp">
                              <node concept="3cpWsn" id="5rfTprU4D6y" role="3cpWs9">
                                <property role="TrG5h" value="type" />
                                <node concept="3Tqbb2" id="5rfTprU4D1_" role="1tU5fm">
                                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                                </node>
                                <node concept="2OqwBi" id="5rfTprU4D6z" role="33vP2m">
                                  <node concept="30H73N" id="5rfTprU4D6$" role="2Oq$k0" />
                                  <node concept="2qgKlT" id="5rfTprU4D6_" role="2OqNvi">
                                    <ref role="37wK5l" to="ykvv:5rfTprTR5lf" resolve="getType" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="5rfTprU4DsO" role="3cqZAp">
                              <node concept="3clFbS" id="5rfTprU4DsQ" role="3clFbx">
                                <node concept="3cpWs6" id="5rfTprU4F4B" role="3cqZAp">
                                  <node concept="2c44tf" id="5rfTprU4Gk7" role="3cqZAk">
                                    <node concept="3uibUv" id="5rfTprU4HBJ" role="2c44tc">
                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="5rfTprU4E5O" role="3clFbw">
                                <node concept="10Nm6u" id="5rfTprU4E_A" role="3uHU7w" />
                                <node concept="37vLTw" id="5rfTprU4DFg" role="3uHU7B">
                                  <ref role="3cqZAo" node="5rfTprU4D6y" resolve="type" />
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs6" id="5rfTprU4Ko8" role="3cqZAp">
                              <node concept="37vLTw" id="5rfTprU4KoH" role="3cqZAk">
                                <ref role="3cqZAo" node="5rfTprU4D6y" resolve="type" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="5rfTprTWFeb" role="10QFUP">
                      <ref role="3cqZAo" node="5rfTprTWEGR" resolve="x" />
                      <node concept="29HgVG" id="5rfTprTX5DP" role="lGtFl">
                        <node concept="3NFfHV" id="5rfTprTX5JE" role="3NFExx">
                          <node concept="3clFbS" id="5rfTprTX5JF" role="2VODD2">
                            <node concept="3clFbF" id="5rfTprTX5PW" role="3cqZAp">
                              <node concept="2pJPEk" id="5rfTprTX5PU" role="3clFbG">
                                <node concept="2pJPED" id="5rfTprTX5PV" role="2pJPEn">
                                  <ref role="2pJxaS" to="tpee:fz7vLUo" resolve="VariableReference" />
                                  <node concept="2pIpSj" id="5rfTprTX6dU" role="2pJxcM">
                                    <ref role="2pIpSl" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                                    <node concept="36biLy" id="5rfTprTX6kq" role="28nt2d">
                                      <node concept="2OqwBi" id="5rfTprTX6Kq" role="36biLW">
                                        <node concept="30H73N" id="5rfTprTX6qY" role="2Oq$k0" />
                                        <node concept="3TrEf2" id="5rfTprTX7lr" role="2OqNvi">
                                          <ref role="3Tt5mk" to="2zx5:5rSvAAOkb0X" resolve="variableDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="raruj" id="5rfTprTWCTL" role="lGtFl" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cqZAl" id="5rfTprTWCEi" role="3clF45" />
          <node concept="3Tm1VV" id="5rfTprTWCE5" role="1B3o_S" />
        </node>
      </node>
    </node>
  </node>
</model>

