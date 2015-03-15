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
              <X dataType="Float">43.7632446</X>
              <Y dataType="Float">-938.310059</Y>
              <Z dataType="Float">-500</Z>
            </pos>
            <posAbs dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">43.7632446</X>
              <Y dataType="Float">-938.310059</Y>
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
    <item dataType="Struct" type="Duality.GameObject" id="4023833617">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="75010035">
        <_items dataType="Array" type="Duality.Component[]" id="3147348774">
          <item dataType="Struct" type="Duality.Components.Transform" id="2089181253">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4023833617</gameobj>
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
          <item dataType="Struct" type="TextureStitch.Components.StitchPath" id="621051283">
            <_createCollider dataType="Bool">true</_createCollider>
            <_path dataType="Struct" type="System.Collections.Generic.List`1[[TextureStitch.Components.MeshNode]]" id="1915616547">
              <_items dataType="Array" type="TextureStitch.Components.MeshNode[]" id="2683252838" length="64">
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3217823616">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3543.954</X>
                    <Y dataType="Float">1004.33087</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1900733646">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">5109.246</X>
                    <Y dataType="Float">1044.60474</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="588138780">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">6540.745</X>
                    <Y dataType="Float">639.484863</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2838394322">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">7330.057</X>
                    <Y dataType="Float">-593.575439</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1188426552">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">8370.428</X>
                    <Y dataType="Float">-559.306763</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2031890214">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">8403.008</X>
                    <Y dataType="Float">-1484.44861</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="974263316">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">8581.02051</X>
                    <Y dataType="Float">-2335.17944</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="4226072938">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">5708.26563</X>
                    <Y dataType="Float">-2728.22681</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3993608176">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">5764.44971</X>
                    <Y dataType="Float">-1283.17822</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="948049406">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3634.605</X>
                    <Y dataType="Float">-1340.93</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1748245132">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3646.499</X>
                    <Y dataType="Float">94.72763</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="285693314">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2990.872</X>
                    <Y dataType="Float">109.43158</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="4228401064">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">3047.61084</X>
                    <Y dataType="Float">-1271.56384</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1458771414">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2268.37134</X>
                    <Y dataType="Float">-1278.80725</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1454463364">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2114.9458</X>
                    <Y dataType="Float">-2127.307</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2420454682">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1773.81946</X>
                    <Y dataType="Float">-2821.47656</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="369391712">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1684.9425</X>
                    <Y dataType="Float">-3413.567</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3288828590">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">259.9878</X>
                    <Y dataType="Float">-3704.748</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="811651068">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">272.895782</X>
                    <Y dataType="Float">-2137.639</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2772533170">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-1932.19226</X>
                    <Y dataType="Float">-2230.9917</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="140365336">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-1857.948</X>
                    <Y dataType="Float">-1135.74646</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3706916998">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-2085.76416</X>
                    <Y dataType="Float">749.970337</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="884534516">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-1242.106</X>
                    <Y dataType="Float">749.573853</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2622530890">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-1265.803</X>
                    <Y dataType="Float">-161.539581</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2539562576">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">30.17923</X>
                    <Y dataType="Float">-248.662933</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="1726679518">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">19.1616821</X>
                    <Y dataType="Float">632.494568</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2568315116">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1247.05457</X>
                    <Y dataType="Float">786.144</Y>
                  </Pos>
                </item>
              </_items>
              <_size dataType="Int">27</_size>
              <_version dataType="Int">201</_version>
            </_path>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4023833617</gameobj>
          </item>
          <item dataType="Struct" type="TextureStitch.Components.StitchRenderer" id="3592709443">
            <_x003C_BottomCapLeftOffset_x003E_k__BackingField dataType="Float">-150</_x003C_BottomCapLeftOffset_x003E_k__BackingField>
            <_x003C_BottomCapRightOffset_x003E_k__BackingField dataType="Float">-150</_x003C_BottomCapRightOffset_x003E_k__BackingField>
            <_x003C_BottomLeftCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\bottom_left.Material.res</contentPath>
            </_x003C_BottomLeftCapMaterial_x003E_k__BackingField>
            <_x003C_BottomMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\bottom_rocks.Material.res</contentPath>
            </_x003C_BottomMaterial_x003E_k__BackingField>
            <_x003C_BottomRightCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\bottom_right.Material.res</contentPath>
            </_x003C_BottomRightCapMaterial_x003E_k__BackingField>
            <_x003C_CapLeftOffset_x003E_k__BackingField dataType="Float">-100</_x003C_CapLeftOffset_x003E_k__BackingField>
            <_x003C_CapRightOffset_x003E_k__BackingField dataType="Float">-100</_x003C_CapRightOffset_x003E_k__BackingField>
            <_x003C_FillMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\fill.Material.res</contentPath>
            </_x003C_FillMaterial_x003E_k__BackingField>
            <_x003C_FillScale_x003E_k__BackingField dataType="Float">1.59999979</_x003C_FillScale_x003E_k__BackingField>
            <_x003C_FillUvOffset_x003E_k__BackingField dataType="Struct" type="OpenTK.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </_x003C_FillUvOffset_x003E_k__BackingField>
            <_x003C_LeftCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top_left.Material.res</contentPath>
            </_x003C_LeftCapMaterial_x003E_k__BackingField>
            <_x003C_RightCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top_right.Material.res</contentPath>
            </_x003C_RightCapMaterial_x003E_k__BackingField>
            <_x003C_SegmentSplitSize_x003E_k__BackingField dataType="Float">512</_x003C_SegmentSplitSize_x003E_k__BackingField>
            <_x003C_SideMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top_rocks.Material.res</contentPath>
            </_x003C_SideMaterial_x003E_k__BackingField>
            <_x003C_TopMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top.Material.res</contentPath>
            </_x003C_TopMaterial_x003E_k__BackingField>
            <_x003C_TopThreshold_x003E_k__BackingField dataType="Float">60</_x003C_TopThreshold_x003E_k__BackingField>
            <_x003C_VisibilityGroup_x003E_k__BackingField dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4023833617</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2791642845">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Static" value="0" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4023833617</gameobj>
            <ignoreGravity dataType="Bool">false</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="OpenTK.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="585184077">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3244075046" length="32">
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="764471552">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="3788575388">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-1242.106</X>
                      <Y dataType="Float">749.573853</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-2085.76416</X>
                      <Y dataType="Float">749.970337</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-1265.803</X>
                      <Y dataType="Float">-161.539581</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3794590158">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="2579070418">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">8370.428</X>
                      <Y dataType="Float">-559.306763</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">7330.057</X>
                      <Y dataType="Float">-593.575439</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">8403.008</X>
                      <Y dataType="Float">-1484.44861</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2030672796">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="2444302520">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-2085.76416</X>
                      <Y dataType="Float">749.970337</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-1857.948</X>
                      <Y dataType="Float">-1135.74646</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-1265.803</X>
                      <Y dataType="Float">-161.539581</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1867627218">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="3501123878">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">3634.605</X>
                      <Y dataType="Float">-1340.93</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">5764.44971</X>
                      <Y dataType="Float">-1283.17822</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">3646.499</X>
                      <Y dataType="Float">94.72763</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3343265720">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="1454040724">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">19.1616821</X>
                      <Y dataType="Float">632.494568</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">30.17923</X>
                      <Y dataType="Float">-248.662933</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">1247.05457</X>
                      <Y dataType="Float">786.144</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="55805478">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="1001838698">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">3047.61084</X>
                      <Y dataType="Float">-1271.56384</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">2990.872</X>
                      <Y dataType="Float">109.43158</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">2268.37134</X>
                      <Y dataType="Float">-1278.80725</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2356305300">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="2739940208">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-1265.803</X>
                      <Y dataType="Float">-161.539581</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-1857.948</X>
                      <Y dataType="Float">-1135.74646</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">30.17923</X>
                      <Y dataType="Float">-248.662933</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3538903402">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="2909649150">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">5708.26563</X>
                      <Y dataType="Float">-2728.22681</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">8581.02051</X>
                      <Y dataType="Float">-2335.17944</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">5764.44971</X>
                      <Y dataType="Float">-1283.17822</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1893799024">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="3207605516">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-1932.19226</X>
                      <Y dataType="Float">-2230.9917</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">272.895782</X>
                      <Y dataType="Float">-2137.639</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-1857.948</X>
                      <Y dataType="Float">-1135.74646</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2060000254">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="3407160194">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-1857.948</X>
                      <Y dataType="Float">-1135.74646</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">272.895782</X>
                      <Y dataType="Float">-2137.639</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">30.17923</X>
                      <Y dataType="Float">-248.662933</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="667445772">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="50081064">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">30.17923</X>
                      <Y dataType="Float">-248.662933</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">272.895782</X>
                      <Y dataType="Float">-2137.639</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">1247.05457</X>
                      <Y dataType="Float">786.144</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2427886210">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="1928425686">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">1247.05457</X>
                      <Y dataType="Float">786.144</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">272.895782</X>
                      <Y dataType="Float">-2137.639</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">3543.954</X>
                      <Y dataType="Float">1004.33087</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3442164776">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="1595974660">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-2563.15381</X>
                      <Y dataType="Float">-5921.338</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">1684.9425</X>
                      <Y dataType="Float">-3413.567</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">272.895782</X>
                      <Y dataType="Float">-2137.639</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="226440150">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="3419836186">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">6540.745</X>
                      <Y dataType="Float">639.484863</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">5109.246</X>
                      <Y dataType="Float">1044.60474</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">7330.057</X>
                      <Y dataType="Float">-593.575439</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="4185448708">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="1974471392">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">1684.9425</X>
                      <Y dataType="Float">-3413.567</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">1773.81946</X>
                      <Y dataType="Float">-2821.47656</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">272.895782</X>
                      <Y dataType="Float">-2137.639</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="54622234">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="2547027374">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">1773.81946</X>
                      <Y dataType="Float">-2821.47656</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">2114.9458</X>
                      <Y dataType="Float">-2127.307</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">272.895782</X>
                      <Y dataType="Float">-2137.639</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2873847264">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="991469692">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">2114.9458</X>
                      <Y dataType="Float">-2127.307</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">2268.37134</X>
                      <Y dataType="Float">-1278.80725</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">272.895782</X>
                      <Y dataType="Float">-2137.639</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3449910958">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="3577374130">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">2268.37134</X>
                      <Y dataType="Float">-1278.80725</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">2990.872</X>
                      <Y dataType="Float">109.43158</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">272.895782</X>
                      <Y dataType="Float">-2137.639</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1752020860">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="30468504">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">8581.02051</X>
                      <Y dataType="Float">-2335.17944</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">8403.008</X>
                      <Y dataType="Float">-1484.44861</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">5764.44971</X>
                      <Y dataType="Float">-1283.17822</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1871880882">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="2659167366">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">8403.008</X>
                      <Y dataType="Float">-1484.44861</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">7330.057</X>
                      <Y dataType="Float">-593.575439</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">5764.44971</X>
                      <Y dataType="Float">-1283.17822</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3346161816">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="2195162228">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">7330.057</X>
                      <Y dataType="Float">-593.575439</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">5109.246</X>
                      <Y dataType="Float">1044.60474</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">5764.44971</X>
                      <Y dataType="Float">-1283.17822</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="904359814">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="420735050">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">5764.44971</X>
                      <Y dataType="Float">-1283.17822</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">5109.246</X>
                      <Y dataType="Float">1044.60474</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">3646.499</X>
                      <Y dataType="Float">94.72763</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1348608372">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="474508752">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">5109.246</X>
                      <Y dataType="Float">1044.60474</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">3543.954</X>
                      <Y dataType="Float">1004.33087</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">3646.499</X>
                      <Y dataType="Float">94.72763</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1350488394">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="64333790">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">3646.499</X>
                      <Y dataType="Float">94.72763</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">3543.954</X>
                      <Y dataType="Float">1004.33087</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">2990.872</X>
                      <Y dataType="Float">109.43158</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1400960720">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2791642845</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="549045868">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">2990.872</X>
                      <Y dataType="Float">109.43158</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">3543.954</X>
                      <Y dataType="Float">1004.33087</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">272.895782</X>
                      <Y dataType="Float">-2137.639</Y>
                    </item>
                  </vertices>
                </item>
              </_items>
              <_size dataType="Int">25</_size>
              <_version dataType="Int">53</_version>
            </shapes>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">10</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="401343928" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Type[]" id="977670809">
            <item dataType="ObjectRef">673300768</item>
            <item dataType="Type" id="3058615886" value="TextureStitch.Components.StitchPath" />
            <item dataType="Type" id="2055506506" value="TextureStitch.Components.StitchRenderer" />
            <item dataType="Type" id="568633342" value="Duality.Components.Physics.RigidBody" />
          </keys>
          <values dataType="Array" type="Duality.Component[]" id="1281205376">
            <item dataType="ObjectRef">2089181253</item>
            <item dataType="ObjectRef">621051283</item>
            <item dataType="ObjectRef">3592709443</item>
            <item dataType="ObjectRef">2791642845</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2089181253</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="624422363">bZi4A26z7EyFI19WQTWQkA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Terrain</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3800653240">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2221397598">
        <_items dataType="Array" type="Duality.Component[]" id="682215696" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1866000876">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3800653240</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">467.241577</X>
              <Y dataType="Float">-4008.55664</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">467.241577</X>
              <Y dataType="Float">-4008.55664</Y>
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
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1147852512">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <gameobj dataType="ObjectRef">3800653240</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">256</H>
              <W dataType="Float">256</W>
              <X dataType="Float">-128</X>
              <Y dataType="Float">-128</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Default:Material:DualityIconB</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2568462468">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3800653240</gameobj>
            <ignoreGravity dataType="Bool">false</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="OpenTK.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="44695148">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1558946660" length="4">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="739210180">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2568462468</parent>
                  <position dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                  </position>
                  <radius dataType="Float">128</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
              <_version dataType="Int">1</_version>
            </shapes>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2320470282" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Type[]" id="4067728764">
            <item dataType="ObjectRef">673300768</item>
            <item dataType="Type" id="23098436" value="Duality.Components.Renderers.SpriteRenderer" />
            <item dataType="ObjectRef">568633342</item>
          </keys>
          <values dataType="Array" type="Duality.Component[]" id="1711478934">
            <item dataType="ObjectRef">1866000876</item>
            <item dataType="ObjectRef">1147852512</item>
            <item dataType="ObjectRef">2568462468</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1866000876</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2869658920">RhJPd8ZaM0+I3M9BKpN/zQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">DualityIconB</name>
      <parent />
      <prefabLink />
    </item>
  </serializeObj>
  <sourcePath />
  <visibilityStrategy dataType="Struct" type="Duality.Drawing.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
