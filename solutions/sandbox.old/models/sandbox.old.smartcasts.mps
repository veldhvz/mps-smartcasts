<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:da8b7c4b-9cd4-49d5-838b-ccfb38d8b6d3(sandbox.old.smartcasts)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="c45dae0d-3002-45a6-9357-a3abf67e30a3" name="nl.veldhvz.smartcasts" version="0" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="c45dae0d-3002-45a6-9357-a3abf67e30a3" name="nl.veldhvz.smartcasts">
      <concept id="3561537873211788268" name="nl.veldhvz.smartcasts.structure.SmartCastedVariableReference" flags="ng" index="1rzDgZ">
        <reference id="6266897873947897917" name="variableDeclaration" index="3yEcTk" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1883223317721008708" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfStatement" flags="nn" index="Jncv_">
        <reference id="1883223317721008712" name="nodeConcept" index="JncvD" />
        <child id="1883223317721008709" name="body" index="Jncv$" />
        <child id="1883223317721008711" name="variable" index="JncvA" />
        <child id="1883223317721008710" name="nodeExpression" index="JncvB" />
      </concept>
      <concept id="1883223317721008713" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVariable" flags="ng" index="JncvC" />
      <concept id="1883223317721107059" name="jetbrains.mps.lang.smodel.structure.IfInstanceOfVarReference" flags="nn" index="Jnkvi" />
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172326502327" name="jetbrains.mps.lang.smodel.structure.Concept_IsExactlyOperation" flags="nn" index="3O6GUB">
        <child id="1206733650006" name="conceptArgument" index="3QVz_e" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="35H7XdEVWJi">
    <property role="TrG5h" value="TrySmartCasting" />
    <node concept="2tJIrI" id="35H7XdEVWKu" role="jymVt" />
    <node concept="3clFb_" id="35H7XdEVWKR" role="jymVt">
      <property role="TrG5h" value="test" />
      <node concept="3cqZAl" id="35H7XdEVWKT" role="3clF45" />
      <node concept="3Tm1VV" id="35H7XdEVWKU" role="1B3o_S" />
      <node concept="3clFbS" id="35H7XdEVWKV" role="3clF47">
        <node concept="3clFbJ" id="5CeOzIjDPZb" role="3cqZAp">
          <node concept="3clFbS" id="5CeOzIjDPZd" role="3clFbx">
            <node concept="3clFbF" id="5CeOzIjDTed" role="3cqZAp">
              <node concept="2OqwBi" id="5CeOzIjDQCt" role="3clFbG">
                <node concept="liA8E" id="5CeOzIjDQH9" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Integer.intValue()" resolve="intValue" />
                </node>
                <node concept="1rzDgZ" id="5rSvAAOlrD1" role="2Oq$k0">
                  <ref role="3yEcTk" node="5CeOzIjDTA9" resolve="param" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5rfTprU59tj" role="3cqZAp">
              <node concept="37vLTI" id="5rfTprU5dxS" role="3clFbG">
                <node concept="37vLTw" id="5rfTprU5dWq" role="37vLTJ">
                  <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="param" />
                </node>
                <node concept="Xl_RD" id="5rfTprU5bDg" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="5rfTprTZ4qI" role="3clFbw">
            <node concept="2ZW3vV" id="5CeOzIjDUEa" role="3uHU7B">
              <node concept="3uibUv" id="5CeOzIjDUGF" role="2ZW6by">
                <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
              </node>
              <node concept="37vLTw" id="5CeOzIjDQ0S" role="2ZW6bz">
                <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="param" />
              </node>
            </node>
            <node concept="3eOSWO" id="2H0nDnYnbWg" role="3uHU7w">
              <node concept="2OqwBi" id="5rfTprTZ5u0" role="3uHU7B">
                <node concept="liA8E" id="5rfTprTZ5u2" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Integer.intValue()" resolve="intValue" />
                </node>
                <node concept="1rzDgZ" id="5rSvAAOlpax" role="2Oq$k0">
                  <ref role="3yEcTk" node="5CeOzIjDTA9" resolve="param" />
                </node>
              </node>
              <node concept="3cmrfG" id="2H0nDnYnbZH" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5CeOzIjDS5k" role="3cqZAp">
          <node concept="3clFbS" id="5CeOzIjDS5l" role="3clFbx">
            <node concept="3clFbF" id="5rfTprTLfQI" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprTLfQJ" role="3clFbG">
                <node concept="liA8E" id="5rfTprTLfQL" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                </node>
                <node concept="37vLTw" id="5rfTprTSbUC" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="param" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="5CeOzIjDS9N" role="3clFbw">
            <node concept="1eOMI4" id="5CeOzIjDSlu" role="3fr31v">
              <node concept="2ZW3vV" id="5CeOzIjDULF" role="1eOMHV">
                <node concept="3uibUv" id="5CeOzIjDUN0" role="2ZW6by">
                  <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
                </node>
                <node concept="37vLTw" id="5CeOzIjDUJu" role="2ZW6bz">
                  <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="param" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5CeOzIjDSpw" role="9aQIa">
            <node concept="3clFbS" id="5CeOzIjDSpx" role="9aQI4">
              <node concept="3clFbF" id="5CeOzIjDS5m" role="3cqZAp">
                <node concept="2OqwBi" id="5CeOzIjDTgc" role="3clFbG">
                  <node concept="liA8E" id="5CeOzIjDTge" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Integer.intValue()" resolve="intValue" />
                  </node>
                  <node concept="1rzDgZ" id="5rSvAAOltMW" role="2Oq$k0">
                    <ref role="3yEcTk" node="5CeOzIjDTA9" resolve="param" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5rfTprTXjrL" role="3cqZAp">
          <node concept="3clFbS" id="5rfTprTXjrN" role="3clFbx">
            <node concept="3clFbF" id="5rfTprTZW9$" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprTZWq5" role="3clFbG">
                <node concept="3TrEf2" id="5rfTprTZXkV" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:gVK4C9J" resolve="condition" />
                </node>
                <node concept="1rzDgZ" id="5rSvAAOlvRE" role="2Oq$k0">
                  <ref role="3yEcTk" node="5rfTprTXj5x" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5rfTprTXjEf" role="3clFbw">
            <node concept="37vLTw" id="5rfTprTXjyK" role="2Oq$k0">
              <ref role="3cqZAo" node="5rfTprTXj5x" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="5rfTprTXjQB" role="2OqNvi">
              <node concept="chp4Y" id="5rfTprTXk6x" role="cj9EA">
                <ref role="cht4Q" to="tpee:gVK4zB9" resolve="TernaryOperatorExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5rfTprU0gWE" role="3cqZAp">
          <node concept="3clFbS" id="5rfTprU0gWG" role="3clFbx">
            <node concept="3clFbF" id="5rfTprU1Wew" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprU1WPj" role="3clFbG">
                <node concept="3TrEf2" id="5rfTprU1X6Z" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fJuHU4s" resolve="leftExpression" />
                </node>
                <node concept="1rzDgZ" id="5rSvAAOlxk8" role="2Oq$k0">
                  <ref role="3yEcTk" node="5rfTprTXj5x" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5rfTprU0i5E" role="3clFbw">
            <node concept="2OqwBi" id="5rfTprU0htc" role="2Oq$k0">
              <node concept="37vLTw" id="5rfTprU0hdm" role="2Oq$k0">
                <ref role="3cqZAo" node="5rfTprTXj5x" resolve="node" />
              </node>
              <node concept="2yIwOk" id="5rfTprU0hKw" role="2OqNvi" />
            </node>
            <node concept="3O6GUB" id="5rfTprU0iMJ" role="2OqNvi">
              <node concept="chp4Y" id="5rfTprU0iV2" role="3QVz_e">
                <ref role="cht4Q" to="tpee:fJuHJVf" resolve="BinaryOperation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5rfTprU1Xhy" role="3cqZAp">
          <node concept="3clFbS" id="5rfTprU1Xhz" role="3clFbx">
            <node concept="3clFbF" id="5rfTprU1Xh$" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprU1Xh_" role="3clFbG">
                <node concept="3TrEf2" id="5rfTprU1XhB" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fJuHU4s" resolve="leftExpression" />
                </node>
                <node concept="1rzDgZ" id="5rSvAAOl$sK" role="2Oq$k0">
                  <ref role="3yEcTk" node="5rfTprTXj5x" resolve="node" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5rfTprU1XhC" role="3clFbw">
            <node concept="2OqwBi" id="5rfTprU1XhD" role="2Oq$k0">
              <node concept="37vLTw" id="5rfTprU1XhE" role="2Oq$k0">
                <ref role="3cqZAo" node="5rfTprTXj5x" resolve="node" />
              </node>
              <node concept="2yIwOk" id="5rfTprU1XhF" role="2OqNvi" />
            </node>
            <node concept="2Zo12i" id="5rfTprU1XN3" role="2OqNvi">
              <node concept="chp4Y" id="5rfTprU1XVg" role="2Zo12j">
                <ref role="cht4Q" to="tpee:fHWc73I" resolve="AndExpression" />
              </node>
            </node>
          </node>
        </node>
        <node concept="Jncv_" id="5rfTprU6fMs" role="3cqZAp">
          <ref role="JncvD" to="tpee:fHWc73I" resolve="AndExpression" />
          <node concept="37vLTw" id="5rfTprU6grN" role="JncvB">
            <ref role="3cqZAo" node="5rfTprTXj5x" resolve="node" />
          </node>
          <node concept="3clFbS" id="5rfTprU6fMw" role="Jncv$">
            <node concept="3clFbF" id="5rfTprU6hcx" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprU6hwu" role="3clFbG">
                <node concept="Jnkvi" id="5rfTprU6hcw" role="2Oq$k0">
                  <ref role="1M0zk5" node="5rfTprU6fMy" resolve="a" />
                </node>
                <node concept="3TrEf2" id="5rfTprU6i6X" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fJuHU4s" resolve="leftExpression" />
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="5rfTprU6fMy" role="JncvA">
            <property role="TrG5h" value="a" />
            <node concept="2jxLKc" id="5rfTprU6fMz" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="5rfTprU6RkW" role="3cqZAp">
          <node concept="3clFbS" id="5rfTprU6RkY" role="3clFbx">
            <node concept="3cpWs8" id="5rfTprU8416" role="3cqZAp">
              <node concept="3cpWsn" id="5rfTprU8417" role="3cpWs9">
                <property role="TrG5h" value="s2" />
                <node concept="3uibUv" id="5rfTprU83OQ" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                </node>
                <node concept="0kSF2" id="5rfTprU8418" role="33vP2m">
                  <node concept="3uibUv" id="5rfTprU8419" role="0kSFW">
                    <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                  </node>
                  <node concept="37vLTw" id="5rfTprU841a" role="0kSFX">
                    <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="param" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5rfTprU6UNE" role="3cqZAp">
              <node concept="3cpWsn" id="5rfTprU6UNF" role="3cpWs9">
                <property role="TrG5h" value="s" />
                <node concept="3uibUv" id="5rfTprU6UGh" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                </node>
                <node concept="1eOMI4" id="5rfTprU6UNG" role="33vP2m">
                  <node concept="10QFUN" id="5rfTprU6UNH" role="1eOMHV">
                    <node concept="37vLTw" id="5rfTprU6UNI" role="10QFUP">
                      <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="param" />
                    </node>
                    <node concept="3uibUv" id="5rfTprU6UNJ" role="10QFUM">
                      <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5rfTprU8dl9" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprU8dl6" role="3clFbG">
                <node concept="10M0yZ" id="5rfTprU8dl7" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="5rfTprU8dl8" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="3cpWs3" id="5rfTprU8fSA" role="37wK5m">
                    <node concept="37vLTw" id="5rfTprU8fYb" role="3uHU7w">
                      <ref role="3cqZAo" node="5rfTprU8417" resolve="s2" />
                    </node>
                    <node concept="3cpWs3" id="5rfTprU8eH0" role="3uHU7B">
                      <node concept="Xl_RD" id="5rfTprU8dL$" role="3uHU7B">
                        <property role="Xl_RC" value="" />
                      </node>
                      <node concept="37vLTw" id="5rfTprU8eMt" role="3uHU7w">
                        <ref role="3cqZAo" node="5rfTprU6UNF" resolve="s" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5rfTprU6S_x" role="3clFbw">
            <node concept="3uibUv" id="5rfTprU6SYI" role="2ZW6by">
              <ref role="3uigEE" to="wyt6:~Double" resolve="Double" />
            </node>
            <node concept="37vLTw" id="5rfTprU6Sfq" role="2ZW6bz">
              <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="param" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5rfTprU94_x" role="3cqZAp">
          <node concept="3clFbS" id="5rfTprU94_z" role="3clFbx">
            <node concept="3cpWs8" id="5rfTprU99DQ" role="3cqZAp">
              <node concept="3cpWsn" id="5rfTprU99DR" role="3cpWs9">
                <property role="TrG5h" value="and" />
                <node concept="3Tqbb2" id="5rfTprU99r5" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fHWc73I" resolve="AndExpression" />
                </node>
                <node concept="1PxgMI" id="5rfTprU99DS" role="33vP2m">
                  <property role="1BlNFB" value="true" />
                  <node concept="chp4Y" id="5rfTprU99DT" role="3oSUPX">
                    <ref role="cht4Q" to="tpee:fHWc73I" resolve="AndExpression" />
                  </node>
                  <node concept="37vLTw" id="5rfTprU99DU" role="1m5AlR">
                    <ref role="3cqZAo" node="5rfTprTXj5x" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5rfTprU9b4L" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprU9b4I" role="3clFbG">
                <node concept="10M0yZ" id="5rfTprU9b4J" role="2Oq$k0">
                  <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                  <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="5rfTprU9b4K" role="2OqNvi">
                  <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                  <node concept="3cpWs3" id="5rfTprU9cJE" role="37wK5m">
                    <node concept="2OqwBi" id="5rfTprU9yu3" role="3uHU7w">
                      <node concept="37vLTw" id="5rfTprU9cTL" role="2Oq$k0">
                        <ref role="3cqZAo" node="5rfTprU99DR" resolve="and" />
                      </node>
                      <node concept="2qgKlT" id="5rfTprU9zoe" role="2OqNvi">
                        <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="5rfTprU9b_5" role="3uHU7B">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5rfTprU96dX" role="3clFbw">
            <node concept="37vLTw" id="5rfTprU95qY" role="2Oq$k0">
              <ref role="3cqZAo" node="5rfTprTXj5x" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="5rfTprU96Ry" role="2OqNvi">
              <node concept="chp4Y" id="5rfTprU97hJ" role="cj9EA">
                <ref role="cht4Q" to="tpee:fHWc73I" resolve="AndExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5CeOzIjDTA9" role="3clF46">
        <property role="TrG5h" value="param" />
        <node concept="3uibUv" id="5CeOzIjDTA8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5rfTprTXj5x" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5rfTprTXj8q" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="35H7XdEVWJj" role="1B3o_S" />
  </node>
</model>

