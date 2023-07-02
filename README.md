# Country Flags APEX Template Component Plugin
The **Country Flags** Template Component Plugin allows you to display country flags in your APEX applications. The plugin uses flag SVG images from version **6.7** of the flag-icons [Github Project](https://flagicons.lipis.dev/). Click [here](https://flagicons.lipis.dev/) for more details.

# Examples
![Country_Flags_Plugin_Screenshot](https://github.com/jon-dixon/country_flags_apex_tcp/assets/107701070/37cb27cc-d3c6-4ba5-bdae-a22c29071231)
[Link to Demo Application](https://apex.oracle.com/pls/apex/r/jdd/flags/home) to Demo Application.

# Usage
The plugin renders a country flag based on a <b>Lower Case</b> 2-character ISO 3166-1-alpha-2 code. You can find a complete list of codes [here](https://www.iso.org/obp/ui/#search)

## Usage in a Template Directive
Reference the plugin as follows to use it anywhere that Template Directives can be used:
![image](https://github.com/jon-dixon/country_flags_apex_tcp/assets/107701070/8d9495a1-2dde-4110-9b26-0c749698c6cf)
```
{with/}
  COUNRY_CODE:=#FLAG#
  SHAPE:=CIRCLE
  SIZE:=3x
{apply COM.CLOUDNUEVA.COUNTRYFLAGS/}
```
# Installation
- Download the plug-in file 'template_component_plugin_com_cloudnueva_countryflags.sql' from the latest release
- Import the plug-in file into your application
