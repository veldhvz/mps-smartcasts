<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:de3489d9-f6de-4d2b-8ddf-75755b11cb92(nl.veldhvz.smartcasts.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="2zx5" ref="r:cf6d662a-7432-4e3b-be7d-5864282d542c(nl.veldhvz.smartcasts.structure)" />
    <import index="ykvv" ref="r:aed8b1e5-a052-45c1-b903-336a74a95a75(nl.veldhvz.smartcasts.behavior)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1766949807893567867" name="jetbrains.mps.lang.typesystem.structure.OverridesConceptFunction" flags="ig" index="bXqS6" />
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF">
        <child id="422148324487088858" name="overridesFun" index="ujSXK" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="5rfTprU1YZp">
    <property role="TrG5h" value="check_SmartCastedVariableReference" />
    <node concept="3clFbS" id="5rfTprU1YZq" role="18ibNy">
      <node concept="3clFbJ" id="5rfTprU1Z8N" role="3cqZAp">
        <node concept="3clFbC" id="5rfTprU20zI" role="3clFbw">
          <node concept="10Nm6u" id="5rfTprU20Eb" role="3uHU7w" />
          <node concept="2OqwBi" id="5rfTprU1ZlT" role="3uHU7B">
            <node concept="1YBJjd" id="5rfTprU1Z8Z" role="2Oq$k0">
              <ref role="1YBMHb" node="5rfTprU1Z8E" resolve="smartCastedVariableReference" />
            </node>
            <node concept="2qgKlT" id="5rfTprU20iF" role="2OqNvi">
              <ref role="37wK5l" to="ykvv:5rfTprTR5lf" resolve="getType" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="5rfTprU1Z8P" role="3clFbx">
          <node concept="2MkqsV" id="5rfTprU20ED" role="3cqZAp">
            <node concept="Xl_RD" id="5rfTprU20EP" role="2MkJ7o">
              <property role="Xl_RC" value="Variable cannot be smartly casted" />
            </node>
            <node concept="1YBJjd" id="5rfTprU20F$" role="1urrMF">
              <ref role="1YBMHb" node="5rfTprU1Z8E" resolve="smartCastedVariableReference" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5rfTprU1Z8E" role="1YuTPh">
      <property role="TrG5h" value="smartCastedVariableReference" />
      <ref role="1YaFvo" to="2zx5:35H7XdESSJG" resolve="SmartCastedVariableReference" />
    </node>
  </node>
  <node concept="1YbPZF" id="5rfTprTKZ8R">
    <property role="TrG5h" value="typeof_SmartCastedVariableReference" />
    <node concept="3clFbS" id="5rfTprTKZ8S" role="18ibNy">
      <node concept="3cpWs8" id="5rfTprTRX7H" role="3cqZAp">
        <node concept="3cpWsn" id="5rfTprTRX7I" role="3cpWs9">
          <property role="TrG5h" value="type" />
          <node concept="3Tqbb2" id="5rfTprTRWZr" role="1tU5fm">
            <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
          </node>
          <node concept="2OqwBi" id="5rfTprTRX7J" role="33vP2m">
            <node concept="1YBJjd" id="5rfTprTRX7K" role="2Oq$k0">
              <ref role="1YBMHb" node="5rfTprTKZ8U" resolve="smartCastedVariableReference" />
            </node>
            <node concept="2qgKlT" id="5rfTprTRX7L" role="2OqNvi">
              <ref role="37wK5l" to="ykvv:5rfTprTR5lf" resolve="getType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="5rfTprTS4q6" role="3cqZAp">
        <node concept="3clFbS" id="5rfTprTS4q8" role="3clFbx">
          <node concept="1Z5TYs" id="5rfTprTR5cU" role="3cqZAp">
            <node concept="mw_s8" id="5rfTprTRX9a" role="1ZfhKB">
              <node concept="37vLTw" id="5rfTprTRX98" role="mwGJk">
                <ref role="3cqZAo" node="5rfTprTRX7I" resolve="type" />
              </node>
            </node>
            <node concept="mw_s8" id="5rfTprTR5cX" role="1ZfhK$">
              <node concept="1Z2H0r" id="5rfTprTR4ST" role="mwGJk">
                <node concept="1YBJjd" id="5rfTprTR4UJ" role="1Z2MuG">
                  <ref role="1YBMHb" node="5rfTprTKZ8U" resolve="smartCastedVariableReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3y3z36" id="5rfTprTS4_v" role="3clFbw">
          <node concept="10Nm6u" id="5rfTprTS4FE" role="3uHU7w" />
          <node concept="37vLTw" id="5rfTprTS4qR" role="3uHU7B">
            <ref role="3cqZAo" node="5rfTprTRX7I" resolve="type" />
          </node>
        </node>
        <node concept="9aQIb" id="5rfTprTS4Hm" role="9aQIa">
          <node concept="3clFbS" id="5rfTprTS4Hn" role="9aQI4">
            <node concept="1Z5TYs" id="5rfTprTS51M" role="3cqZAp">
              <node concept="mw_s8" id="5rfTprTS526" role="1ZfhKB">
                <node concept="1Z2H0r" id="5rfTprTS522" role="mwGJk">
                  <node concept="2OqwBi" id="5rfTprTS5cQ" role="1Z2MuG">
                    <node concept="1YBJjd" id="5rfTprTS52n" role="2Oq$k0">
                      <ref role="1YBMHb" node="5rfTprTKZ8U" resolve="smartCastedVariableReference" />
                    </node>
                    <node concept="3TrEf2" id="5rfTprTS5Y3" role="2OqNvi">
                      <ref role="3Tt5mk" to="2zx5:5rSvAAOkb0X" resolve="variableDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="mw_s8" id="5rfTprTS51P" role="1ZfhK$">
                <node concept="1Z2H0r" id="5rfTprTS4HL" role="mwGJk">
                  <node concept="1YBJjd" id="5rfTprTS4JB" role="1Z2MuG">
                    <ref role="1YBMHb" node="5rfTprTKZ8U" resolve="smartCastedVariableReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="5rfTprTKZ8U" role="1YuTPh">
      <property role="TrG5h" value="smartCastedVariableReference" />
      <ref role="1YaFvo" to="2zx5:35H7XdESSJG" resolve="SmartCastedVariableReference" />
    </node>
    <node concept="bXqS6" id="5rfTprTKZif" role="ujSXK">
      <node concept="3clFbS" id="5rfTprTKZig" role="2VODD2">
        <node concept="3clFbF" id="5rfTprTKZme" role="3cqZAp">
          <node concept="3clFbT" id="5rfTprTKZmd" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

