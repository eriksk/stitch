<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <globalGravity dataType="Struct" type="OpenTK.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="2065456254">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2723216680">
        <_items dataType="Array" type="Duality.Component[]" id="1087745964" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="130803890">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2065456254</gameobj>
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
          <item dataType="Struct" type="Duality.Components.Camera" id="2602732061">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">10000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">2065456254</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="1569583569">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="1829409518" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="3750289488">
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
          <item dataType="Struct" type="Duality.Components.SoundListener" id="2718937625">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2065456254</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2875220126" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Type[]" id="725202666">
            <item dataType="Type" id="673300768" value="Duality.Components.Transform" />
            <item dataType="Type" id="4102352782" value="Duality.Components.Camera" />
            <item dataType="Type" id="2049771580" value="Duality.Components.SoundListener" />
          </keys>
          <values dataType="Array" type="Duality.Component[]" id="2491876314">
            <item dataType="ObjectRef">130803890</item>
            <item dataType="ObjectRef">2602732061</item>
            <item dataType="ObjectRef">2718937625</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">130803890</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2482106186">pxjKd9a+fkScl7LrxTPipw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">MainCamera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1229736255">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2902355133">
        <_items dataType="Array" type="Duality.Component[]" id="3744456230" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="3590051187">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1229736255</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
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
          <item dataType="Struct" type="TextureStitch.Components.StitchedTextureRenderer" id="1419346199">
            <_createCollider dataType="Bool">false</_createCollider>
            <_x003C_BottomMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_side.Material.res</contentPath>
            </_x003C_BottomMaterial_x003E_k__BackingField>
            <_x003C_ColorTint_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </_x003C_ColorTint_x003E_k__BackingField>
            <_x003C_FillMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_body.Material.res</contentPath>
            </_x003C_FillMaterial_x003E_k__BackingField>
            <_x003C_FillScale_x003E_k__BackingField dataType="Float">1</_x003C_FillScale_x003E_k__BackingField>
            <_x003C_FillUvOffset_x003E_k__BackingField dataType="Struct" type="OpenTK.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </_x003C_FillUvOffset_x003E_k__BackingField>
            <_x003C_Offset_x003E_k__BackingField dataType="Int">0</_x003C_Offset_x003E_k__BackingField>
            <_x003C_Points_x003E_k__BackingField dataType="Struct" type="System.Collections.Generic.List`1[[TextureStitch.Components.MeshNode]]" id="19524887">
              <_items dataType="Array" type="TextureStitch.Components.MeshNode[]" id="3587695374" length="32">
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3142520272">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">654.106445</X>
                    <Y dataType="Float">-143.13385</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1350674030">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-168.992966</X>
                    <Y dataType="Float">-152.710831</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="872361388">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-343.971436</X>
                    <Y dataType="Float">323.9734</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1866448402">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-643.7878</X>
                    <Y dataType="Float">317.9574</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1788929928">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-688.683533</X>
                    <Y dataType="Float">838.5602</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3469529958">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-485.151123</X>
                    <Y dataType="Float">1576.30481</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2908932932">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">180.49231</X>
                    <Y dataType="Float">1559.01538</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3718145034">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">552.215332</X>
                    <Y dataType="Float">1368.83154</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2810311616">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1105.47742</X>
                    <Y dataType="Float">1425.02222</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3061448510">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1723.575</X>
                    <Y dataType="Float">1230.516</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1666498716">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2129.91748</X>
                    <Y dataType="Float">1275.72388</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1647539170">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2844.42285</X>
                    <Y dataType="Float">808.819336</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3373117048">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4230.988</X>
                    <Y dataType="Float">1148.38623</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2574244790">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">5044.53369</X>
                    <Y dataType="Float">815.8937</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3101141684">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">5851.00537</X>
                    <Y dataType="Float">1424.28442</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="188535002">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">7230.496</X>
                    <Y dataType="Float">1148.38623</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="319935920">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">7400.2793</X>
                    <Y dataType="Float">-103.766815</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="855651726">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">7159.753</X>
                    <Y dataType="Float">-924.3869</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3099508876">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">6240.093</X>
                    <Y dataType="Float">-1072.94751</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="327506610">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">5787.33643</X>
                    <Y dataType="Float">-1143.69055</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2278602600">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4535.18359</X>
                    <Y dataType="Float">-938.5355</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="847734662">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4181.468</X>
                    <Y dataType="Float">44.7937164</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1703502628">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3621.091</X>
                    <Y dataType="Float">37.5446777</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1106543402">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3586.512</X>
                    <Y dataType="Float">-1125.17017</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="716770592">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3050.53955</X>
                    <Y dataType="Float">-1159.74915</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="705387230">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3046.217</X>
                    <Y dataType="Float">-628.098755</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1702238716">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2246.58057</X>
                    <Y dataType="Float">-584.8752</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2613925506">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2246.58057</X>
                    <Y dataType="Float">-1112.20313</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="396500952">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1183.27991</X>
                    <Y dataType="Float">-1116.52551</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2616889302">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1112.95752</X>
                    <Y dataType="Float">-644.488831</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2549239700">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">645.2909</X>
                    <Y dataType="Float">-622.9448</Y>
                  </Pos>
                </item>
              </_items>
              <_size dataType="Int">31</_size>
              <_version dataType="Int">129</_version>
            </_x003C_Points_x003E_k__BackingField>
            <_x003C_RuntimeOffset_x003E_k__BackingField dataType="Float">0</_x003C_RuntimeOffset_x003E_k__BackingField>
            <_x003C_SideMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_side.Material.res</contentPath>
            </_x003C_SideMaterial_x003E_k__BackingField>
            <_x003C_TopLeftCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_top_left.Material.res</contentPath>
            </_x003C_TopLeftCapMaterial_x003E_k__BackingField>
            <_x003C_TopMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_top.Material.res</contentPath>
            </_x003C_TopMaterial_x003E_k__BackingField>
            <_x003C_TopOffset_x003E_k__BackingField dataType="Float">0</_x003C_TopOffset_x003E_k__BackingField>
            <_x003C_TopRightCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_top_right.Material.res</contentPath>
            </_x003C_TopRightCapMaterial_x003E_k__BackingField>
            <_x003C_TopThresHold_x003E_k__BackingField dataType="Int">50</_x003C_TopThresHold_x003E_k__BackingField>
            <_x003C_VisibilityGroup_x003E_k__BackingField dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1229736255</gameobj>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="295630008" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Type[]" id="3098067415">
            <item dataType="ObjectRef">673300768</item>
            <item dataType="Type" id="2180332046" value="TextureStitch.Components.StitchedTextureRenderer" />
          </keys>
          <values dataType="Array" type="Duality.Component[]" id="517387200">
            <item dataType="ObjectRef">3590051187</item>
            <item dataType="ObjectRef">1419346199</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3590051187</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="956329461">RgaI6sRuYE+3g81mVKAXGQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Geom</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3745552616">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3943187502">
        <_items dataType="Array" type="Duality.Component[]" id="4134359888" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1810900252">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3745552616</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">-89.70215</X>
              <Y dataType="Float">-406.020325</Y>
              <Z dataType="Float">500</Z>
            </pos>
            <posAbs dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">-89.70215</X>
              <Y dataType="Float">-406.020325</Y>
              <Z dataType="Float">500</Z>
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
          <item dataType="Struct" type="TextureStitch.Components.StitchedTextureRenderer" id="3935162560">
            <_createCollider dataType="Bool">false</_createCollider>
            <_x003C_BottomMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_side.Material.res</contentPath>
            </_x003C_BottomMaterial_x003E_k__BackingField>
            <_x003C_ColorTint_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">142</B>
              <G dataType="Byte">93</G>
              <R dataType="Byte">68</R>
            </_x003C_ColorTint_x003E_k__BackingField>
            <_x003C_FillMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_body.Material.res</contentPath>
            </_x003C_FillMaterial_x003E_k__BackingField>
            <_x003C_FillScale_x003E_k__BackingField dataType="Float">1</_x003C_FillScale_x003E_k__BackingField>
            <_x003C_FillUvOffset_x003E_k__BackingField dataType="Struct" type="OpenTK.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </_x003C_FillUvOffset_x003E_k__BackingField>
            <_x003C_Offset_x003E_k__BackingField dataType="Int">0</_x003C_Offset_x003E_k__BackingField>
            <_x003C_Points_x003E_k__BackingField dataType="Struct" type="System.Collections.Generic.List`1[[TextureStitch.Components.MeshNode]]" id="1172014832">
              <_items dataType="Array" type="TextureStitch.Components.MeshNode[]" id="1706568508" length="32">
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3437123396">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">350.884644</X>
                    <Y dataType="Float">-457.797974</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="259432086">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-472.214783</X>
                    <Y dataType="Float">-467.374939</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="612634368">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-750.174255</X>
                    <Y dataType="Float">72.2420654</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2206840866">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-1049.99048</X>
                    <Y dataType="Float">66.2260742</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3613090908">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-1094.88623</X>
                    <Y dataType="Float">586.8291</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="4140661502">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-1470.04077</X>
                    <Y dataType="Float">2758.17456</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2079983288">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-804.397461</X>
                    <Y dataType="Float">2740.885</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1487224682">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-432.674377</X>
                    <Y dataType="Float">2550.70142</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2124605620">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1141.29138</X>
                    <Y dataType="Float">2481.54272</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3806006918">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1759.38892</X>
                    <Y dataType="Float">2287.036</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3148183600">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2165.73145</X>
                    <Y dataType="Float">2332.244</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2181402194">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2880.23682</X>
                    <Y dataType="Float">1865.33887</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="179245964">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4266.802</X>
                    <Y dataType="Float">2204.906</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3152507118">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">6638.26367</X>
                    <Y dataType="Float">2015.67065</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3047939560">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">7444.73535</X>
                    <Y dataType="Float">2624.06177</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2395744346">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">8824.228</X>
                    <Y dataType="Float">2348.16357</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3641891364">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">8119.43555</X>
                    <Y dataType="Float">-287.8709</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="4228881206">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">7878.909</X>
                    <Y dataType="Float">-1108.48853</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1446128608">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">6959.249</X>
                    <Y dataType="Float">-1257.04883</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1374394818">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">6102.00049</X>
                    <Y dataType="Float">-1692.92163</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1965087292">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4849.84766</X>
                    <Y dataType="Float">-1487.76611</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1013288606">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4496.132</X>
                    <Y dataType="Float">-504.4383</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2345528216">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3935.75513</X>
                    <Y dataType="Float">-511.687317</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="4162139658">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3609.39673</X>
                    <Y dataType="Float">-1571.419</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2936044692">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3073.42432</X>
                    <Y dataType="Float">-1605.998</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1628035110">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3069.10181</X>
                    <Y dataType="Float">-1074.34961</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2534260240">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2269.46533</X>
                    <Y dataType="Float">-1031.12622</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="4036116978">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2269.46533</X>
                    <Y dataType="Float">-1558.4519</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1246600044">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">880.058</X>
                    <Y dataType="Float">-1431.189</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3659053454">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">809.7355</X>
                    <Y dataType="Float">-959.153</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="77323208">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">342.0691</X>
                    <Y dataType="Float">-937.6091</Y>
                  </Pos>
                </item>
              </_items>
              <_size dataType="Int">31</_size>
              <_version dataType="Int">129</_version>
            </_x003C_Points_x003E_k__BackingField>
            <_x003C_RuntimeOffset_x003E_k__BackingField dataType="Float">0</_x003C_RuntimeOffset_x003E_k__BackingField>
            <_x003C_SideMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_side.Material.res</contentPath>
            </_x003C_SideMaterial_x003E_k__BackingField>
            <_x003C_TopLeftCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_top_left.Material.res</contentPath>
            </_x003C_TopLeftCapMaterial_x003E_k__BackingField>
            <_x003C_TopMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_top.Material.res</contentPath>
            </_x003C_TopMaterial_x003E_k__BackingField>
            <_x003C_TopOffset_x003E_k__BackingField dataType="Float">0</_x003C_TopOffset_x003E_k__BackingField>
            <_x003C_TopRightCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_top_right.Material.res</contentPath>
            </_x003C_TopRightCapMaterial_x003E_k__BackingField>
            <_x003C_TopThresHold_x003E_k__BackingField dataType="Int">50</_x003C_TopThresHold_x003E_k__BackingField>
            <_x003C_VisibilityGroup_x003E_k__BackingField dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3745552616</gameobj>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2494160074" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Type[]" id="638279852">
            <item dataType="ObjectRef">673300768</item>
            <item dataType="ObjectRef">2180332046</item>
          </keys>
          <values dataType="Array" type="Duality.Component[]" id="2975251894">
            <item dataType="ObjectRef">1810900252</item>
            <item dataType="ObjectRef">3935162560</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1810900252</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1154578168">tNhy3TIA9kCQrQIcu2iPqg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Geom_bg</name>
      <parent />
      <prefabLink />
    </item>
  </serializeObj>
  <sourcePath />
  <visibilityStrategy dataType="Struct" type="Duality.Drawing.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
