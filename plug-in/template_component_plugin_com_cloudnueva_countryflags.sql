prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.1'
,p_default_workspace_id=>5077748497100773421
,p_default_application_id=>232002
,p_default_id_offset=>34584221332787791294
,p_default_owner=>'JDIXON'
);
end;
/
 
prompt APPLICATION 232002 - Country Flags Demo
--
-- Application Export:
--   Application:     232002
--   Name:            Country Flags Demo
--   Date and Time:   23:05 Sunday July 2, 2023
--   Exported By:     JON_DIXON_US@YAHOO.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 34590347160664615490
--   Manifest End
--   Version:         23.1.1
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/com_cloudnueva_countryflags
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(34590347160664615490)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'COM.CLOUDNUEVA.COUNTRYFLAGS'
,p_display_name=>'Country Flags'
,p_supported_component_types=>'PARTIAL'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/6.7.0/css/flag-icons.min.css',
'#PLUGIN_FILES#fi_styles.css'))
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div>Loading...</div>',
'{else/}',
'  <span class="{case SHAPE/} {when CIRCLE/}fi fis fi-round{when RECTANGLE/}fi{otherwise/} fi fis{endcase/} fi-#COUNRY_CODE# fa-#SIZE#"></span>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'The Country Flags Template Component Plugin allows you to display country flags in your APEX applications. The plugin uses flag SVG images from version 6.7 of the flag-icons Github Project https://flagicons.lipis.dev/. Click here https://flagicons.li'
||'pis.dev/ for more details.'
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/jon-dixon/country_flags_apex_tcp/blob/main/README.md'
,p_files_version=>9
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(34590347447890615490)
,p_plugin_id=>wwv_flow_imp.id(34590347160664615490)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'COUNRY_CODE'
,p_prompt=>'Country Code'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_examples=>'gb,us,de'
,p_help_text=>'Provide a <b>Lower Case</b> 2-character ISO 3166-1-alpha-2 code. You can find a complete list here: https://www.iso.org/obp/ui/#search'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(34590362670268790047)
,p_plugin_id=>wwv_flow_imp.id(34590347160664615490)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'1x'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_examples=>'Extra Small: 1x, Small: 2x, Medium: 3x, Large: 4x, Extra Large: 5x'
,p_help_text=>'This attribute determines the size of the flag.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(34590362942281794650)
,p_plugin_attribute_id=>wwv_flow_imp.id(34590362670268790047)
,p_display_sequence=>10
,p_display_value=>'Extra Small'
,p_return_value=>'1x'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(34590363339243795563)
,p_plugin_attribute_id=>wwv_flow_imp.id(34590362670268790047)
,p_display_sequence=>20
,p_display_value=>'Small'
,p_return_value=>'2x'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(34590363794730796413)
,p_plugin_attribute_id=>wwv_flow_imp.id(34590362670268790047)
,p_display_sequence=>30
,p_display_value=>'Medium'
,p_return_value=>'3x'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(34590364176794797409)
,p_plugin_attribute_id=>wwv_flow_imp.id(34590362670268790047)
,p_display_sequence=>40
,p_display_value=>'Large'
,p_return_value=>'4x'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(34590364614752798450)
,p_plugin_attribute_id=>wwv_flow_imp.id(34590362670268790047)
,p_display_sequence=>50
,p_display_value=>'Extra Large'
,p_return_value=>'5x'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(34635642475953787976)
,p_plugin_id=>wwv_flow_imp.id(34590347160664615490)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'RECTANGLE'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(34635653776190789358)
,p_plugin_attribute_id=>wwv_flow_imp.id(34635642475953787976)
,p_display_sequence=>10
,p_display_value=>'Rectangle'
,p_return_value=>'RECTANGLE'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(34635483592327277523)
,p_plugin_attribute_id=>wwv_flow_imp.id(34635642475953787976)
,p_display_sequence=>20
,p_display_value=>'Square'
,p_return_value=>'SQUARE'
,p_is_quick_pick=>true
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(34635484635390278517)
,p_plugin_attribute_id=>wwv_flow_imp.id(34635642475953787976)
,p_display_sequence=>30
,p_display_value=>'Circle'
,p_return_value=>'CIRCLE'
,p_is_quick_pick=>true
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E66692D726F756E64207B0A2020626F726465722D7261646975733A20313030253B0A7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(34590352688891615491)
,p_plugin_id=>wwv_flow_imp.id(34590347160664615490)
,p_file_name=>'fi_styles.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
