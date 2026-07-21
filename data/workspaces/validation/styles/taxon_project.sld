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
       <Rule>    
          <MaxScaleDenominator>300000</MaxScaleDenominator>
     <PolygonSymbolizer>
         <Fill>
           <GraphicFill>
             <Graphic>
               <Mark>
                 <WellKnownName>shape://times</WellKnownName>
                 <Stroke>
                   <CssParameter name="stroke">#990099</CssParameter>
                   <CssParameter name="stroke-width">0</CssParameter>
                 </Stroke>
               </Mark>
               <Size>30</Size>
             </Graphic>
           </GraphicFill>
         </Fill>
       </PolygonSymbolizer>
     </Rule>
         
         <Rule>
        
          <MinScaleDenominator>300000</MinScaleDenominator>
   <PolygonSymbolizer>
         <Fill>
           <GraphicFill>
             <Graphic>
               <Mark>
                 <WellKnownName>shape://times</WellKnownName>
                 <Stroke>
                   <CssParameter name="stroke">#990099</CssParameter>
                   <CssParameter name="stroke-width">1</CssParameter>
                 </Stroke>
               </Mark>
               <Size>10</Size>
             </Graphic>
           </GraphicFill>
         </Fill>
       </PolygonSymbolizer>
     </Rule>
    
        
        
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>