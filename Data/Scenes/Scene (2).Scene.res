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
              <X dataType="Float">627.357849</X>
              <Y dataType="Float">-569.695</Y>
              <Z dataType="Float">-500</Z>
            </pos>
            <posAbs dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">627.357849</X>
              <Y dataType="Float">-569.695</Y>
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
    <item dataType="Struct" type="Duality.GameObject" id="1834965862">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1091109616">
        <_items dataType="Array" type="Duality.Component[]" id="1308162876" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="4195280794">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1834965862</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">296.045166</X>
              <Y dataType="Float">-405.691742</Y>
              <Z dataType="Float">500</Z>
            </pos>
            <posAbs dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">296.045166</X>
              <Y dataType="Float">-405.691742</Y>
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
          <item dataType="Struct" type="TextureStitch.Components.StitchedTextureRenderer" id="2024575806">
            <_createCollider dataType="Bool">false</_createCollider>
            <_x003C_BottomMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top_rocks.Material.res</contentPath>
            </_x003C_BottomMaterial_x003E_k__BackingField>
            <_x003C_ColorTint_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">98</B>
              <G dataType="Byte">98</G>
              <R dataType="Byte">98</R>
            </_x003C_ColorTint_x003E_k__BackingField>
            <_x003C_FillMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\fill.Material.res</contentPath>
            </_x003C_FillMaterial_x003E_k__BackingField>
            <_x003C_FillScale_x003E_k__BackingField dataType="Float">2.39999986</_x003C_FillScale_x003E_k__BackingField>
            <_x003C_FillUvOffset_x003E_k__BackingField dataType="Struct" type="OpenTK.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </_x003C_FillUvOffset_x003E_k__BackingField>
            <_x003C_LeftCapPadding_x003E_k__BackingField dataType="Float">128</_x003C_LeftCapPadding_x003E_k__BackingField>
            <_x003C_Offset_x003E_k__BackingField dataType="Int">0</_x003C_Offset_x003E_k__BackingField>
            <_x003C_Points_x003E_k__BackingField dataType="Struct" type="System.Collections.Generic.List`1[[TextureStitch.Components.MeshNode]]" id="2311190630">
              <_items dataType="Array" type="TextureStitch.Components.MeshNode[]" id="3990128512" length="32">
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2604515740">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-918.2655</X>
                    <Y dataType="Float">-882.941345</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2217566230">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-1606.05127</X>
                    <Y dataType="Float">1305.1554</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2438496264">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-316.6184</X>
                    <Y dataType="Float">1148.2384</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="395461554">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2937.69653</X>
                    <Y dataType="Float">2717.934</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2880260148">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4379.67969</X>
                    <Y dataType="Float">2423.30566</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2142432654">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">9232.178</X>
                    <Y dataType="Float">2761.80444</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1769533376">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">13191.4229</X>
                    <Y dataType="Float">2456.01025</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2848573194">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">12772.14</X>
                    <Y dataType="Float">-332.921143</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3513707916">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">12489.4531</X>
                    <Y dataType="Float">-1099.43042</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2719806182">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">10050.707</X>
                    <Y dataType="Float">-1645.02063</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3246866680">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">9690.562</X>
                    <Y dataType="Float">-1108.803</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1891049730">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">8742.803</X>
                    <Y dataType="Float">-1297.79639</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="58769444">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">8567.046</X>
                    <Y dataType="Float">-616.3771</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3107306590">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">8023.01465</X>
                    <Y dataType="Float">228.164246</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2507852464">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">7156.137</X>
                    <Y dataType="Float">-333.87796</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1249300570">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">5365.36768</X>
                    <Y dataType="Float">-864.9539</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="207906044">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">214</G>
                    <R dataType="Byte">121</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">5695.092</X>
                    <Y dataType="Float">-1983.52356</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2039885494">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">214</G>
                    <R dataType="Byte">121</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4737.69531</X>
                    <Y dataType="Float">-2107.08</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1351949032">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4662.8916</X>
                    <Y dataType="Float">-1286.447</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2386212306">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3903.97754</X>
                    <Y dataType="Float">-1361.34766</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="4073852692">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3863.62256</X>
                    <Y dataType="Float">-603.787537</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3428378670">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2996.88452</X>
                    <Y dataType="Float">-643.0365</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="141337760">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1875.042</X>
                    <Y dataType="Float">-934.7218</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1553583402">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">132</B>
                    <G dataType="Byte">182</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1636.20361</X>
                    <Y dataType="Float">-660.80835</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3959984620">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">132</B>
                    <G dataType="Byte">182</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1034.03442</X>
                    <Y dataType="Float">-931.5334</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1755055238">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">439.450439</X>
                    <Y dataType="Float">-744.377441</Y>
                  </Pos>
                </item>
              </_items>
              <_size dataType="Int">26</_size>
              <_version dataType="Int">32</_version>
            </_x003C_Points_x003E_k__BackingField>
            <_x003C_RightCapPadding_x003E_k__BackingField dataType="Float">128</_x003C_RightCapPadding_x003E_k__BackingField>
            <_x003C_RuntimeOffset_x003E_k__BackingField dataType="Float">0</_x003C_RuntimeOffset_x003E_k__BackingField>
            <_x003C_SideMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top_rocks.Material.res</contentPath>
            </_x003C_SideMaterial_x003E_k__BackingField>
            <_x003C_TopLeftCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top_left.Material.res</contentPath>
            </_x003C_TopLeftCapMaterial_x003E_k__BackingField>
            <_x003C_TopMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top.Material.res</contentPath>
            </_x003C_TopMaterial_x003E_k__BackingField>
            <_x003C_TopRightCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top_right.Material.res</contentPath>
            </_x003C_TopRightCapMaterial_x003E_k__BackingField>
            <_x003C_TopThresHold_x003E_k__BackingField dataType="Int">50</_x003C_TopThresHold_x003E_k__BackingField>
            <_x003C_VisibilityGroup_x003E_k__BackingField dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1834965862</gameobj>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3669450990" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Type[]" id="270011970">
            <item dataType="ObjectRef">673300768</item>
            <item dataType="Type" id="2278363152" value="TextureStitch.Components.StitchedTextureRenderer" />
          </keys>
          <values dataType="Array" type="Duality.Component[]" id="3432485898">
            <item dataType="ObjectRef">4195280794</item>
            <item dataType="ObjectRef">2024575806</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">4195280794</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2271338034">khsnSHhTYECOCHYpwCWElA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Grass_BG</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2267603980">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2473776130">
        <_items dataType="Array" type="Duality.Component[]" id="3874801040" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="332951616">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2267603980</gameobj>
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
          <item dataType="Struct" type="TextureStitch.Components.StitchedTextureRenderer" id="2457213924">
            <_createCollider dataType="Bool">false</_createCollider>
            <_x003C_BottomMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top_rocks.Material.res</contentPath>
            </_x003C_BottomMaterial_x003E_k__BackingField>
            <_x003C_ColorTint_x003E_k__BackingField dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </_x003C_ColorTint_x003E_k__BackingField>
            <_x003C_FillMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\fill.Material.res</contentPath>
            </_x003C_FillMaterial_x003E_k__BackingField>
            <_x003C_FillScale_x003E_k__BackingField dataType="Float">2.39999986</_x003C_FillScale_x003E_k__BackingField>
            <_x003C_FillUvOffset_x003E_k__BackingField dataType="Struct" type="OpenTK.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </_x003C_FillUvOffset_x003E_k__BackingField>
            <_x003C_LeftCapPadding_x003E_k__BackingField dataType="Float">128</_x003C_LeftCapPadding_x003E_k__BackingField>
            <_x003C_Offset_x003E_k__BackingField dataType="Int">0</_x003C_Offset_x003E_k__BackingField>
            <_x003C_Points_x003E_k__BackingField dataType="Struct" type="System.Collections.Generic.List`1[[TextureStitch.Components.MeshNode]]" id="68670284">
              <_items dataType="Array" type="TextureStitch.Components.MeshNode[]" id="1283136932" length="32">
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3407477956">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-504.0412</X>
                    <Y dataType="Float">-451.4023</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1691491222">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-353.963623</X>
                    <Y dataType="Float">479.8254</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2724580736">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">905.6844</X>
                    <Y dataType="Float">250.220016</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="4038048290">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3248.8396</X>
                    <Y dataType="Float">1754.33911</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="72288476">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3765.66724</X>
                    <Y dataType="Float">1738.663</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3035966206">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4286.209</X>
                    <Y dataType="Float">1735.95874</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="4023243832">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">10276.9893</X>
                    <Y dataType="Float">2256.71045</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3553812842">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">10933.4072</X>
                    <Y dataType="Float">691.6498</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1403512116">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">11080.9131</X>
                    <Y dataType="Float">-332.921143</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2542406534">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">10798.2266</X>
                    <Y dataType="Float">-1099.43042</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="444012208">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">10075.91</X>
                    <Y dataType="Float">-1145.12817</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="774748242">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">9829.103</X>
                    <Y dataType="Float">-548.2006</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2465744908">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">8862.689</X>
                    <Y dataType="Float">-545.7316</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3796653550">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">8649.094</X>
                    <Y dataType="Float">761.5399</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3105623144">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">7730.47852</X>
                    <Y dataType="Float">785.8119</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="580347738">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">7576.392</X>
                    <Y dataType="Float">-154.606522</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="156084132">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">5714.05762</X>
                    <Y dataType="Float">113.236229</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3885664310">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">214</G>
                    <R dataType="Byte">121</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">5274.35449</X>
                    <Y dataType="Float">-1689.18774</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3564412768">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">214</G>
                    <R dataType="Byte">121</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4910.99072</X>
                    <Y dataType="Float">-1667.13</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3921342914">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4419.22168</X>
                    <Y dataType="Float">-1675.02478</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3814145980">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">4403.73047</X>
                    <Y dataType="Float">-347.310364</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="526803870">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3878.27075</X>
                    <Y dataType="Float">-526.4681</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1058492952">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3283.85938</X>
                    <Y dataType="Float">-450.213562</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="334386442">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2237.39844</X>
                    <Y dataType="Float">-280.466278</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3776229908">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">132</B>
                    <G dataType="Byte">182</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2211.0293</X>
                    <Y dataType="Float">-1102.52478</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3148030502">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">132</B>
                    <G dataType="Byte">182</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1339.63538</X>
                    <Y dataType="Float">-1110.12073</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3873315472">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1336.96692</X>
                    <Y dataType="Float">-443.514435</Y>
                  </Pos>
                </item>
              </_items>
              <_size dataType="Int">27</_size>
              <_version dataType="Int">35</_version>
            </_x003C_Points_x003E_k__BackingField>
            <_x003C_RightCapPadding_x003E_k__BackingField dataType="Float">128</_x003C_RightCapPadding_x003E_k__BackingField>
            <_x003C_RuntimeOffset_x003E_k__BackingField dataType="Float">0</_x003C_RuntimeOffset_x003E_k__BackingField>
            <_x003C_SideMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top_rocks.Material.res</contentPath>
            </_x003C_SideMaterial_x003E_k__BackingField>
            <_x003C_TopLeftCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top_left.Material.res</contentPath>
            </_x003C_TopLeftCapMaterial_x003E_k__BackingField>
            <_x003C_TopMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top.Material.res</contentPath>
            </_x003C_TopMaterial_x003E_k__BackingField>
            <_x003C_TopRightCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top_right.Material.res</contentPath>
            </_x003C_TopRightCapMaterial_x003E_k__BackingField>
            <_x003C_TopThresHold_x003E_k__BackingField dataType="Int">50</_x003C_TopThresHold_x003E_k__BackingField>
            <_x003C_VisibilityGroup_x003E_k__BackingField dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2267603980</gameobj>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="165065610" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Type[]" id="459259864">
            <item dataType="ObjectRef">673300768</item>
            <item dataType="ObjectRef">2278363152</item>
          </keys>
          <values dataType="Array" type="Duality.Component[]" id="3630488222">
            <item dataType="ObjectRef">332951616</item>
            <item dataType="ObjectRef">2457213924</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">332951616</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3318743940">VararPIT5k68zzirbjDvvw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Grass</name>
      <parent />
      <prefabLink />
    </item>
  </serializeObj>
  <sourcePath />
  <visibilityStrategy dataType="Struct" type="Duality.Drawing.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
