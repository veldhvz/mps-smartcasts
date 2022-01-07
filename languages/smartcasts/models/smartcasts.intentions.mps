<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7cc7b539-9549-42be-a99b-bb7ff9a11940(smartcasts.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="cadi" ref="r:950587af-1c88-4c91-9d1c-64d15fc00069(smartcasts.structure)" />
    <import index="bjcj" ref="r:e6c9db89-f681-46ef-a5cc-9a1e8a9e6bcb(smartcasts.behavior)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="5497648299878491908" name="jetbrains.mps.baseLanguage.structure.BaseVariableReference" flags="nn" index="1M0zk4">
        <reference id="5497648299878491909" name="baseVariableDeclaration" index="1M0zk5" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795771125" name="jetbrains.mps.lang.intentions.structure.IsApplicableBlock" flags="in" index="2SaL7w" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093995" name="isApplicableFunction" index="2ZfVeh" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
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
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
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
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1139867745658" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithNewOperation" flags="nn" index="1_qnLN">
        <reference id="1139867957129" name="concept" index="1_rbq0" />
      </concept>
      <concept id="1140131837776" name="jetbrains.mps.lang.smodel.structure.Node_ReplaceWithAnotherOperation" flags="nn" index="1P9Npp">
        <child id="1140131861877" name="replacementNode" index="1P9ThW" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="2S6QgY" id="5rfTprU5Quz">
    <property role="TrG5h" value="ReplaceWithIfAndSmartCasts" />
    <ref role="2ZfgGC" to="tp25:1Cyzq4Pv$D4" resolve="IfInstanceOfStatement" />
    <node concept="2S6ZIM" id="5rfTprU5Qu$" role="2ZfVej">
      <node concept="3clFbS" id="5rfTprU5Qu_" role="2VODD2">
        <node concept="3clFbF" id="5rfTprU5QH4" role="3cqZAp">
          <node concept="Xl_RD" id="5rfTprU5QH3" role="3clFbG">
            <property role="Xl_RC" value="Replace with IfStatement and Smart Casts" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5rfTprU5QuA" role="2ZfgGD">
      <node concept="3clFbS" id="5rfTprU5QuB" role="2VODD2">
        <node concept="3cpWs8" id="5rfTprU5RJJ" role="3cqZAp">
          <node concept="3cpWsn" id="5rfTprU5RJK" role="3cpWs9">
            <property role="TrG5h" value="ifStatement" />
            <node concept="3Tqbb2" id="5rfTprU5RGV" role="1tU5fm">
              <ref role="ehGHo" to="tpee:fzclF8n" resolve="IfStatement" />
            </node>
            <node concept="2OqwBi" id="5rfTprU5RJL" role="33vP2m">
              <node concept="2Sf5sV" id="5rfTprU5RJM" role="2Oq$k0" />
              <node concept="1_qnLN" id="5rfTprU5RJN" role="2OqNvi">
                <ref role="1_rbq0" to="tpee:fzclF8n" resolve="IfStatement" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rfTprU5QWy" role="3cqZAp">
          <node concept="37vLTI" id="5rfTprU5SK_" role="3clFbG">
            <node concept="2pJPEk" id="5rfTprU5UfC" role="37vLTx">
              <node concept="2pJPED" id="5rfTprU5UfE" role="2pJPEn">
                <ref role="2pJxaS" to="tpee:hqOqwz4" resolve="DotExpression" />
                <node concept="2pIpSj" id="5rfTprU5Unv" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:hqOq$gm" resolve="operand" />
                  <node concept="36biLy" id="5rfTprU5Uo5" role="28nt2d">
                    <node concept="2OqwBi" id="5rfTprU5U$H" role="36biLW">
                      <node concept="2Sf5sV" id="5rfTprU5Uov" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5rfTprU5ULI" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp25:1Cyzq4Pv$D6" resolve="nodeExpression" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2pIpSj" id="5rfTprU5UTI" role="2pJxcM">
                  <ref role="2pIpSl" to="tpee:hqOqNr4" resolve="operation" />
                  <node concept="2pJPED" id="5rfTprU5UWn" role="28nt2d">
                    <ref role="2pJxaS" to="tp25:g_mIQ0D" resolve="Node_IsInstanceOfOperation" />
                    <node concept="2pIpSj" id="5rfTprU5UX0" role="2pJxcM">
                      <ref role="2pIpSl" to="tp25:h8cj9IO" resolve="conceptArgument" />
                      <node concept="2pJPED" id="5rfTprU5UZa" role="28nt2d">
                        <ref role="2pJxaS" to="tp25:h8chp0G" resolve="RefConcept_Reference" />
                        <node concept="2pIpSj" id="5rfTprU5UZv" role="2pJxcM">
                          <ref role="2pIpSl" to="tp25:h8cht0$" resolve="conceptDeclaration" />
                          <node concept="36biLy" id="5rfTprU5V1B" role="28nt2d">
                            <node concept="2OqwBi" id="5rfTprU5VfY" role="36biLW">
                              <node concept="2Sf5sV" id="5rfTprU5V3K" role="2Oq$k0" />
                              <node concept="3TrEf2" id="5rfTprU5VK$" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp25:1Cyzq4Pv$D8" resolve="nodeConcept" />
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
            <node concept="2OqwBi" id="5rfTprU5S1A" role="37vLTJ">
              <node concept="37vLTw" id="5rfTprU5RJO" role="2Oq$k0">
                <ref role="3cqZAo" node="5rfTprU5RJK" resolve="ifStatement" />
              </node>
              <node concept="3TrEf2" id="5rfTprU5S$1" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF8o" resolve="condition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rfTprU5W2C" role="3cqZAp">
          <node concept="37vLTI" id="5rfTprU5XrE" role="3clFbG">
            <node concept="2OqwBi" id="5rfTprU5XCN" role="37vLTx">
              <node concept="2Sf5sV" id="5rfTprU5Xsv" role="2Oq$k0" />
              <node concept="3TrEf2" id="5rfTprU5Y6Z" role="2OqNvi">
                <ref role="3Tt5mk" to="tp25:1Cyzq4Pv$D5" resolve="body" />
              </node>
            </node>
            <node concept="2OqwBi" id="5rfTprU5WhX" role="37vLTJ">
              <node concept="37vLTw" id="5rfTprU5W2z" role="2Oq$k0">
                <ref role="3cqZAo" node="5rfTprU5RJK" resolve="ifStatement" />
              </node>
              <node concept="3TrEf2" id="5rfTprU5WQd" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzclF8p" resolve="ifTrue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5rfTprU6dQ8" role="3cqZAp">
          <node concept="2GrKxI" id="5rfTprU6dQa" role="2Gsz3X">
            <property role="TrG5h" value="varRef" />
          </node>
          <node concept="3clFbS" id="5rfTprU6dQe" role="2LFqv$">
            <node concept="3cpWs8" id="5rfTprU6kfX" role="3cqZAp">
              <node concept="3cpWsn" id="5rfTprU6kfY" role="3cpWs9">
                <property role="TrG5h" value="smartRef" />
                <node concept="3Tqbb2" id="5rfTprU6kaV" role="1tU5fm">
                  <ref role="ehGHo" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
                </node>
                <node concept="2OqwBi" id="5rfTprU6kfZ" role="33vP2m">
                  <node concept="2GrUjf" id="5rfTprU6kg0" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="5rfTprU6dQa" resolve="varRef" />
                  </node>
                  <node concept="1_qnLN" id="5rfTprU6kg1" role="2OqNvi">
                    <ref role="1_rbq0" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5rfTprU6jqd" role="3cqZAp">
              <node concept="37vLTI" id="5rfTprU6lxN" role="3clFbG">
                <node concept="2OqwBi" id="5rfTprU6mPb" role="37vLTx">
                  <node concept="1PxgMI" id="5rfTprU6myZ" role="2Oq$k0">
                    <node concept="chp4Y" id="5rfTprU6mCG" role="3oSUPX">
                      <ref role="cht4Q" to="tpee:fz7vLUo" resolve="VariableReference" />
                    </node>
                    <node concept="2OqwBi" id="5rfTprU6lR6" role="1m5AlR">
                      <node concept="2Sf5sV" id="5rfTprU6lEM" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5rfTprU6mmA" role="2OqNvi">
                        <ref role="3Tt5mk" to="tp25:1Cyzq4Pv$D6" resolve="nodeExpression" />
                      </node>
                    </node>
                  </node>
                  <node concept="3TrEf2" id="5rfTprU6noh" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5rfTprU6kGH" role="37vLTJ">
                  <node concept="37vLTw" id="5rfTprU6kg2" role="2Oq$k0">
                    <ref role="3cqZAo" node="5rfTprU6kfY" resolve="smartRef" />
                  </node>
                  <node concept="3TrEf2" id="5rfTprU6lbq" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5rfTprU640G" role="2GsD0m">
            <node concept="2OqwBi" id="5rfTprU60EA" role="2Oq$k0">
              <node concept="2OqwBi" id="5rfTprU5ZyV" role="2Oq$k0">
                <node concept="37vLTw" id="5rfTprU5Zj2" role="2Oq$k0">
                  <ref role="3cqZAo" node="5rfTprU5RJK" resolve="ifStatement" />
                </node>
                <node concept="3TrEf2" id="5rfTprU60ou" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fzclF8p" resolve="ifTrue" />
                </node>
              </node>
              <node concept="2Rf3mk" id="5rfTprU61ka" role="2OqNvi">
                <node concept="1xMEDy" id="5rfTprU61kc" role="1xVPHs">
                  <node concept="chp4Y" id="5rfTprU61r$" role="ri$Ld">
                    <ref role="cht4Q" to="tp25:1Cyzq4PvWDN" resolve="IfInstanceOfVarReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3zZkjj" id="5rfTprU6b06" role="2OqNvi">
              <node concept="1bVj0M" id="5rfTprU6b08" role="23t8la">
                <node concept="3clFbS" id="5rfTprU6b09" role="1bW5cS">
                  <node concept="3clFbF" id="5rfTprU6b4d" role="3cqZAp">
                    <node concept="3clFbC" id="5rfTprU6cmp" role="3clFbG">
                      <node concept="2OqwBi" id="5rfTprU6cQq" role="3uHU7w">
                        <node concept="2Sf5sV" id="5rfTprU6c_K" role="2Oq$k0" />
                        <node concept="3TrEf2" id="5rfTprU6dnG" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp25:1Cyzq4Pv$D7" resolve="variable" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="5rfTprU6bhS" role="3uHU7B">
                        <node concept="37vLTw" id="5rfTprU6b4c" role="2Oq$k0">
                          <ref role="3cqZAo" node="5rfTprU6b0a" resolve="it" />
                        </node>
                        <node concept="3TrEf2" id="5rfTprU6bVo" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp25:1Cyzq4PvWDO" resolve="instanceOfVariable" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="5rfTprU6b0a" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="5rfTprU6b0b" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5rfTprU5SLe" role="2ZfVeh">
      <node concept="3clFbS" id="5rfTprU5SLf" role="2VODD2">
        <node concept="3clFbF" id="5rfTprU5SPU" role="3cqZAp">
          <node concept="2OqwBi" id="5rfTprU5T$P" role="3clFbG">
            <node concept="2OqwBi" id="5rfTprU5T5T" role="2Oq$k0">
              <node concept="2Sf5sV" id="5rfTprU5SPT" role="2Oq$k0" />
              <node concept="3TrEf2" id="5rfTprU5TmG" role="2OqNvi">
                <ref role="3Tt5mk" to="tp25:1Cyzq4Pv$D6" resolve="nodeExpression" />
              </node>
            </node>
            <node concept="1mIQ4w" id="5rfTprU5TT4" role="2OqNvi">
              <node concept="chp4Y" id="5rfTprU5TZn" role="cj9EA">
                <ref role="cht4Q" to="tpee:fz7vLUo" resolve="VariableReference" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5rfTprU6B7Z">
    <property role="TrG5h" value="ReplaceCastWithSmartCastedVariableReference" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="tpee:f_0QFTa" resolve="CastExpression" />
    <node concept="2S6ZIM" id="5rfTprU6B80" role="2ZfVej">
      <node concept="3clFbS" id="5rfTprU6B81" role="2VODD2">
        <node concept="3clFbF" id="5rfTprU6BmC" role="3cqZAp">
          <node concept="Xl_RD" id="5rfTprU6BmB" role="3clFbG">
            <property role="Xl_RC" value="Replace with Smart Casted Variable Reference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5rfTprU6B82" role="2ZfgGD">
      <node concept="3clFbS" id="5rfTprU6B83" role="2VODD2">
        <node concept="3cpWs8" id="5rfTprU6EwD" role="3cqZAp">
          <node concept="3cpWsn" id="5rfTprU6EwE" role="3cpWs9">
            <property role="TrG5h" value="smartRef" />
            <node concept="3Tqbb2" id="5rfTprU6Epj" role="1tU5fm">
              <ref role="ehGHo" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
            </node>
            <node concept="2OqwBi" id="5rfTprU6EwF" role="33vP2m">
              <node concept="2Sf5sV" id="5rfTprU6EwG" role="2Oq$k0" />
              <node concept="1_qnLN" id="5rfTprU6EwH" role="2OqNvi">
                <ref role="1_rbq0" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rfTprU6DFO" role="3cqZAp">
          <node concept="37vLTI" id="5rfTprU6F$u" role="3clFbG">
            <node concept="2OqwBi" id="5rfTprU6FOC" role="37vLTx">
              <node concept="1PxgMI" id="5rfTprU7ItW" role="2Oq$k0">
                <node concept="chp4Y" id="5rfTprU7Iv1" role="3oSUPX">
                  <ref role="cht4Q" to="tpee:fz7vLUo" resolve="VariableReference" />
                </node>
                <node concept="2OqwBi" id="5rfTprU7HVv" role="1m5AlR">
                  <node concept="2Sf5sV" id="5rfTprU6FCk" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5rfTprU7Ihy" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:f_0QFTc" resolve="expression" />
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="5rfTprU6GjB" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="5rfTprU6EL_" role="37vLTJ">
              <node concept="37vLTw" id="5rfTprU6EwI" role="2Oq$k0">
                <ref role="3cqZAo" node="5rfTprU6EwE" resolve="smartRef" />
              </node>
              <node concept="3TrEf2" id="5rfTprU6FgV" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5rfTprU7Qsb" role="3cqZAp">
          <node concept="3clFbS" id="5rfTprU7Qsd" role="3clFbx">
            <node concept="3clFbF" id="5rfTprU7RtX" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprU7Sf6" role="3clFbG">
                <node concept="2OqwBi" id="5rfTprU7RCr" role="2Oq$k0">
                  <node concept="37vLTw" id="5rfTprU7RtV" role="2Oq$k0">
                    <ref role="3cqZAo" node="5rfTprU6EwE" resolve="smartRef" />
                  </node>
                  <node concept="1mfA1w" id="5rfTprU7S84" role="2OqNvi" />
                </node>
                <node concept="1P9Npp" id="5rfTprU7Sv7" role="2OqNvi">
                  <node concept="37vLTw" id="5rfTprU7Sxd" role="1P9ThW">
                    <ref role="3cqZAo" node="5rfTprU6EwE" resolve="smartRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5rfTprU7RbN" role="3clFbw">
            <node concept="2OqwBi" id="5rfTprU7QLG" role="2Oq$k0">
              <node concept="37vLTw" id="5rfTprU7Q$x" role="2Oq$k0">
                <ref role="3cqZAo" node="5rfTprU6EwE" resolve="smartRef" />
              </node>
              <node concept="1mfA1w" id="5rfTprU7R3d" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="5rfTprU7Rpe" role="2OqNvi">
              <node concept="chp4Y" id="5rfTprU7Rrr" role="cj9EA">
                <ref role="cht4Q" to="tpee:fHeOMHZ" resolve="ParenthesizedExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5rfTprU6Bzb" role="2ZfVeh">
      <node concept="3clFbS" id="5rfTprU6Bzc" role="2VODD2">
        <node concept="Jncv_" id="5rfTprU7F6R" role="3cqZAp">
          <ref role="JncvD" to="tpee:fz7vLUo" resolve="VariableReference" />
          <node concept="2OqwBi" id="5rfTprU7F_Q" role="JncvB">
            <node concept="2Sf5sV" id="5rfTprU7FgY" role="2Oq$k0" />
            <node concept="3TrEf2" id="5rfTprU7FU7" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:f_0QFTc" resolve="expression" />
            </node>
          </node>
          <node concept="3clFbS" id="5rfTprU7F6V" role="Jncv$">
            <node concept="3cpWs8" id="5rfTprU6VWP" role="3cqZAp">
              <node concept="3cpWsn" id="5rfTprU6VWQ" role="3cpWs9">
                <property role="TrG5h" value="castType" />
                <node concept="3Tqbb2" id="5rfTprU6Q0n" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                </node>
                <node concept="2OqwBi" id="5rfTprU6VWR" role="33vP2m">
                  <node concept="2Sf5sV" id="5rfTprU7Et0" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5rfTprU6VWT" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:f_0QFTb" resolve="type" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5rfTprU6Wxg" role="3cqZAp">
              <node concept="3cpWsn" id="5rfTprU6Wxh" role="3cpWs9">
                <property role="TrG5h" value="smartCastType" />
                <node concept="3Tqbb2" id="5rfTprU6WwN" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                </node>
                <node concept="2OqwBi" id="5rfTprU6Wxi" role="33vP2m">
                  <node concept="35c_gC" id="5rfTprU6Wxj" role="2Oq$k0">
                    <ref role="35c_gD" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
                  </node>
                  <node concept="2qgKlT" id="5rfTprU6Wxk" role="2OqNvi">
                    <ref role="37wK5l" to="bjcj:35H7XdEW4zg" resolve="checkedAsType" />
                    <node concept="2Sf5sV" id="5rfTprU6Wxl" role="37wK5m" />
                    <node concept="2OqwBi" id="5rfTprU6Wxm" role="37wK5m">
                      <node concept="Jnkvi" id="5rfTprU7HzP" role="2Oq$k0">
                        <ref role="1M0zk5" node="5rfTprU7F6X" resolve="varRef" />
                      </node>
                      <node concept="3TrEf2" id="5rfTprU6Wxo" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5rfTprU6Gpt" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprU80RV" role="3cqZAk">
                <node concept="37vLTw" id="5rfTprU80RW" role="2Oq$k0">
                  <ref role="3cqZAo" node="5rfTprU6VWQ" resolve="castType" />
                </node>
                <node concept="2qgKlT" id="5rfTprU80RX" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:hKBOZqh" resolve="isSupersetOf" />
                  <node concept="37vLTw" id="5rfTprU80RY" role="37wK5m">
                    <ref role="3cqZAo" node="5rfTprU6Wxh" resolve="smartCastType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="5rfTprU7F6X" role="JncvA">
            <property role="TrG5h" value="varRef" />
            <node concept="2jxLKc" id="5rfTprU7F6Y" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs6" id="5rfTprU7H1U" role="3cqZAp">
          <node concept="3clFbT" id="5rfTprU7H2Y" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5rfTprU8176">
    <property role="TrG5h" value="ReplaceAsWithSmartCastedVariableReference" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="tpee:hO0kSJv" resolve="AsExpression" />
    <node concept="2S6ZIM" id="5rfTprU8177" role="2ZfVej">
      <node concept="3clFbS" id="5rfTprU8178" role="2VODD2">
        <node concept="3clFbF" id="5rfTprU8179" role="3cqZAp">
          <node concept="Xl_RD" id="5rfTprU817a" role="3clFbG">
            <property role="Xl_RC" value="Replace with Smart Casted Variable Reference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5rfTprU817b" role="2ZfgGD">
      <node concept="3clFbS" id="5rfTprU817c" role="2VODD2">
        <node concept="3cpWs8" id="5rfTprU817d" role="3cqZAp">
          <node concept="3cpWsn" id="5rfTprU817e" role="3cpWs9">
            <property role="TrG5h" value="smartRef" />
            <node concept="3Tqbb2" id="5rfTprU817f" role="1tU5fm">
              <ref role="ehGHo" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
            </node>
            <node concept="2OqwBi" id="5rfTprU817g" role="33vP2m">
              <node concept="2Sf5sV" id="5rfTprU817h" role="2Oq$k0" />
              <node concept="1_qnLN" id="5rfTprU817i" role="2OqNvi">
                <ref role="1_rbq0" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rfTprU817j" role="3cqZAp">
          <node concept="37vLTI" id="5rfTprU817k" role="3clFbG">
            <node concept="2OqwBi" id="5rfTprU817l" role="37vLTx">
              <node concept="1PxgMI" id="5rfTprU817m" role="2Oq$k0">
                <node concept="chp4Y" id="5rfTprU817n" role="3oSUPX">
                  <ref role="cht4Q" to="tpee:fz7vLUo" resolve="VariableReference" />
                </node>
                <node concept="2OqwBi" id="5rfTprU817o" role="1m5AlR">
                  <node concept="2Sf5sV" id="5rfTprU817p" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5rfTprU817q" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hO0kSJw" resolve="expression" />
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="5rfTprU817r" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="5rfTprU817s" role="37vLTJ">
              <node concept="37vLTw" id="5rfTprU817t" role="2Oq$k0">
                <ref role="3cqZAo" node="5rfTprU817e" resolve="smartRef" />
              </node>
              <node concept="3TrEf2" id="5rfTprU817u" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5rfTprU817v" role="3cqZAp">
          <node concept="3clFbS" id="5rfTprU817w" role="3clFbx">
            <node concept="3clFbF" id="5rfTprU817x" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprU817y" role="3clFbG">
                <node concept="2OqwBi" id="5rfTprU817z" role="2Oq$k0">
                  <node concept="37vLTw" id="5rfTprU817$" role="2Oq$k0">
                    <ref role="3cqZAo" node="5rfTprU817e" resolve="smartRef" />
                  </node>
                  <node concept="1mfA1w" id="5rfTprU817_" role="2OqNvi" />
                </node>
                <node concept="1P9Npp" id="5rfTprU817A" role="2OqNvi">
                  <node concept="37vLTw" id="5rfTprU817B" role="1P9ThW">
                    <ref role="3cqZAo" node="5rfTprU817e" resolve="smartRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5rfTprU817C" role="3clFbw">
            <node concept="2OqwBi" id="5rfTprU817D" role="2Oq$k0">
              <node concept="37vLTw" id="5rfTprU817E" role="2Oq$k0">
                <ref role="3cqZAo" node="5rfTprU817e" resolve="smartRef" />
              </node>
              <node concept="1mfA1w" id="5rfTprU817F" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="5rfTprU817G" role="2OqNvi">
              <node concept="chp4Y" id="5rfTprU817H" role="cj9EA">
                <ref role="cht4Q" to="tpee:fHeOMHZ" resolve="ParenthesizedExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5rfTprU817I" role="2ZfVeh">
      <node concept="3clFbS" id="5rfTprU817J" role="2VODD2">
        <node concept="Jncv_" id="5rfTprU817K" role="3cqZAp">
          <ref role="JncvD" to="tpee:fz7vLUo" resolve="VariableReference" />
          <node concept="2OqwBi" id="5rfTprU817L" role="JncvB">
            <node concept="2Sf5sV" id="5rfTprU817M" role="2Oq$k0" />
            <node concept="3TrEf2" id="5rfTprU817N" role="2OqNvi">
              <ref role="3Tt5mk" to="tpee:hO0kSJw" resolve="expression" />
            </node>
          </node>
          <node concept="3clFbS" id="5rfTprU817O" role="Jncv$">
            <node concept="3cpWs8" id="5rfTprU817P" role="3cqZAp">
              <node concept="3cpWsn" id="5rfTprU817Q" role="3cpWs9">
                <property role="TrG5h" value="castType" />
                <node concept="3Tqbb2" id="5rfTprU817R" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                </node>
                <node concept="2OqwBi" id="5rfTprU817S" role="33vP2m">
                  <node concept="2Sf5sV" id="5rfTprU817T" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5rfTprU817U" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:hO0kSJx" resolve="classifierType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5rfTprU817V" role="3cqZAp">
              <node concept="3cpWsn" id="5rfTprU817W" role="3cpWs9">
                <property role="TrG5h" value="smartCastType" />
                <node concept="3Tqbb2" id="5rfTprU817X" role="1tU5fm">
                  <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                </node>
                <node concept="2OqwBi" id="5rfTprU817Y" role="33vP2m">
                  <node concept="35c_gC" id="5rfTprU817Z" role="2Oq$k0">
                    <ref role="35c_gD" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
                  </node>
                  <node concept="2qgKlT" id="5rfTprU8180" role="2OqNvi">
                    <ref role="37wK5l" to="bjcj:35H7XdEW4zg" resolve="checkedAsType" />
                    <node concept="2OqwBi" id="5rfTprU8TUh" role="37wK5m">
                      <node concept="2Sf5sV" id="5rfTprU8181" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5rfTprU8UH9" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:hO0kSJw" resolve="expression" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5rfTprU8182" role="37wK5m">
                      <node concept="Jnkvi" id="5rfTprU8183" role="2Oq$k0">
                        <ref role="1M0zk5" node="5rfTprU818a" resolve="varRef" />
                      </node>
                      <node concept="3TrEf2" id="5rfTprU8184" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5rfTprU8185" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprU8186" role="3cqZAk">
                <node concept="37vLTw" id="5rfTprU8187" role="2Oq$k0">
                  <ref role="3cqZAo" node="5rfTprU817Q" resolve="castType" />
                </node>
                <node concept="2qgKlT" id="5rfTprU8188" role="2OqNvi">
                  <ref role="37wK5l" to="tpek:hKBOZqh" resolve="isSupersetOf" />
                  <node concept="37vLTw" id="5rfTprU8189" role="37wK5m">
                    <ref role="3cqZAo" node="5rfTprU817W" resolve="smartCastType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="JncvC" id="5rfTprU818a" role="JncvA">
            <property role="TrG5h" value="varRef" />
            <node concept="2jxLKc" id="5rfTprU818b" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs6" id="5rfTprU818c" role="3cqZAp">
          <node concept="3clFbT" id="5rfTprU818d" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="5rfTprU9dzw">
    <property role="TrG5h" value="ReplaceSNodeTypeCastWithSmartCastedVariableReference" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="tp25:g_PxgQB" resolve="SNodeTypeCastExpression" />
    <node concept="2S6ZIM" id="5rfTprU9dzx" role="2ZfVej">
      <node concept="3clFbS" id="5rfTprU9dzy" role="2VODD2">
        <node concept="3clFbF" id="5rfTprU9dzz" role="3cqZAp">
          <node concept="Xl_RD" id="5rfTprU9dz$" role="3clFbG">
            <property role="Xl_RC" value="Replace with Smart Casted Variable Reference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="5rfTprU9dz_" role="2ZfgGD">
      <node concept="3clFbS" id="5rfTprU9dzA" role="2VODD2">
        <node concept="3cpWs8" id="5rfTprU9dzB" role="3cqZAp">
          <node concept="3cpWsn" id="5rfTprU9dzC" role="3cpWs9">
            <property role="TrG5h" value="smartRef" />
            <node concept="3Tqbb2" id="5rfTprU9dzD" role="1tU5fm">
              <ref role="ehGHo" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
            </node>
            <node concept="2OqwBi" id="5rfTprU9dzE" role="33vP2m">
              <node concept="2Sf5sV" id="5rfTprU9dzF" role="2Oq$k0" />
              <node concept="1_qnLN" id="5rfTprU9dzG" role="2OqNvi">
                <ref role="1_rbq0" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5rfTprU9dzH" role="3cqZAp">
          <node concept="37vLTI" id="5rfTprU9dzI" role="3clFbG">
            <node concept="2OqwBi" id="5rfTprU9dzJ" role="37vLTx">
              <node concept="1PxgMI" id="5rfTprU9dzK" role="2Oq$k0">
                <node concept="chp4Y" id="5rfTprU9dzL" role="3oSUPX">
                  <ref role="cht4Q" to="tpee:fz7vLUo" resolve="VariableReference" />
                </node>
                <node concept="2OqwBi" id="5rfTprU9dzM" role="1m5AlR">
                  <node concept="2Sf5sV" id="5rfTprU9dzN" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5rfTprU9dzO" role="2OqNvi">
                    <ref role="3Tt5mk" to="tp25:5PLE6SbpWOp" resolve="leftExpression" />
                  </node>
                </node>
              </node>
              <node concept="3TrEf2" id="5rfTprU9dzP" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="5rfTprU9dzQ" role="37vLTJ">
              <node concept="37vLTw" id="5rfTprU9dzR" role="2Oq$k0">
                <ref role="3cqZAo" node="5rfTprU9dzC" resolve="smartRef" />
              </node>
              <node concept="3TrEf2" id="5rfTprU9dzS" role="2OqNvi">
                <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5rfTprU9dzT" role="3cqZAp">
          <node concept="3clFbS" id="5rfTprU9dzU" role="3clFbx">
            <node concept="3clFbF" id="5rfTprU9dzV" role="3cqZAp">
              <node concept="2OqwBi" id="5rfTprU9dzW" role="3clFbG">
                <node concept="2OqwBi" id="5rfTprU9dzX" role="2Oq$k0">
                  <node concept="37vLTw" id="5rfTprU9dzY" role="2Oq$k0">
                    <ref role="3cqZAo" node="5rfTprU9dzC" resolve="smartRef" />
                  </node>
                  <node concept="1mfA1w" id="5rfTprU9dzZ" role="2OqNvi" />
                </node>
                <node concept="1P9Npp" id="5rfTprU9d$0" role="2OqNvi">
                  <node concept="37vLTw" id="5rfTprU9d$1" role="1P9ThW">
                    <ref role="3cqZAo" node="5rfTprU9dzC" resolve="smartRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5rfTprU9d$2" role="3clFbw">
            <node concept="2OqwBi" id="5rfTprU9d$3" role="2Oq$k0">
              <node concept="37vLTw" id="5rfTprU9d$4" role="2Oq$k0">
                <ref role="3cqZAo" node="5rfTprU9dzC" resolve="smartRef" />
              </node>
              <node concept="1mfA1w" id="5rfTprU9d$5" role="2OqNvi" />
            </node>
            <node concept="1mIQ4w" id="5rfTprU9d$6" role="2OqNvi">
              <node concept="chp4Y" id="5rfTprU9d$7" role="cj9EA">
                <ref role="cht4Q" to="tpee:fHeOMHZ" resolve="ParenthesizedExpression" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2SaL7w" id="5rfTprU9d$8" role="2ZfVeh">
      <node concept="3clFbS" id="5rfTprU9d$9" role="2VODD2">
        <node concept="Jncv_" id="5rfTprU9d$a" role="3cqZAp">
          <ref role="JncvD" to="tpee:fz7vLUo" resolve="VariableReference" />
          <node concept="2OqwBi" id="5rfTprU9d$b" role="JncvB">
            <node concept="2Sf5sV" id="5rfTprU9d$c" role="2Oq$k0" />
            <node concept="3TrEf2" id="5rfTprU9d$d" role="2OqNvi">
              <ref role="3Tt5mk" to="tp25:5PLE6SbpWOp" resolve="leftExpression" />
            </node>
          </node>
          <node concept="3clFbS" id="5rfTprU9d$e" role="Jncv$">
            <node concept="Jncv_" id="5rfTprU9hvD" role="3cqZAp">
              <ref role="JncvD" to="tp25:h8chp0G" resolve="RefConcept_Reference" />
              <node concept="2OqwBi" id="5rfTprU9hVu" role="JncvB">
                <node concept="2Sf5sV" id="5rfTprU9hEf" role="2Oq$k0" />
                <node concept="3TrEf2" id="5rfTprU9iUU" role="2OqNvi">
                  <ref role="3Tt5mk" to="tp25:3oQEojIPgjT" resolve="conceptArgument" />
                </node>
              </node>
              <node concept="3clFbS" id="5rfTprU9hvH" role="Jncv$">
                <node concept="3cpWs8" id="5rfTprU9d$f" role="3cqZAp">
                  <node concept="3cpWsn" id="5rfTprU9d$g" role="3cpWs9">
                    <property role="TrG5h" value="castType" />
                    <node concept="3Tqbb2" id="5rfTprU9d$h" role="1tU5fm">
                      <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                    </node>
                    <node concept="2pJPEk" id="5rfTprU9k7y" role="33vP2m">
                      <node concept="2pJPED" id="5rfTprU9k7A" role="2pJPEn">
                        <ref role="2pJxaS" to="tp25:gzTqbfa" resolve="SNodeType" />
                        <node concept="2pIpSj" id="5rfTprU9kPI" role="2pJxcM">
                          <ref role="2pIpSl" to="tp25:g$ehGDh" resolve="concept" />
                          <node concept="36biLy" id="5rfTprU9kZc" role="28nt2d">
                            <node concept="2OqwBi" id="5rfTprU9lrX" role="36biLW">
                              <node concept="Jnkvi" id="5rfTprU9l8I" role="2Oq$k0">
                                <ref role="1M0zk5" node="5rfTprU9hvJ" resolve="cRef" />
                              </node>
                              <node concept="3TrEf2" id="5rfTprU9m7U" role="2OqNvi">
                                <ref role="3Tt5mk" to="tp25:h8cht0$" resolve="conceptDeclaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="5rfTprU9d$l" role="3cqZAp">
                  <node concept="3cpWsn" id="5rfTprU9d$m" role="3cpWs9">
                    <property role="TrG5h" value="smartCastType" />
                    <node concept="3Tqbb2" id="5rfTprU9d$n" role="1tU5fm">
                      <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                    </node>
                    <node concept="2OqwBi" id="5rfTprU9d$o" role="33vP2m">
                      <node concept="35c_gC" id="5rfTprU9d$p" role="2Oq$k0">
                        <ref role="35c_gD" to="cadi:35H7XdESSJG" resolve="SmartCastedVariableReference" />
                      </node>
                      <node concept="2qgKlT" id="5rfTprU9d$q" role="2OqNvi">
                        <ref role="37wK5l" to="bjcj:35H7XdEW4zg" resolve="checkedAsType" />
                        <node concept="2OqwBi" id="5rfTprU9d$r" role="37wK5m">
                          <node concept="2Sf5sV" id="5rfTprU9d$s" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5rfTprU9d$t" role="2OqNvi">
                            <ref role="3Tt5mk" to="tp25:5PLE6SbpWOp" resolve="leftExpression" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5rfTprU9d$u" role="37wK5m">
                          <node concept="Jnkvi" id="5rfTprU9d$v" role="2Oq$k0">
                            <ref role="1M0zk5" node="5rfTprU9d$V" resolve="varRef" />
                          </node>
                          <node concept="3TrEf2" id="5rfTprU9d$w" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5rfTprU9d$x" role="3cqZAp">
                  <node concept="2OqwBi" id="5rfTprU9d$y" role="3clFbG">
                    <node concept="10M0yZ" id="5rfTprU9d$z" role="2Oq$k0">
                      <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                      <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                    </node>
                    <node concept="liA8E" id="5rfTprU9d$$" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                      <node concept="3cpWs3" id="5rfTprU9d$_" role="37wK5m">
                        <node concept="2OqwBi" id="5rfTprU9d$A" role="3uHU7w">
                          <node concept="Jnkvi" id="5rfTprU9d$B" role="2Oq$k0">
                            <ref role="1M0zk5" node="5rfTprU9d$V" resolve="varRef" />
                          </node>
                          <node concept="3TrEf2" id="5rfTprU9d$C" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpee:fzcqZ_w" resolve="variableDeclaration" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="5rfTprU9d$D" role="3uHU7B">
                          <node concept="3cpWs3" id="5rfTprU9d$E" role="3uHU7B">
                            <node concept="3cpWs3" id="5rfTprU9d$F" role="3uHU7B">
                              <node concept="3cpWs3" id="5rfTprU9d$G" role="3uHU7B">
                                <node concept="Xl_RD" id="5rfTprU9d$H" role="3uHU7B">
                                  <property role="Xl_RC" value="" />
                                </node>
                                <node concept="2OqwBi" id="5rfTprU9d$I" role="3uHU7w">
                                  <node concept="37vLTw" id="5rfTprU9d$J" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5rfTprU9d$g" resolve="castType" />
                                  </node>
                                  <node concept="2qgKlT" id="5rfTprU9d$K" role="2OqNvi">
                                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="5rfTprU9d$L" role="3uHU7w">
                                <property role="Xl_RC" value=" ?=? " />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5rfTprU9d$M" role="3uHU7w">
                              <node concept="37vLTw" id="5rfTprU9d$N" role="2Oq$k0">
                                <ref role="3cqZAo" node="5rfTprU9d$m" resolve="smartCastType" />
                              </node>
                              <node concept="2qgKlT" id="5rfTprU9d$O" role="2OqNvi">
                                <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="5rfTprU9d$P" role="3uHU7w">
                            <property role="Xl_RC" value=" var: " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5rfTprU9d$Q" role="3cqZAp">
                  <node concept="2OqwBi" id="5rfTprU9d$R" role="3cqZAk">
                    <node concept="37vLTw" id="5rfTprU9d$S" role="2Oq$k0">
                      <ref role="3cqZAo" node="5rfTprU9d$g" resolve="castType" />
                    </node>
                    <node concept="2qgKlT" id="5rfTprU9d$T" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:hKBOZqh" resolve="isSupersetOf" />
                      <node concept="37vLTw" id="5rfTprU9d$U" role="37wK5m">
                        <ref role="3cqZAo" node="5rfTprU9d$m" resolve="smartCastType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="JncvC" id="5rfTprU9hvJ" role="JncvA">
                <property role="TrG5h" value="cRef" />
                <node concept="2jxLKc" id="5rfTprU9hvK" role="1tU5fm" />
              </node>
            </node>
          </node>
          <node concept="JncvC" id="5rfTprU9d$V" role="JncvA">
            <property role="TrG5h" value="varRef" />
            <node concept="2jxLKc" id="5rfTprU9d$W" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs6" id="5rfTprU9d$X" role="3cqZAp">
          <node concept="3clFbT" id="5rfTprU9d$Y" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
</model>

