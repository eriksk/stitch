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
        <_items dataType="Array" type="Duality.Component[]" id="3147348774" length="4">
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
            <_path dataType="Struct" type="System.Collections.Generic.List`1[[TextureStitch.Components.MeshNode]]" id="1915616547">
              <_items dataType="Array" type="TextureStitch.Components.MeshNode[]" id="2683252838" length="32">
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3217823616">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">2559.935</X>
                    <Y dataType="Float">1021.92139</Y>
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
                    <X dataType="Float">3744.50781</X>
                    <Y dataType="Float">987.751</Y>
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
                    <X dataType="Float">4860.73975</X>
                    <Y dataType="Float">839.679443</Y>
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
                    <X dataType="Float">6540.745</X>
                    <Y dataType="Float">639.484863</Y>
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
                    <X dataType="Float">9057.343</X>
                    <Y dataType="Float">-919.854248</Y>
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
                    <X dataType="Float">8798.025</X>
                    <Y dataType="Float">-1655.59131</Y>
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
                    <X dataType="Float">8484.433</X>
                    <Y dataType="Float">-2138.04175</Y>
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
                    <X dataType="Float">7754.72656</X>
                    <Y dataType="Float">-2204.379</Y>
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
                    <X dataType="Float">6806.9624</X>
                    <Y dataType="Float">-2215.59741</Y>
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
                    <X dataType="Float">6464.00928</X>
                    <Y dataType="Float">-2695.7478</Y>
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
                    <X dataType="Float">5799.611</X>
                    <Y dataType="Float">-2537.74536</Y>
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
                    <X dataType="Float">5180.86572</X>
                    <Y dataType="Float">-2549.76367</Y>
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
                    <X dataType="Float">5190.77</X>
                    <Y dataType="Float">-1936.90283</Y>
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
                    <X dataType="Float">4019.59546</X>
                    <Y dataType="Float">-2157.616</Y>
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
                    <X dataType="Float">3884.13721</X>
                    <Y dataType="Float">-1512.79968</Y>
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
                    <X dataType="Float">3121.828</X>
                    <Y dataType="Float">-1576.42212</Y>
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
                    <X dataType="Float">3149.25049</X>
                    <Y dataType="Float">-2363.218</Y>
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
                    <X dataType="Float">2148.34082</X>
                    <Y dataType="Float">-2348.2915</Y>
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
                    <X dataType="Float">1518.377</X>
                    <Y dataType="Float">-2338.43579</Y>
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
                    <X dataType="Float">997.9404</X>
                    <Y dataType="Float">-2361.915</Y>
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
                    <X dataType="Float">222.615158</X>
                    <Y dataType="Float">-2039.08655</Y>
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
                    <X dataType="Float">-286.328156</X>
                    <Y dataType="Float">-1858.2428</Y>
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
                    <X dataType="Float">-1042.99316</X>
                    <Y dataType="Float">-1630.44482</Y>
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
                    <X dataType="Float">-1048.39648</X>
                    <Y dataType="Float">244.621765</Y>
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
                    <X dataType="Float">1247.05457</X>
                    <Y dataType="Float">786.144</Y>
                  </Pos>
                </item>
              </_items>
              <_size dataType="Int">25</_size>
              <_version dataType="Int">127</_version>
            </_path>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4023833617</gameobj>
          </item>
          <item dataType="Struct" type="TextureStitch.Components.StitchRenderer" id="3592709443">
            <_x003C_DebugEdgeMat_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\top.Material.res</contentPath>
            </_x003C_DebugEdgeMat_x003E_k__BackingField>
            <_x003C_DebugFillMat_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Grass_rayman\fill.Material.res</contentPath>
            </_x003C_DebugFillMat_x003E_k__BackingField>
            <_x003C_FillScale_x003E_k__BackingField dataType="Float">1.59999979</_x003C_FillScale_x003E_k__BackingField>
            <_x003C_FillUvOffset_x003E_k__BackingField dataType="Struct" type="OpenTK.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </_x003C_FillUvOffset_x003E_k__BackingField>
            <_x003C_SegmentSplitSize_x003E_k__BackingField dataType="Float">512</_x003C_SegmentSplitSize_x003E_k__BackingField>
            <_x003C_TopThreshold_x003E_k__BackingField dataType="Float">60</_x003C_TopThreshold_x003E_k__BackingField>
            <_x003C_VisibilityGroup_x003E_k__BackingField dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4023833617</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="401343928" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Type[]" id="977670809">
            <item dataType="ObjectRef">673300768</item>
            <item dataType="Type" id="3058615886" value="TextureStitch.Components.StitchPath" />
            <item dataType="Type" id="2055506506" value="TextureStitch.Components.StitchRenderer" />
          </keys>
          <values dataType="Array" type="Duality.Component[]" id="1281205376">
            <item dataType="ObjectRef">2089181253</item>
            <item dataType="ObjectRef">621051283</item>
            <item dataType="ObjectRef">3592709443</item>
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
  </serializeObj>
  <sourcePath />
  <visibilityStrategy dataType="Struct" type="Duality.Drawing.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
