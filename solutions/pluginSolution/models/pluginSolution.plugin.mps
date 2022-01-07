<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:aab5c867-150f-4029-9711-37cafeeeea76(pluginSolution.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="97a52717-898f-4598-8150-573d9fd03868" name="jetbrains.mps.lang.dataFlow.analyzers" version="0" />
  </languages>
  <imports>
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="cxih" ref="r:c6e01f98-6040-4dd0-a88b-62f17e77e610(jetbrains.mps.ide.dataFlow.presentation)" />
    <import index="1fjm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.dataFlow.framework(MPS.Core/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="534n" ref="r:ca699ad5-3754-432e-b8d2-2c1ff1e8bdf3(smartcasts.dataFlow)" />
    <import index="lzd0" ref="r:97aec248-a91c-439e-a7f1-5184e2da6816(jetbrains.mps.lang.dataFlow.pluginSolution.plugin)" />
  </imports>
  <registry>
    <language id="97a52717-898f-4598-8150-573d9fd03868" name="jetbrains.mps.lang.dataFlow.analyzers">
      <concept id="95073643532950038" name="jetbrains.mps.lang.dataFlow.analyzers.structure.AnalyzerRunnerCreator" flags="nn" index="2v6lVJ">
        <reference id="95073643532950039" name="analyzer" index="2v6lVI" />
        <child id="178770917832625312" name="nodeToCheck" index="3vVDej" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1211298967294" name="outsideCommandExecution" index="72QZ$" />
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
    </language>
  </registry>
  <node concept="2DaZZR" id="5CeOzIjCpm8" />
  <node concept="sE7Ow" id="5GUQLVLhj1C">
    <property role="TrG5h" value="ShowTypeCheckDFA" />
    <property role="72QZ$" value="true" />
    <property role="2uzpH1" value="Show Typecheck DFA" />
    <node concept="2S4$dB" id="5GUQLVLhj1D" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="1oajcY" id="5GUQLVLhj1E" role="1oa70y" />
      <node concept="3Tm1VV" id="5GUQLVLhj1F" role="1B3o_S" />
      <node concept="3Tqbb2" id="5GUQLVLhj1G" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="59D800tV42N" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="59D800tV42O" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5GUQLVLhj1L" role="tncku">
      <node concept="3clFbS" id="5GUQLVLhj1M" role="2VODD2">
        <node concept="3cpWs8" id="56NpvCqHVcL" role="3cqZAp">
          <node concept="3cpWsn" id="56NpvCqHVcM" role="3cpWs9">
            <property role="TrG5h" value="runner" />
            <node concept="3uibUv" id="56NpvCqHVcN" role="1tU5fm">
              <ref role="3uigEE" to="1fjm:~AnalyzerRunner" resolve="AnalyzerRunner" />
              <node concept="3rvAFt" id="5CeOzIjCIdk" role="11_B2D">
                <node concept="3Tqbb2" id="5CeOzIjCLgC" role="3rvQeY">
                  <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
                </node>
                <node concept="3uibUv" id="5rfTprUaspk" role="3rvSg0">
                  <ref role="3uigEE" to="534n:5rfTprU03us" resolve="TypeCheckState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1ekf28usyL2" role="3cqZAp">
          <node concept="3cpWsn" id="1ekf28usyL3" role="3cpWs9">
            <property role="TrG5h" value="graph" />
            <node concept="3uibUv" id="1ekf28usyL4" role="1tU5fm">
              <ref role="3uigEE" to="cxih:3HJD4JbIvSG" resolve="ControlFlowGraph" />
              <node concept="3uibUv" id="1ekf28usyL6" role="11_B2D">
                <ref role="3uigEE" to="cxih:3HJD4JbIvBj" resolve="InstructionWrapper" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="59D800tV4Er" role="3cqZAp">
          <node concept="2OqwBi" id="59D800tVceW" role="3clFbG">
            <node concept="liA8E" id="59D800tVdd5" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="59D800tVddF" role="37wK5m">
                <node concept="3clFbS" id="59D800tVddG" role="1bW5cS">
                  <node concept="3clFbF" id="56NpvCqHVcE" role="3cqZAp">
                    <node concept="37vLTI" id="56NpvCqHVcF" role="3clFbG">
                      <node concept="2v6lVJ" id="5GUQLVLhj1T" role="37vLTx">
                        <ref role="2v6lVI" to="534n:35H7XdESU1Y" resolve="TypeChecks" />
                        <node concept="2OqwBi" id="5GUQLVLhj1U" role="3vVDej">
                          <node concept="2WthIp" id="5GUQLVLhj1V" role="2Oq$k0" />
                          <node concept="3gHZIF" id="5GUQLVLhj1W" role="2OqNvi">
                            <ref role="2WH_rO" node="5GUQLVLhj1D" resolve="node" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTrQE" role="37vLTJ">
                        <ref role="3cqZAo" node="56NpvCqHVcM" resolve="runner" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3HJD4JbIwor" role="3cqZAp">
                    <node concept="37vLTI" id="1ekf28usyL9" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTt$e" role="37vLTJ">
                        <ref role="3cqZAo" node="1ekf28usyL3" resolve="graph" />
                      </node>
                      <node concept="2ShNRf" id="3HJD4JbIwow" role="37vLTx">
                        <node concept="1pGfFk" id="3HJD4JbIwox" role="2ShVmc">
                          <ref role="37wK5l" to="cxih:3HJD4JbIvTM" resolve="ControlFlowGraph" />
                          <node concept="3uibUv" id="3HJD4JbIwoy" role="1pMfVU">
                            <ref role="3uigEE" to="cxih:3HJD4JbIvBj" resolve="InstructionWrapper" />
                          </node>
                          <node concept="2ShNRf" id="3HJD4JbIwoz" role="37wK5m">
                            <node concept="1pGfFk" id="3HJD4JbIwo$" role="2ShVmc">
                              <ref role="37wK5l" to="cxih:3HJD4JbIwrl" resolve="ProgramWrapper" />
                              <node concept="2OqwBi" id="1ekf28usyLA" role="37wK5m">
                                <node concept="37vLTw" id="3GM_nagTtYG" role="2Oq$k0">
                                  <ref role="3cqZAo" node="56NpvCqHVcM" resolve="runner" />
                                </node>
                                <node concept="liA8E" id="1ekf28usyLK" role="2OqNvi">
                                  <ref role="37wK5l" to="1fjm:~AnalyzerRunner.getProgramCopy()" resolve="getProgramCopy" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2ShNRf" id="3HJD4JbIwoA" role="37wK5m">
                            <node concept="1pGfFk" id="3HJD4JbIwoB" role="2ShVmc">
                              <ref role="37wK5l" to="cxih:3HJD4JbIvGV" resolve="GraphCreator" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="59D800tVb9D" role="2Oq$k0">
              <node concept="liA8E" id="59D800tVc59" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
              <node concept="2OqwBi" id="59D800tV74N" role="2Oq$k0">
                <node concept="liA8E" id="59D800tVb2v" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
                <node concept="2OqwBi" id="59D800tV4El" role="2Oq$k0">
                  <node concept="2WthIp" id="59D800tV4Eo" role="2Oq$k0" />
                  <node concept="1DTwFV" id="59D800tV4Eq" role="2OqNvi">
                    <ref role="2WH_rO" node="59D800tV42N" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1ekf28usAsc" role="3cqZAp">
          <node concept="2OqwBi" id="1ekf28usAsq" role="3clFbG">
            <node concept="2ShNRf" id="5GUQLVLhj1Y" role="2Oq$k0">
              <node concept="1pGfFk" id="5GUQLVLhj1Z" role="2ShVmc">
                <ref role="37wK5l" to="cxih:3HJD4JbIwnh" resolve="ShowCFGDialog" />
                <node concept="37vLTw" id="3GM_nagTucf" role="37wK5m">
                  <ref role="3cqZAo" node="1ekf28usyL3" resolve="graph" />
                </node>
                <node concept="2OqwBi" id="7ex9EVq1g$C" role="37wK5m">
                  <node concept="2WthIp" id="7ex9EVq1g$D" role="2Oq$k0" />
                  <node concept="1DTwFV" id="4F1sLpFpH68" role="2OqNvi">
                    <ref role="2WH_rO" node="59D800tV42N" resolve="project" />
                  </node>
                </node>
                <node concept="Xl_RD" id="4sNt2MbMlon" role="37wK5m">
                  <property role="Xl_RC" value="TypeChecks DFA" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1ekf28usAsv" role="2OqNvi">
              <ref role="37wK5l" to="jkm4:~DialogWrapper.show()" resolve="show" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="5GUQLVLhj29">
    <property role="TrG5h" value="AnalyzersActions" />
    <node concept="tT9cl" id="5GUQLVLhj2a" role="2f5YQi">
      <ref role="tU$_T" to="lzd0:4KDfkUwM7DT" resolve="DFAActions" />
    </node>
    <node concept="ftmFs" id="5GUQLVLhj2b" role="ftER_">
      <node concept="tCFHf" id="5GUQLVLhj2c" role="ftvYc">
        <ref role="tCJdB" node="5GUQLVLhj1C" resolve="ShowTypeCheckDFA" />
      </node>
    </node>
  </node>
</model>

