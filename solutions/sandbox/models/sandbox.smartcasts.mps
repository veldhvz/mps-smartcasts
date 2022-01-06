<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:da8b7c4b-9cd4-49d5-838b-ccfb38d8b6d3(sandbox.smartcasts)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="c45dae0d-3002-45a6-9357-a3abf67e30a3" name="smartcasts" version="0" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="c45dae0d-3002-45a6-9357-a3abf67e30a3" name="smartcasts">
      <concept id="3561537873211788268" name="smartcasts.structure.SmartCastedVariableReference" flags="ng" index="1rzDgZ" />
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
                <node concept="1rzDgZ" id="5CeOzIjDUXz" role="2Oq$k0">
                  <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="x" />
                </node>
                <node concept="liA8E" id="5CeOzIjDQH9" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Integer.intValue()" resolve="intValue" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5CeOzIjDUEa" role="3clFbw">
            <node concept="3uibUv" id="5CeOzIjDUGF" role="2ZW6by">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
            <node concept="37vLTw" id="5CeOzIjDQ0S" role="2ZW6bz">
              <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="x" />
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
                  <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="x" />
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
                  <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5CeOzIjDSpw" role="9aQIa">
            <node concept="3clFbS" id="5CeOzIjDSpx" role="9aQI4">
              <node concept="3clFbF" id="5CeOzIjDS5m" role="3cqZAp">
                <node concept="2OqwBi" id="5CeOzIjDTgc" role="3clFbG">
                  <node concept="1rzDgZ" id="5CeOzIjDVgS" role="2Oq$k0">
                    <ref role="3cqZAo" node="5CeOzIjDTA9" resolve="x" />
                  </node>
                  <node concept="liA8E" id="5CeOzIjDTge" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Integer.intValue()" resolve="intValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5CeOzIjDTA9" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="3uibUv" id="5CeOzIjDTA8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="35H7XdEVWJj" role="1B3o_S" />
  </node>
</model>

