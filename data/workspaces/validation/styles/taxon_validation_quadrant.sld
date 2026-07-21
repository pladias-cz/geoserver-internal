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
         <!-- NOT VALIDATED         _________________________________________________________________________-->
         <Rule>
       <Name>Undefined</Name>
       <Title>Records not yet validated</Title>
       <ogc:Filter>
         <ogc:PropertyIsEqualTo>
           <ogc:PropertyName>max_valid_status</ogc:PropertyName>
           <ogc:Literal>0</ogc:Literal>
         </ogc:PropertyIsEqualTo>
       </ogc:Filter>
         <MaxScaleDenominator>300000</MaxScaleDenominator>
        <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#bebebe</CssParameter> <!--#EF7C09-->
            <CssParameter name="opacity">0.5</CssParameter>
            
         </Fill>
       </PolygonSymbolizer>
        
     </Rule>
        
      <Rule>
       <Name>Undefined</Name>
       <Title>Records not yet validated</Title>
       <ogc:Filter>
         <ogc:PropertyIsEqualTo>
           <ogc:PropertyName>max_valid_status</ogc:PropertyName>
           <ogc:Literal>0</ogc:Literal>
         </ogc:PropertyIsEqualTo>
       </ogc:Filter>
         <MinScaleDenominator>300000</MinScaleDenominator>
        <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#aaaaaa</CssParameter> <!--#EF7C09-->
            <CssParameter name="opacity">0.9</CssParameter>
            
         </Fill>
       </PolygonSymbolizer>
        
     </Rule>
<!-- NOT SURE         _________________________________________________________________________-->
         <Rule>
       <Name>Possible</Name>
       <Title>Records unclear</Title>
       <ogc:Filter>
         <ogc:PropertyIsEqualTo>
           <ogc:PropertyName>max_valid_status</ogc:PropertyName>
           <ogc:Literal>1</ogc:Literal>
         </ogc:PropertyIsEqualTo>
       </ogc:Filter>
         <MaxScaleDenominator>300000</MaxScaleDenominator>
        <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#FF6600</CssParameter> <!--#EF7C09-->
            <CssParameter name="opacity">0.2</CssParameter>
            
         </Fill>
       </PolygonSymbolizer>
        
     </Rule>
        
      <Rule>
       <Name>Possible</Name>
       <Title>Records unclear</Title>
       <ogc:Filter>
         <ogc:PropertyIsEqualTo>
           <ogc:PropertyName>max_valid_status</ogc:PropertyName>
           <ogc:Literal>1</ogc:Literal>
         </ogc:PropertyIsEqualTo>
       </ogc:Filter>
         <MinScaleDenominator>300000</MinScaleDenominator>
        <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#FF6600</CssParameter> <!--#EF7C09-->
            <CssParameter name="opacity">0.8</CssParameter>
            
         </Fill>
       </PolygonSymbolizer>
        
     </Rule>
<!-- DECLINED          _________________________________________________________________________-->  
     <Rule>
       <Name>Declined</Name>
       <Title>equal to 2 - declined records during validation</Title>
       <ogc:Filter>
            <ogc:PropertyIsEqualTo>
             <ogc:PropertyName>max_valid_status</ogc:PropertyName>
             <ogc:Literal>2</ogc:Literal>
           </ogc:PropertyIsEqualTo>  
       </ogc:Filter>
        <MaxScaleDenominator>300000</MaxScaleDenominator>
       <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#cc0000</CssParameter>
             <CssParameter name="opacity">0.2</CssParameter>
         </Fill>
          
       </PolygonSymbolizer>
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
                  <MinScaleDenominator>300000</MinScaleDenominator>
       <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#cc0000</CssParameter>
             <CssParameter name="opacity">0.8</CssParameter>
         </Fill>
       </PolygonSymbolizer>
     </Rule>
        
<!-- ACCEPTED          _________________________________________________________________________-->  
     <Rule>
       <Name>Accepted</Name>
       <Title>requal to 3 - accepted records</Title>
       <ogc:Filter>
         <ogc:PropertyIsEqualTo>
           <ogc:PropertyName>max_valid_status</ogc:PropertyName>
           <ogc:Literal>3</ogc:Literal>
         </ogc:PropertyIsEqualTo>
       </ogc:Filter>
        <MaxScaleDenominator>300000</MaxScaleDenominator>
       <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#006600</CssParameter>
             <CssParameter name="opacity">0.3</CssParameter>
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
        <MinScaleDenominator>300000</MinScaleDenominator>
       <PolygonSymbolizer>
         <Fill>
           <CssParameter name="fill">#006600</CssParameter>
             <CssParameter name="opacity">0.8</CssParameter>
         </Fill>
       </PolygonSymbolizer>
     </Rule>
        
        
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>