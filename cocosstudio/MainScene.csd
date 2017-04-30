<GameFile>
  <PropertyGroup Name="MainScene" Type="Scene" ID="a2ee0952-26b5-49ae-8bf9-4f1d6279b798" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="20" Speed="1.0000">
        <Timeline ActionTag="1051060869" Property="Position">
          <PointFrame FrameIndex="0" X="241.5622" Y="217.6090">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="10" X="297.9074" Y="196.6099">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="20" X="392.6654" Y="603.6918">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="1051060869" Property="Scale">
          <ScaleFrame FrameIndex="0" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="10" X="3.5022" Y="3.1315">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="20" X="8.0375" Y="4.5303">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="1051060869" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
      </Animation>
      <ObjectData Name="Scene" ctype="GameNodeObjectData">
        <Size X="1280.0000" Y="720.0000" />
        <Children>
          <AbstractNodeData Name="Image_1" ActionTag="-42699396" Tag="14" IconVisible="False" LeftMargin="156.0130" RightMargin="163.9871" TopMargin="24.5280" BottomMargin="55.4720" LeftEage="316" RightEage="316" TopEage="211" BottomEage="211" Scale9OriginX="316" Scale9OriginY="211" Scale9Width="328" Scale9Height="218" ctype="ImageViewObjectData">
            <Size X="960.0000" Y="640.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="636.0130" Y="375.4720" />
            <Scale ScaleX="1.3406" ScaleY="1.1437" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.4969" Y="0.5215" />
            <PreSize X="0.7500" Y="0.8889" />
            <FileData Type="Normal" Path="HelloWorld.png" Plist="" />
          </AbstractNodeData>
          <AbstractNodeData Name="actionNode" ActionTag="-937800577" Tag="176" IconVisible="True" LeftMargin="640.0000" RightMargin="640.0000" TopMargin="360.0000" BottomMargin="360.0000" ctype="SingleNodeObjectData">
            <Size X="0.0000" Y="0.0000" />
            <Children>
              <AbstractNodeData Name="bgSpr" ActionTag="953446860" Tag="5" IconVisible="False" LeftMargin="-480.0000" RightMargin="-480.0000" TopMargin="-320.0000" BottomMargin="-320.0000" ctype="SpriteObjectData">
                <Size X="960.0000" Y="640.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition />
                <PreSize X="0.0000" Y="0.0000" />
                <FileData Type="Normal" Path="HelloWorld.png" Plist="" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint />
            <Position X="640.0000" Y="360.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="0.0000" Y="0.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="runActionBtn" ActionTag="1051060869" Tag="175" IconVisible="False" LeftMargin="350.7138" RightMargin="883.2863" TopMargin="179.7245" BottomMargin="504.2755" TouchEnable="True" FontSize="14" ButtonText="tipsOpen" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="16" Scale9Height="14" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
            <Size X="46.0000" Y="36.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="373.7138" Y="522.2755" />
            <Scale ScaleX="7.1304" ScaleY="4.2506" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.2920" Y="0.7254" />
            <PreSize X="0.0359" Y="0.0500" />
            <TextColor A="255" R="65" G="65" B="70" />
            <DisabledFileData Type="Default" Path="Default/Button_Disable.png" Plist="" />
            <PressedFileData Type="Default" Path="Default/Button_Press.png" Plist="" />
            <NormalFileData Type="Default" Path="Default/Button_Normal.png" Plist="" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
          <AbstractNodeData Name="closeBtn" ActionTag="-578497498" Tag="13" IconVisible="False" LeftMargin="810.3412" RightMargin="423.6588" TopMargin="589.2067" BottomMargin="94.7934" TouchEnable="True" FontSize="14" ButtonText="tipsClose" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="16" Scale9Height="14" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
            <Size X="46.0000" Y="36.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="833.3412" Y="112.7934" />
            <Scale ScaleX="8.9936" ScaleY="4.9935" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.6510" Y="0.1567" />
            <PreSize X="0.0359" Y="0.0500" />
            <TextColor A="255" R="65" G="65" B="70" />
            <DisabledFileData Type="Default" Path="Default/Button_Disable.png" Plist="" />
            <PressedFileData Type="Default" Path="Default/Button_Press.png" Plist="" />
            <NormalFileData Type="Default" Path="Default/Button_Normal.png" Plist="" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>