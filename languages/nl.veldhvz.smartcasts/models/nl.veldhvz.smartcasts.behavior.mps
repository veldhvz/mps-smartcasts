<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e6c9db89-f681-46ef-a5cc-9a1e8a9e6bcb(nl.veldhvz.smartcasts.behavior)">
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
    <import index="534n" ref="r:ca699ad5-3754-432e-b8d2-2c1ff1e8bdf3(nl.veldhvz.smartcasts.dataFlow)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="1fjm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.dataFlow.framework(MPS.Core/)" />
    <import index="dau9" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.dataFlow.framework.instructions(MPS.Core/)" />
    <import index="cadi" ref="r:950587af-1c88-4c91-9d1c-64d15fc00069(nl.veldhvz.smartcasts.structure)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="97a52717-898f-4598-8150-573d9fd03868" name="jetbrains.mps.lang.dataFlow.analyzers">
      <concept id="95073643532950038" name="jetbrains.mps.lang.dataFlow.analyzers.structure.AnalyzerRunnerCreator" flags="nn" index="2v6lVJ">
        <reference id="95073643532950039" name="analyzer" index="2v6lVI" />
        <child id="178770917832625312" name="nodeToCheck" index="3vVDej" />
      </concept>
    </language>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
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
    <node concept="13i0hz" id="5rfTprU3q6v" role="13h7CS">
      <property role="TrG5h" value="nodeThatDefinesType" />
      <node concept="3Tm1VV" id="5rfTprU3q6w" role="1B3o_S" />
      <node concept="3Tqbb2" id="5rfTprU3qhS" role="3clF45" />
      <node concept="3clFbS" id="5rfTprU3q6y" role="3clF47">
        <node concept="3clFbF" id="2H0nDnYlLIR" role="3cqZAp">
          <node concept="2OqwBi" id="2H0nDnYlLIS" role="3clFbG">
            <node concept="2ShNRf" id="2H0nDnYlLIT" role="2Oq$k0">
              <node concept="1pGfFk" id="2H0nDnYlLIU" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="2H0nDnYlC3U" resolve="TypeCheckDataFlow" />
                <node concept="13iPFW" id="2H0nDnYlLIV" role="37wK5m" />
              </node>
            </node>
            <node concept="liA8E" id="2H0nDnYlLIW" role="2OqNvi">
              <ref role="37wK5l" node="2H0nDnYlFF$" resolve="nodeThatDefinedType" />
              <node concept="2OqwBi" id="2H0nDnYlLIX" role="37wK5m">
                <node concept="13iPFW" id="2H0nDnYlLIY" role="2Oq$k0" />
                <node concept="3TrEf2" id="2H0nDnYlLIZ" role="2OqNvi">
                  <ref role="3Tt5mk" to="cadi:5rSvAAOkb0X" resolve="variableDeclaration" />
                </node>
              </node>
            </node>
          </node>
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
        <node concept="3clFbF" id="2H0nDnYlGPE" role="3cqZAp">
          <node concept="2OqwBi" id="2H0nDnYlJWy" role="3clFbG">
            <node concept="2ShNRf" id="2H0nDnYlGPA" role="2Oq$k0">
              <node concept="1pGfFk" id="2H0nDnYlJFC" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" node="2H0nDnYlC3U" resolve="TypeCheckDataFlow" />
                <node concept="13iPFW" id="2H0nDnYlJMW" role="37wK5m" />
              </node>
            </node>
            <node concept="liA8E" id="2H0nDnYlKsp" role="2OqNvi">
              <ref role="37wK5l" node="2H0nDnYlEbO" resolve="checkedType" />
              <node concept="2OqwBi" id="2H0nDnYlKNi" role="37wK5m">
                <node concept="13iPFW" id="2H0nDnYlKyR" role="2Oq$k0" />
                <node concept="3TrEf2" id="2H0nDnYlLvY" role="2OqNvi">
                  <ref role="3Tt5mk" to="cadi:5rSvAAOkb0X" resolve="variableDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="35H7XdEW4z5" role="13h7CW">
      <node concept="3clFbS" id="35H7XdEW4z6" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="5rSvAAOkbd$" role="13h7CS">
      <property role="TrG5h" value="getVariable" />
      <ref role="13i0hy" to="tpek:SORzhOpB6t" resolve="getVariable" />
      <node concept="3Tm1VV" id="5rSvAAOkbd_" role="1B3o_S" />
      <node concept="3clFbS" id="5rSvAAOkbdG" role="3clF47">
        <node concept="3cpWs6" id="5rSvAAOkbvo" role="3cqZAp">
          <node concept="2OqwBi" id="5rSvAAOkc9d" role="3cqZAk">
            <node concept="13iPFW" id="5rSvAAOkbWj" role="2Oq$k0" />
            <node concept="3TrEf2" id="5rSvAAOkcNT" role="2OqNvi">
              <ref role="3Tt5mk" to="cadi:5rSvAAOkb0X" resolve="variableDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="5rSvAAOkbdH" role="3clF45">
        <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2H0nDnYlAeD">
    <property role="TrG5h" value="TypeCheckDataFlow" />
    <node concept="2tJIrI" id="2H0nDnYlAsQ" role="jymVt" />
    <node concept="312cEg" id="2H0nDnYlCqA" role="jymVt">
      <property role="TrG5h" value="checkedVars" />
      <node concept="3Tm6S6" id="2H0nDnYlCjp" role="1B3o_S" />
      <node concept="3rvAFt" id="2H0nDnYlCxN" role="1tU5fm">
        <node concept="3Tqbb2" id="2H0nDnYlCxO" role="3rvQeY">
          <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
        </node>
        <node concept="3uibUv" id="2H0nDnYlCxP" role="3rvSg0">
          <ref role="3uigEE" to="534n:5rfTprU03us" resolve="TypeCheckState" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2H0nDnYlCyl" role="jymVt" />
    <node concept="3clFbW" id="2H0nDnYlC3U" role="jymVt">
      <node concept="3cqZAl" id="2H0nDnYlC3W" role="3clF45" />
      <node concept="3Tm1VV" id="2H0nDnYlC3X" role="1B3o_S" />
      <node concept="3clFbS" id="2H0nDnYlC3Y" role="3clF47">
        <node concept="3clFbF" id="2H0nDnYlCEx" role="3cqZAp">
          <node concept="37vLTI" id="2H0nDnYlDwF" role="3clFbG">
            <node concept="1rXfSq" id="2H0nDnYlDzT" role="37vLTx">
              <ref role="37wK5l" node="2H0nDnYlAyD" resolve="checkedVars" />
              <node concept="37vLTw" id="2H0nDnYlDDn" role="37wK5m">
                <ref role="3cqZAo" node="2H0nDnYlCbf" resolve="contextNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="2H0nDnYlCKd" role="37vLTJ">
              <node concept="Xjq3P" id="2H0nDnYlCEw" role="2Oq$k0" />
              <node concept="2OwXpG" id="2H0nDnYlD9l" role="2OqNvi">
                <ref role="2Oxat5" node="2H0nDnYlCqA" resolve="checkedVars" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2H0nDnYlCbf" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="2H0nDnYlCbe" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2H0nDnYlDHR" role="jymVt" />
    <node concept="3clFb_" id="2H0nDnYlEbO" role="jymVt">
      <property role="TrG5h" value="checkedType" />
      <node concept="3clFbS" id="2H0nDnYlEbR" role="3clF47">
        <node concept="3cpWs8" id="2H0nDnYlEAE" role="3cqZAp">
          <node concept="3cpWsn" id="2H0nDnYlEAF" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="2H0nDnYlEAG" role="1tU5fm">
              <ref role="3uigEE" to="534n:5rfTprU03us" resolve="TypeCheckState" />
            </node>
            <node concept="3EllGN" id="2H0nDnYlEAH" role="33vP2m">
              <node concept="37vLTw" id="2H0nDnYlEZA" role="3ElVtu">
                <ref role="3cqZAo" node="2H0nDnYlEmG" resolve="var" />
              </node>
              <node concept="37vLTw" id="2H0nDnYlESG" role="3ElQJh">
                <ref role="3cqZAo" node="2H0nDnYlCqA" resolve="checkedVars" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2H0nDnYlEAM" role="3cqZAp">
          <node concept="3K4zz7" id="2H0nDnYlEAN" role="3cqZAk">
            <node concept="10Nm6u" id="2H0nDnYlEAO" role="3K4E3e" />
            <node concept="3clFbC" id="2H0nDnYlEAP" role="3K4Cdx">
              <node concept="10Nm6u" id="2H0nDnYlEAQ" role="3uHU7w" />
              <node concept="37vLTw" id="2H0nDnYlEAR" role="3uHU7B">
                <ref role="3cqZAo" node="2H0nDnYlEAF" resolve="state" />
              </node>
            </node>
            <node concept="2OqwBi" id="2H0nDnYlEAS" role="3K4GZi">
              <node concept="37vLTw" id="2H0nDnYlEAT" role="2Oq$k0">
                <ref role="3cqZAo" node="2H0nDnYlEAF" resolve="state" />
              </node>
              <node concept="liA8E" id="2H0nDnYlEAU" role="2OqNvi">
                <ref role="37wK5l" to="534n:5rfTprU03Fk" resolve="getType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2H0nDnYlE1g" role="1B3o_S" />
      <node concept="3Tqbb2" id="2H0nDnYlEb0" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
      </node>
      <node concept="37vLTG" id="2H0nDnYlEmG" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="2H0nDnYlEmF" role="1tU5fm">
          <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2H0nDnYlF4X" role="jymVt" />
    <node concept="3clFb_" id="2H0nDnYlFF$" role="jymVt">
      <property role="TrG5h" value="nodeThatDefinedType" />
      <node concept="3clFbS" id="2H0nDnYlFFB" role="3clF47">
        <node concept="3cpWs8" id="2H0nDnYlG0q" role="3cqZAp">
          <node concept="3cpWsn" id="2H0nDnYlG0r" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="2H0nDnYlG0s" role="1tU5fm">
              <ref role="3uigEE" to="534n:5rfTprU03us" resolve="TypeCheckState" />
            </node>
            <node concept="3EllGN" id="2H0nDnYlG0t" role="33vP2m">
              <node concept="37vLTw" id="2H0nDnYlG0u" role="3ElVtu">
                <ref role="3cqZAo" node="2H0nDnYlFT5" resolve="var" />
              </node>
              <node concept="37vLTw" id="2H0nDnYlG0v" role="3ElQJh">
                <ref role="3cqZAo" node="2H0nDnYlCqA" resolve="checkedVars" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2H0nDnYlG0w" role="3cqZAp">
          <node concept="3K4zz7" id="2H0nDnYlG0x" role="3cqZAk">
            <node concept="10Nm6u" id="2H0nDnYlG0y" role="3K4E3e" />
            <node concept="3clFbC" id="2H0nDnYlG0z" role="3K4Cdx">
              <node concept="10Nm6u" id="2H0nDnYlG0$" role="3uHU7w" />
              <node concept="37vLTw" id="2H0nDnYlG0_" role="3uHU7B">
                <ref role="3cqZAo" node="2H0nDnYlG0r" resolve="state" />
              </node>
            </node>
            <node concept="2OqwBi" id="2H0nDnYlG0A" role="3K4GZi">
              <node concept="37vLTw" id="2H0nDnYlG0B" role="2Oq$k0">
                <ref role="3cqZAo" node="2H0nDnYlG0r" resolve="state" />
              </node>
              <node concept="liA8E" id="2H0nDnYlG0C" role="2OqNvi">
                <ref role="37wK5l" to="534n:5rfTprU3rU9" resolve="getTypeNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2H0nDnYlFu$" role="1B3o_S" />
      <node concept="3Tqbb2" id="2H0nDnYlFEX" role="3clF45" />
      <node concept="37vLTG" id="2H0nDnYlFT5" role="3clF46">
        <property role="TrG5h" value="var" />
        <node concept="3Tqbb2" id="2H0nDnYlFT4" role="1tU5fm">
          <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2H0nDnYlByR" role="jymVt" />
    <node concept="2YIFZL" id="2H0nDnYlAyD" role="jymVt">
      <property role="TrG5h" value="checkedVars" />
      <node concept="3clFbS" id="2H0nDnYlAyH" role="3clF47">
        <node concept="3cpWs8" id="2H0nDnYlAyI" role="3cqZAp">
          <node concept="3cpWsn" id="2H0nDnYlAyJ" role="3cpWs9">
            <property role="TrG5h" value="typechecksRunner" />
            <node concept="3uibUv" id="2H0nDnYlAyK" role="1tU5fm">
              <ref role="3uigEE" to="mu20:9V7Nft_x9B" resolve="CustomAnalyzerRunner" />
              <node concept="3rvAFt" id="2H0nDnYlAyL" role="11_B2D">
                <node concept="3Tqbb2" id="2H0nDnYlAyM" role="3rvQeY">
                  <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
                </node>
                <node concept="3uibUv" id="2H0nDnYlAyN" role="3rvSg0">
                  <ref role="3uigEE" to="534n:5rfTprU03us" resolve="TypeCheckState" />
                </node>
              </node>
            </node>
            <node concept="2v6lVJ" id="2H0nDnYlAyO" role="33vP2m">
              <ref role="2v6lVI" to="534n:35H7XdESU1Y" resolve="TypeChecks" />
              <node concept="2OqwBi" id="2H0nDnYlAyP" role="3vVDej">
                <node concept="37vLTw" id="2H0nDnYlAyQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2H0nDnYlAzx" resolve="contextNode" />
                </node>
                <node concept="2Xjw5R" id="2H0nDnYlAyR" role="2OqNvi">
                  <node concept="1xMEDy" id="2H0nDnYlAyS" role="1xVPHs">
                    <node concept="chp4Y" id="2H0nDnYlAyT" role="ri$Ld">
                      <ref role="cht4Q" to="tpee:i2fhoOR" resolve="IMethodLike" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2H0nDnYlAyU" role="3cqZAp">
          <node concept="3cpWsn" id="2H0nDnYlAyV" role="3cpWs9">
            <property role="TrG5h" value="typechecks" />
            <node concept="3uibUv" id="2H0nDnYlAyW" role="1tU5fm">
              <ref role="3uigEE" to="1fjm:~AnalysisResult" resolve="AnalysisResult" />
              <node concept="3rvAFt" id="2H0nDnYlAyX" role="11_B2D">
                <node concept="3Tqbb2" id="2H0nDnYlAyY" role="3rvQeY">
                  <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
                </node>
                <node concept="3uibUv" id="2H0nDnYlAyZ" role="3rvSg0">
                  <ref role="3uigEE" to="534n:5rfTprU03us" resolve="TypeCheckState" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2H0nDnYlAz0" role="33vP2m">
              <node concept="37vLTw" id="2H0nDnYlAz1" role="2Oq$k0">
                <ref role="3cqZAo" node="2H0nDnYlAyJ" resolve="typechecksRunner" />
              </node>
              <node concept="liA8E" id="2H0nDnYlAz2" role="2OqNvi">
                <ref role="37wK5l" to="1fjm:~AnalyzerRunner.analyze()" resolve="analyze" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="2H0nDnYlAz3" role="3cqZAp">
          <node concept="3clFbS" id="2H0nDnYlAz4" role="2LFqv$">
            <node concept="3cpWs8" id="2H0nDnYlAz5" role="3cqZAp">
              <node concept="3cpWsn" id="2H0nDnYlAz6" role="3cpWs9">
                <property role="TrG5h" value="instruction" />
                <node concept="3uibUv" id="2H0nDnYlAz7" role="1tU5fm">
                  <ref role="3uigEE" to="dau9:~Instruction" resolve="Instruction" />
                </node>
                <node concept="2OqwBi" id="2H0nDnYlAz8" role="33vP2m">
                  <node concept="37vLTw" id="2H0nDnYlAz9" role="2Oq$k0">
                    <ref role="3cqZAo" node="2H0nDnYlAzn" resolve="state" />
                  </node>
                  <node concept="liA8E" id="2H0nDnYlAza" role="2OqNvi">
                    <ref role="37wK5l" to="1fjm:~ProgramState.getInstruction()" resolve="getInstruction" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2H0nDnYlAzb" role="3cqZAp">
              <node concept="3clFbS" id="2H0nDnYlAzc" role="3clFbx">
                <node concept="3cpWs6" id="2H0nDnYlAzd" role="3cqZAp">
                  <node concept="2OqwBi" id="2H0nDnYlAze" role="3cqZAk">
                    <node concept="37vLTw" id="2H0nDnYlAzf" role="2Oq$k0">
                      <ref role="3cqZAo" node="2H0nDnYlAyV" resolve="typechecks" />
                    </node>
                    <node concept="liA8E" id="2H0nDnYlAzg" role="2OqNvi">
                      <ref role="37wK5l" to="1fjm:~AnalysisResult.get(jetbrains.mps.lang.dataFlow.framework.instructions.Instruction)" resolve="get" />
                      <node concept="37vLTw" id="2H0nDnYlAzh" role="37wK5m">
                        <ref role="3cqZAo" node="2H0nDnYlAz6" resolve="instruction" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="2H0nDnYlAzi" role="3clFbw">
                <node concept="37vLTw" id="2H0nDnYlAzj" role="3uHU7w">
                  <ref role="3cqZAo" node="2H0nDnYlAzx" resolve="contextNode" />
                </node>
                <node concept="2OqwBi" id="2H0nDnYlAzk" role="3uHU7B">
                  <node concept="37vLTw" id="2H0nDnYlAzl" role="2Oq$k0">
                    <ref role="3cqZAo" node="2H0nDnYlAz6" resolve="instruction" />
                  </node>
                  <node concept="liA8E" id="2H0nDnYlAzm" role="2OqNvi">
                    <ref role="37wK5l" to="dau9:~Instruction.getSource()" resolve="getSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="2H0nDnYlAzn" role="1Duv9x">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="2H0nDnYlAzo" role="1tU5fm">
              <ref role="3uigEE" to="1fjm:~ProgramState" resolve="ProgramState" />
            </node>
          </node>
          <node concept="2OqwBi" id="2H0nDnYlAzp" role="1DdaDG">
            <node concept="37vLTw" id="2H0nDnYlAzq" role="2Oq$k0">
              <ref role="3cqZAo" node="2H0nDnYlAyV" resolve="typechecks" />
            </node>
            <node concept="liA8E" id="2H0nDnYlAzr" role="2OqNvi">
              <ref role="37wK5l" to="1fjm:~AnalysisResult.getStates()" resolve="getStates" />
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="2H0nDnYnjO4" role="3cqZAp">
          <node concept="2ShNRf" id="2H0nDnYnkAI" role="YScLw">
            <node concept="1pGfFk" id="2H0nDnYnl_K" role="2ShVmc">
              <property role="373rjd" value="true" />
              <ref role="37wK5l" to="wyt6:~Error.&lt;init&gt;(java.lang.String)" resolve="Error" />
              <node concept="3cpWs3" id="2H0nDnYnxpO" role="37wK5m">
                <node concept="Xl_RD" id="2H0nDnYnxq8" role="3uHU7w">
                  <property role="Xl_RC" value="` not found." />
                </node>
                <node concept="3cpWs3" id="2H0nDnYntH4" role="3uHU7B">
                  <node concept="Xl_RD" id="2H0nDnYnmVS" role="3uHU7B">
                    <property role="Xl_RC" value="Data flow state for context node `" />
                  </node>
                  <node concept="2OqwBi" id="2H0nDnYnvk_" role="3uHU7w">
                    <node concept="37vLTw" id="2H0nDnYnusM" role="2Oq$k0">
                      <ref role="3cqZAo" node="2H0nDnYlAzx" resolve="contextNode" />
                    </node>
                    <node concept="2qgKlT" id="2H0nDnYnwkH" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3rvAFt" id="2H0nDnYlAzu" role="3clF45">
        <node concept="3Tqbb2" id="2H0nDnYlAzv" role="3rvQeY">
          <ref role="ehGHo" to="tpee:4H$HgYMZ7sw" resolve="IVariableDeclaration" />
        </node>
        <node concept="3uibUv" id="2H0nDnYlAzw" role="3rvSg0">
          <ref role="3uigEE" to="534n:5rfTprU03us" resolve="TypeCheckState" />
        </node>
      </node>
      <node concept="37vLTG" id="2H0nDnYlAzx" role="3clF46">
        <property role="TrG5h" value="contextNode" />
        <node concept="3Tqbb2" id="2H0nDnYlAzy" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="2H0nDnYlAzz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2H0nDnYlAt2" role="jymVt" />
    <node concept="3Tm1VV" id="2H0nDnYlAeE" role="1B3o_S" />
  </node>
  <node concept="13h7C7" id="5rSvAAOiVh_">
    <ref role="13h7C2" to="cadi:5rSvAAOiUxN" resolve="ITypeCheck" />
    <node concept="13i0hz" id="5rSvAAOiVG8" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getConditionNode" />
      <node concept="3Tm1VV" id="5rSvAAOiVG9" role="1B3o_S" />
      <node concept="3Tqbb2" id="5rSvAAOiVGw" role="3clF45" />
      <node concept="3clFbS" id="5rSvAAOiVGb" role="3clF47" />
    </node>
    <node concept="13i0hz" id="5rSvAAOiVDc" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getConditional" />
      <node concept="3Tm1VV" id="5rSvAAOiVDd" role="1B3o_S" />
      <node concept="3Tqbb2" id="5rSvAAOiVDs" role="3clF45">
        <ref role="ehGHo" to="tpee:3F8BxGibdn2" resolve="IConditional" />
      </node>
      <node concept="3clFbS" id="5rSvAAOiVDf" role="3clF47" />
    </node>
    <node concept="13i0hz" id="5rSvAAOiVEf" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getTypeNode" />
      <node concept="3Tm1VV" id="5rSvAAOiVEg" role="1B3o_S" />
      <node concept="3Tqbb2" id="5rSvAAOiVEO" role="3clF45" />
      <node concept="3clFbS" id="5rSvAAOiVEi" role="3clF47" />
    </node>
    <node concept="13i0hz" id="5rSvAAOj5uR" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getCheckedNode" />
      <node concept="3Tm1VV" id="5rSvAAOj5uS" role="1B3o_S" />
      <node concept="3Tqbb2" id="5rSvAAOj5vj" role="3clF45">
        <ref role="ehGHo" to="tpee:fz3vP1J" resolve="Expression" />
      </node>
      <node concept="3clFbS" id="5rSvAAOj5uU" role="3clF47" />
    </node>
    <node concept="13hLZK" id="5rSvAAOiVhA" role="13h7CW">
      <node concept="3clFbS" id="5rSvAAOiVhB" role="2VODD2" />
    </node>
  </node>
</model>

