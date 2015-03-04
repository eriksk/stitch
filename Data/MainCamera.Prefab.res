<root dataType="Struct" type="Duality.Resources.Prefab" id="129723834">
  <objTree dataType="Struct" type="Duality.GameObject" id="1011635195">
    <active dataType="Bool">true</active>
    <children />
    <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1199906504">
      <_items dataType="Array" type="Duality.Component[]" id="1533763180" length="4">
        <item dataType="Struct" type="Duality.Components.Transform" id="3371950127">
          <active dataType="Bool">true</active>
          <angle dataType="Float">0</angle>
          <angleAbs dataType="Float">0</angleAbs>
          <angleVel dataType="Float">0</angleVel>
          <angleVelAbs dataType="Float">0</angleVelAbs>
          <deriveAngle dataType="Bool">true</deriveAngle>
          <gameobj dataType="ObjectRef">1011635195</gameobj>
          <ignoreParent dataType="Bool">false</ignoreParent>
          <parentTransform />
          <pos dataType="Struct" type="OpenTK.Vector3">
            <X dataType="Float">158.939789</X>
            <Y dataType="Float">27.6275024</Y>
            <Z dataType="Float">-500</Z>
          </pos>
          <posAbs dataType="Struct" type="OpenTK.Vector3">
            <X dataType="Float">158.939789</X>
            <Y dataType="Float">27.6275024</Y>
            <Z dataType="Float">-500</Z>
          </posAbs>
          <scale dataType="Float">1</scale>
          <scaleAbs dataType="Float">1</scaleAbs>
          <vel dataType="Struct" type="OpenTK.Vector3">
            <X dataType="Float">0</X>
            <Y dataType="Float">0</Y>
            <Z dataType="Float">0</Z>
          </vel>
          <velAbs dataType="Struct" type="OpenTK.Vector3">
            <X dataType="Float">0</X>
            <Y dataType="Float">0</Y>
            <Z dataType="Float">0</Z>
          </velAbs>
        </item>
        <item dataType="Struct" type="Duality.Components.Camera" id="1548911002">
          <active dataType="Bool">true</active>
          <farZ dataType="Float">10000</farZ>
          <focusDist dataType="Float">500</focusDist>
          <gameobj dataType="ObjectRef">1011635195</gameobj>
          <nearZ dataType="Float">0</nearZ>
          <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="4197775962">
            <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="810470400" length="4">
              <item dataType="Struct" type="Duality.Components.Camera+Pass" id="495370396">
                <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                  <A dataType="Byte">0</A>
                  <B dataType="Byte">0</B>
                  <G dataType="Byte">0</G>
                  <R dataType="Byte">0</R>
                </clearColor>
                <clearDepth dataType="Float">1</clearDepth>
                <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                <input />
                <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                  <contentPath />
                </output>
                <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
              </item>
            </_items>
            <_size dataType="Int">1</_size>
            <_version dataType="Int">1</_version>
          </passes>
          <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
          <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
        </item>
        <item dataType="Struct" type="Duality.Components.SoundListener" id="1665116566">
          <active dataType="Bool">true</active>
          <gameobj dataType="ObjectRef">1011635195</gameobj>
        </item>
      </_items>
      <_size dataType="Int">3</_size>
      <_version dataType="Int">3</_version>
    </compList>
    <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3277698782" surrogate="true">
      <header />
      <body>
        <keys dataType="Array" type="System.Type[]" id="2010247562">
          <item dataType="Type" id="3919329248" value="Duality.Components.Transform" />
          <item dataType="Type" id="1846907790" value="Duality.Components.Camera" />
          <item dataType="Type" id="1837467388" value="Duality.Components.SoundListener" />
        </keys>
        <values dataType="Array" type="Duality.Component[]" id="1532377370">
          <item dataType="ObjectRef">3371950127</item>
          <item dataType="ObjectRef">1548911002</item>
          <item dataType="ObjectRef">1665116566</item>
        </values>
      </body>
    </compMap>
    <compTransform dataType="ObjectRef">3371950127</compTransform>
    <identifier dataType="Struct" type="System.Guid" surrogate="true">
      <header>
        <data dataType="Array" type="System.Byte[]" id="237534826">rh/TY59LOkyIUxRExBcUbw==</data>
      </header>
      <body />
    </identifier>
    <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
    <name dataType="String">MainCamera</name>
    <parent />
    <prefabLink />
  </objTree>
  <sourcePath dataType="String">MainCamera</sourcePath>
</root>
<!-- XmlFormatterBase Document Separator -->
