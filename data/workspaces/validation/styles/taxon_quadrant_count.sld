<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
 xmlns="http://www.opengis.net/sld"
 xmlns:ogc="http://www.opengis.net/ogc"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
   <NamedLayer>
    <Name>default_polygon</Name>
    <UserStyle>
       <Title>Semafor - quadrants</Title>
      <Abstract>Validation status colored quadrants</Abstract>
       <FeatureTypeStyle>
         <!-- blue depending on zoom         _________________________________________________________________________-->
         <Rule>
       <Name>Undefined</Name>
       <Title>Quads with more then xx records</Title>
       
         <MaxScaleDenominator>300000</MaxScaleDenominator>
        <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#0000be</CssParameter> <!--#EF7C09-->
            <CssParameter name="opacity">0.4</CssParameter>
            
         </Fill>
       </PolygonSymbolizer>
           <TextSymbolizer>
        <Geometry>
          <ogc:Function name="centroid">
            <ogc:PropertyName>geom</ogc:PropertyName>
          </ogc:Function>
        </Geometry>
        <Label>
          <ogc:PropertyName>count</ogc:PropertyName>
        </Label>
        <Font>
          <CssParameter name="font-size">25</CssParameter>
          <CssParameter name="font-style">normal</CssParameter>
          <CssParameter name="font-weight">bold</CssParameter>
        </Font>
       <LabelPlacement>
          <PointPlacement>
            <AnchorPoint>
              <AnchorPointX>
                <ogc:Literal>0.0</ogc:Literal>
              </AnchorPointX>
              <AnchorPointY>
                <ogc:Literal>0.5</ogc:Literal>
              </AnchorPointY>
            </AnchorPoint>
            <Rotation>
              <ogc:Literal>0</ogc:Literal>
            </Rotation>
          </PointPlacement>
        </LabelPlacement>
        <Halo>
          <Radius>
            <ogc:Literal>3.0</ogc:Literal>
          </Radius>
          <Fill>
            <CssParameter name="fill">#FFFFFF</CssParameter>
          </Fill>
        </Halo>
       <VendorOption name="conflictResolution">true</VendorOption>
        <VendorOption name="goodnessOfFit">0</VendorOption>
        <!--<VendorOption name="autoWrap">60</VendorOption>-->
      </TextSymbolizer>
        
     </Rule>
        
      <Rule>
       <Name>Undefined</Name>
       <Title>Quads with more then xx records</Title>
       
         <MinScaleDenominator>300000</MinScaleDenominator>
        <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#0000be</CssParameter> <!--#EF7C09-->
            <CssParameter name="opacity">0.9</CssParameter>
            
         </Fill>
       </PolygonSymbolizer>
        
     </Rule>
 
        
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>