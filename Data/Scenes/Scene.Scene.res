<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <globalGravity dataType="Struct" type="OpenTK.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">33</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="1358672095">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3617743901">
        <_items dataType="Array" type="Duality.Component[]" id="3844184294" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="3718987027">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1358672095</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="1895947902">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1358672095</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.SoundListener" id="2012153466">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1358672095</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1973929720" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Type[]" id="3174210423">
            <item dataType="Type" id="1218224014" value="Duality.Components.Transform" />
            <item dataType="Type" id="433595466" value="Duality.Components.Camera" />
            <item dataType="Type" id="1662095550" value="Duality.Components.SoundListener" />
          </keys>
          <values dataType="Array" type="Duality.Component[]" id="906313536">
            <item dataType="ObjectRef">3718987027</item>
            <item dataType="ObjectRef">1895947902</item>
            <item dataType="ObjectRef">2012153466</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3718987027</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="4163944917">lP85hMJJi0+fn536//LNwA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">MainCamera</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="1506332855">
        <changes />
        <obj dataType="ObjectRef">1358672095</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\MainCamera.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1945912770">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2210490188">
        <_items dataType="Array" type="Duality.Component[]" id="2574380452" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="11260406">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">1945912770</gameobj>
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
          <item dataType="Struct" type="TextureStitch.Components.StitchedTextureRenderer" id="2135522714">
            <_createCollider dataType="Bool">false</_createCollider>
            <_points dataType="Struct" type="System.Collections.Generic.List`1[[TextureStitch.Components.MeshNode]]" id="188428922">
              <_items dataType="Array" type="TextureStitch.Components.MeshNode[]" id="170968960">
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2963095964">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-593.053467</X>
                    <Y dataType="Float">-799.782837</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3688783894">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-996.9479</X>
                    <Y dataType="Float">-572.161743</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="2252144648">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-827.992249</X>
                    <Y dataType="Float">620.070068</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="589448114">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1119.91138</X>
                    <Y dataType="Float">724.476563</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3487746100">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">1345.39209</X>
                    <Y dataType="Float">-274.482117</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3103059342">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">649.4436</X>
                    <Y dataType="Float">-92.0916</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="3626725312">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">56.892334</X>
                    <Y dataType="Float">173.416016</Y>
                  </Pos>
                </item>
                <item dataType="Struct" type="TextureStitch.Components.MeshNode" id="4075800330">
                  <Color dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">255</A>
                    <B dataType="Byte">255</B>
                    <G dataType="Byte">255</G>
                    <R dataType="Byte">255</R>
                  </Color>
                  <Pos dataType="Struct" type="OpenTK.Vector2">
                    <X dataType="Float">-101.946815</X>
                    <Y dataType="Float">-833.6</Y>
                  </Pos>
                </item>
              </_items>
              <_size dataType="Int">8</_size>
              <_version dataType="Int">8</_version>
            </_points>
            <_x003C_BottomMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_top.Material.res</contentPath>
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
            <_x003C_FillScale_x003E_k__BackingField dataType="Float">0.50000006</_x003C_FillScale_x003E_k__BackingField>
            <_x003C_FillUvOffset_x003E_k__BackingField dataType="Struct" type="OpenTK.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </_x003C_FillUvOffset_x003E_k__BackingField>
            <_x003C_Offset_x003E_k__BackingField dataType="Int">0</_x003C_Offset_x003E_k__BackingField>
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
            <_x003C_TopOffset_x003E_k__BackingField dataType="Float">17.3</_x003C_TopOffset_x003E_k__BackingField>
            <_x003C_TopRightCapMaterial_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\Rocks\rock_top_right.Material.res</contentPath>
            </_x003C_TopRightCapMaterial_x003E_k__BackingField>
            <_x003C_TopThresHold_x003E_k__BackingField dataType="Int">60</_x003C_TopThresHold_x003E_k__BackingField>
            <_x003C_VisibilityGroup_x003E_k__BackingField dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1945912770</gameobj>
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">8</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3903922166" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Type[]" id="1251083974">
            <item dataType="ObjectRef">1218224014</item>
            <item dataType="Type" id="1519915264" value="TextureStitch.Components.StitchedTextureRenderer" />
          </keys>
          <values dataType="Array" type="Duality.Component[]" id="2636981946">
            <item dataType="ObjectRef">11260406</item>
            <item dataType="ObjectRef">2135522714</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">11260406</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1357050310">iwTokRRGoUGiDaTjXDOm6A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">StitchedTexture</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3549509936">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="692119190">
        <_items dataType="Array" type="Duality.Component[]" id="2686966304" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1614857572">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3549509936</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">757.782349</X>
              <Y dataType="Float">-2784.85034</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="OpenTK.Vector3">
              <X dataType="Float">757.782349</X>
              <Y dataType="Float">-2784.85034</Y>
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
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="896709208">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <gameobj dataType="ObjectRef">3549509936</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">158</H>
              <W dataType="Float">313</W>
              <X dataType="Float">-156.5</X>
              <Y dataType="Float">-79</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\Textures\stones.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2317319164">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3549509936</gameobj>
            <ignoreGravity dataType="Bool">false</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="OpenTK.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3520371492">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1810377412" length="4">
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3615530820">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">2317319164</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="OpenTK.Vector2[]" id="1469595204">
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-158.071655</X>
                      <Y dataType="Float">-79.23767</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">-155.876343</X>
                      <Y dataType="Float">76.6300049</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">155.859009</X>
                      <Y dataType="Float">76.6300049</Y>
                    </item>
                    <item dataType="Struct" type="OpenTK.Vector2">
                      <X dataType="Float">155.859009</X>
                      <Y dataType="Float">-79.23767</Y>
                    </item>
                  </vertices>
                </item>
              </_items>
              <_size dataType="Int">1</_size>
              <_version dataType="Int">3</_version>
            </shapes>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="506133722" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Type[]" id="2718329444">
            <item dataType="ObjectRef">1218224014</item>
            <item dataType="Type" id="512413124" value="Duality.Components.Renderers.SpriteRenderer" />
            <item dataType="Type" id="653404566" value="Duality.Components.Physics.RigidBody" />
          </keys>
          <values dataType="Array" type="Duality.Component[]" id="1402587158">
            <item dataType="ObjectRef">1614857572</item>
            <item dataType="ObjectRef">896709208</item>
            <item dataType="ObjectRef">2317319164</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1614857572</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="781696864">CXfN41yWBE6RH6Z/bV2YPQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">stones</name>
      <parent />
      <prefabLink />
    </item>
  </serializeObj>
  <sourcePath />
  <visibilityStrategy dataType="Struct" type="Duality.Drawing.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
