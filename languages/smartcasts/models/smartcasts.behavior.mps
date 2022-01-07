<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e6c9db89-f681-46ef-a5cc-9a1e8a9e6bcb(smartcasts.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <use id="97a52717-898f-4598-8150-573d9fd03868" name="jetbrains.mps.lang.dataFlow.analyzers" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="mu20" ref="r:fc94574f-a075-45e6-9927-48e7e87153e6(jetbrains.mps.analyzers.runtime.framework)" />
    <import index="534n" ref="r:ca699ad5-3754-432e-b8d2-2c1ff1e8bdf3(smartcasts.dataFlow)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="1fjm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.dataFlow.framework(MPS.Core/)" />
    <import index="dau9" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.dataFlow.framework.instructions(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="cadi" ref="r:950587af-1c88-4c91-9d1c-64d15fc00069(smartcasts.structure)" />
  </imports>
  <registry>
    <language id="97a52717-898f-4598-8150-573d9fd03868" name="jetbrains.mps.lang.dataFlow.analyzers">
      <concept id="95073643532950038" name="jetbrains.mps.lang.dataFlow.analyzers.structure.AnalyzerRunnerCreator" flags="nn" index="2v6lVJ">
        <reference id="95073643532950039" name="analyzer" index="2v6lVI" />
        <child id="178770917832625312" name="nodeToCheck" index="3vVDej" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="35H7XdEW4z4">
    <ref role="13h7C2" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
    <node concept="13i0hz" id="35H7XdEW4zg" role="13h7CS">
      <property role="TrG5h" value="checkedAsType" />
      <property role="2Ki8OM" value="true" />
      <node concept="3Tm1VV" id="35H7XdEW4zh" role="1B3o_S" />
      <node concept="3Tqbb2" id="35H7XdEW4$j" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3clFbS" id="35H7XdEW4zj" role="3clF47">
        <node concept="3cpWs6" id="35H7XdEW4_m" role="3cqZAp">
          <node concept="3EllGN" id="5rfTprTSAq1" role="3cqZAk">
            <node concept="37vLTw" id="5rfTprTSAsb" role="3ElVtu">
              <ref role="3cqZAo" node="35H7XdEW5LU" resolve="var" />
            </node>
            <node concept="BsUDl" id="5rfTprTS_ZE" role="3ElQJh">
              <ref role="37wK5l" node="5rfTprTSGzf" resolve="checkedVars" />
              <node concept="37vLTw" id="5rfTprTSHmb" role="37wK5m">
                <ref role="3cqZAo" node="5rfTprTSHkr" resolve="contextNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5rfTprTSHkr" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="5rfTprTSHlE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="35H7XdEW5LU" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="35H7XdEW5LT" role="1tU5fm">
          <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5rfTprTR5lf" role="13h7CS">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="5rfTprTR5lg" role="1B3o_S" />
      <node concept="3Tqbb2" id="5rfTprTRaqs" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="3clFbS" id="5rfTprTR5li" role="3clF47">
        <node concept="3cpWs6" id="5rfTprTRTsc" role="3cqZAp">
          <node concept="3EllGN" id="5rfTprTSsiR" role="3cqZAk">
            <node concept="2OqwBi" id="5rfTprTSt_E" role="3ElVtu">
              <node concept="13iPFW" id="5rfTprTSsPP" role="2Oq$k0" />
              <node concept="3TrEf2" id="5rfTprTSuXp" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
              </node>
            </node>
            <node concept="BsUDl" id="5rfTprTSra5" role="3ElQJh">
              <ref role="37wK5l" node="5rfTprTSojk" resolve="checkedVars" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="5rfTprTSojk" role="13h7CS">
      <property role="TrG5h" value="checkedVars" />
      <node concept="3Tm6S6" id="5rfTprTSp9t" role="1B3o_S" />
      <node concept="3clFbS" id="5rfTprTSojn" role="3clF47">
        <node concept="3cpWs6" id="5rfTprTSGzm" role="3cqZAp">
          <node concept="BsUDl" id="5rfTprTSGzl" role="3cqZAk">
            <ref role="37wK5l" node="5rfTprTSGzf" resolve="checkedVars" />
            <node concept="13iPFW" id="5rfTprTSHgJ" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="3rvAFt" id="5rfTprTSp8v" role="3clF45">
        <node concept="3Tqbb2" id="5rfTprTSp8w" role="3rvQeY">
          <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
        </node>
        <node concept="3Tqbb2" id="5rfTprTSp8x" role="3rvSg0">
          <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="35H7XdEW4z5" role="13h7CW">
      <node concept="3clFbS" id="35H7XdEW4z6" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5rfTprTSGzf" role="13h7CS">
      <property role="TrG5h" value="checkedVars" />
      <property role="2Ki8OM" value="true" />
      <node concept="3rvAFt" id="5rfTprTSGzh" role="3clF45">
        <node concept="3Tqbb2" id="5rfTprTSGzi" role="3rvQeY">
          <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
        </node>
        <node concept="3Tqbb2" id="5rfTprTSGzj" role="3rvSg0">
          <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
        </node>
      </node>
      <node concept="37vLTG" id="5rfTprTSGz5" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="5rfTprTSGz6" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5rfTprTSGye" role="3clF47">
        <node concept="3cpWs8" id="5rfTprTSGyf" role="3cqZAp">
          <node concept="3cpWsn" id="5rfTprTSGyg" role="3cpWs9">
            <property role="TrG5h" value="typechecksRunner" />
            <node concept="3uibUv" id="5rfTprTSGyh" role="1tU5fm">
              <ref role="3uigEE" to="mu20:9V7Nft_x9B" resolve="CustomAnalyzerRunner" />
              <node concept="3rvAFt" id="5rfTprTSGyi" role="11_B2D">
                <node concept="3Tqbb2" id="5rfTprTSGyj" role="3rvQeY">
                  <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
                </node>
                <node concept="3Tqbb2" id="5rfTprTSGyk" role="3rvSg0">
                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                </node>
              </node>
            </node>
            <node concept="2v6lVJ" id="5rfTprTSGyl" role="33vP2m">
              <ref role="2v6lVI" to="534n:35H7XdESU1Y" resolve="TypeChecks" />
              <node concept="2OqwBi" id="5rfTprTSGym" role="3vVDej">
                <node concept="37vLTw" id="5rfTprTSGz7" role="2Oq$k0">
                  <ref role="3cqZAo" node="5rfTprTSGz5" resolve="contextNode" />
                </node>
                <node concept="2Xjw5R" id="5rfTprTSGyo" role="2OqNvi">
                  <node concept="1xMEDy" id="5rfTprTSGyp" role="1xVPHs">
                    <node concept="chp4Y" id="5rfTprTSGyq" role="ri$Ld">
                      <ref role="cht4Q" to="tpee:i2fhoOR" resolve="IMethodLike" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5rfTprTSGyr" role="3cqZAp">
          <node concept="3cpWsn" id="5rfTprTSGys" role="3cpWs9">
            <property role="TrG5h" value="typechecks" />
            <node concept="3uibUv" id="5rfTprTSGyt" role="1tU5fm">
              <ref role="3uigEE" to="1fjm:~AnalysisResult" resolve="AnalysisResult" />
              <node concept="3rvAFt" id="5rfTprTSGyu" role="11_B2D">
                <node concept="3Tqbb2" id="5rfTprTSGyv" role="3rvQeY">
                  <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
                </node>
                <node concept="3Tqbb2" id="5rfTprTSGyw" role="3rvSg0">
                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5rfTprTSGyx" role="33vP2m">
              <node concept="37vLTw" id="5rfTprTSGyy" role="2Oq$k0">
                <ref role="3cqZAo" node="5rfTprTSGyg" resolve="typechecksRunner" />
              </node>
              <node concept="liA8E" id="5rfTprTSGyz" role="2OqNvi">
                <ref role="37wK5l" to="1fjm:~AnalyzerRunner.analyze()" resolve="analyze" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5rfTprTSGy$" role="3cqZAp">
          <node concept="3clFbS" id="5rfTprTSGy_" role="2LFqv$">
            <node concept="3cpWs8" id="5rfTprTSGyA" role="3cqZAp">
              <node concept="3cpWsn" id="5rfTprTSGyB" role="3cpWs9">
                <property role="TrG5h" value="instruction" />
                <node concept="3uibUv" id="5rfTprTSGyC" role="1tU5fm">
                  <ref role="3uigEE" to="dau9:~Instruction" resolve="Instruction" />
                </node>
                <node concept="2OqwBi" id="5rfTprTSGyD" role="33vP2m">
                  <node concept="37vLTw" id="5rfTprTSGyE" role="2Oq$k0">
                    <ref role="3cqZAo" node="5rfTprTSGyY" resolve="state" />
                  </node>
                  <node concept="liA8E" id="5rfTprTSGyF" role="2OqNvi">
                    <ref role="37wK5l" to="1fjm:~ProgramState.getInstruction()" resolve="getInstruction" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5rfTprTSGyG" role="3cqZAp">
              <node concept="3clFbS" id="5rfTprTSGyH" role="3clFbx">
                <node concept="3cpWs8" id="5rfTprTSGyI" role="3cqZAp">
                  <node concept="3cpWsn" id="5rfTprTSGyJ" role="3cpWs9">
                    <property role="TrG5h" value="typemap" />
                    <node concept="3rvAFt" id="5rfTprTSGyK" role="1tU5fm">
                      <node concept="3Tqbb2" id="5rfTprTSGyL" role="3rvQeY">
                        <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
                      </node>
                      <node concept="3Tqbb2" id="5rfTprTSGyM" role="3rvSg0">
                        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5rfTprTSGyN" role="33vP2m">
                      <node concept="37vLTw" id="5rfTprTSGyO" role="2Oq$k0">
                        <ref role="3cqZAo" node="5rfTprTSGys" resolve="typechecks" />
                      </node>
                      <node concept="liA8E" id="5rfTprTSGyP" role="2OqNvi">
                        <ref role="37wK5l" to="1fjm:~AnalysisResult.get(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction)" resolve="get" />
                        <node concept="37vLTw" id="5rfTprTSGyQ" role="37wK5m">
                          <ref role="3cqZAo" node="5rfTprTSGyB" resolve="instruction" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5rfTprTSGyR" role="3cqZAp">
                  <node concept="37vLTw" id="5rfTprTSGyS" role="3cqZAk">
                    <ref role="3cqZAo" node="5rfTprTSGyJ" resolve="typemap" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="5rfTprTSGyT" role="3clFbw">
                <node concept="37vLTw" id="5rfTprTSGz8" role="3uHU7w">
                  <ref role="3cqZAo" node="5rfTprTSGz5" resolve="contextNode" />
                </node>
                <node concept="2OqwBi" id="5rfTprTSGyV" role="3uHU7B">
                  <node concept="37vLTw" id="5rfTprTSGyW" role="2Oq$k0">
                    <ref role="3cqZAo" node="5rfTprTSGyB" resolve="instruction" />
                  </node>
                  <node concept="liA8E" id="5rfTprTSGyX" role="2OqNvi">
                    <ref role="37wK5l" to="dau9:~Instruction.getSource()" resolve="getSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5rfTprTSGyY" role="1Duv9x">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="5rfTprTSGyZ" role="1tU5fm">
              <ref role="3uigEE" to="1fjm:~ProgramState" resolve="ProgramState" />
            </node>
          </node>
          <node concept="2OqwBi" id="5rfTprTSGz0" role="1DdaDG">
            <node concept="37vLTw" id="5rfTprTSGz1" role="2Oq$k0">
              <ref role="3cqZAo" node="5rfTprTSGys" resolve="typechecks" />
            </node>
            <node concept="liA8E" id="5rfTprTSGz2" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~AnalysisResult.getStates()" resolve="getStates" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5rfTprTSGz3" role="3cqZAp">
          <node concept="10Nm6u" id="5rfTprTSGz4" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5rfTprTSGzg" role="1B3o_S" />
    </node>
  </node>
</model>

