<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
 xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd"
 xmlns="http://www.opengis.net/sld"
 xmlns:ogc="http://www.opengis.net/ogc"
 xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <!-- a Named Layer is the basic building block of an SLD document -->
  <NamedLayer>
    <Name>default_polygon</Name>
    <UserStyle>
    <!-- Styles can have names, titles and abstracts -->
      <Title>Default Polygon</Title>
      <Abstract>A sample style that draws a polygon</Abstract>
      <!-- FeatureTypeStyles describe how to render different features -->
      <!-- A FeatureTypeStyle for rendering polygons -->
      <FeatureTypeStyle>
       <Rule>
       <Name>Undefined</Name>
       <Title>equal to 1 - Records not yet validated</Title>
       <ogc:Filter>
         <ogc:PropertyIsEqualTo>
           <ogc:PropertyName>max_valid_status</ogc:PropertyName>
           <ogc:Literal>1</ogc:Literal>
         </ogc:PropertyIsEqualTo>
       </ogc:Filter>
         <PointSymbolizer>
         <Graphic>
           <Mark>
             <WellKnownName>square</WellKnownName>
             <Fill>
               <CssParameter name="fill">#EF7C09</CssParameter>
                <CssParameter name="opacity">0.4</CssParameter>
             </Fill>
           </Mark>
           <Size>10</Size>
           <Rotation>45</Rotation>
         </Graphic>
       </PointSymbolizer>
     </Rule>
     <Rule>
       <Name>Declined</Name>
       <Title>equal to 2 - declined records during validation</Title>
       <ogc:Filter>
            <ogc:PropertyIsEqualTo>
             <ogc:PropertyName>max_valid_status</ogc:PropertyName>
             <ogc:Literal>2</ogc:Literal>
           </ogc:PropertyIsEqualTo>  
       </ogc:Filter>
       <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#cc0000</CssParameter>
             <CssParameter name="opacity">0.4</CssParameter>
         </Fill>
       </PolygonSymbolizer>
     </Rule>
     <Rule>
       <Name>Accepted</Name>
       <Title>requal to 3 - accepted records</Title>
       <ogc:Filter>
         <ogc:PropertyIsEqualTo>
           <ogc:PropertyName>max_valid_status</ogc:PropertyName>
           <ogc:Literal>3</ogc:Literal>
         </ogc:PropertyIsEqualTo>
       </ogc:Filter>
       <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#006600</CssParameter>
             <CssParameter name="opacity">0.4</CssParameter>
         </Fill>
       </PolygonSymbolizer>
     </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>