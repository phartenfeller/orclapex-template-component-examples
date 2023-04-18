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
,p_release=>'23.1.0-13'
,p_default_workspace_id=>4801001554511370018
,p_default_application_id=>78688
,p_default_id_offset=>0
,p_default_owner=>'WKSP_HARTENFELLERDEV'
);
end;
/
 
prompt APPLICATION 78688 - 23.1 Template Components
--
-- Application Export:
--   Application:     78688
--   Name:            23.1 Template Components
--   Date and Time:   19:03 Tuesday April 18, 2023
--   Exported By:     HARTENFELLER.DEV@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 342104163496488776
--   Manifest End
--   Version:         23.1.0-13
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/dev_hartenfeller_progress_bars
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(342104163496488776)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'DEV.HARTENFELLER.PROGRESS_BARS'
,p_display_name=>'Progress Bars'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_css_file_urls=>'#PLUGIN_FILES#styles#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'    <div class="flex justify-between mb-1">',
'        <span class="text-base font-medium">..............</span>',
'        <span class="text-sm font-medium">..%</span>',
'    </div>',
'        <div class="w-full bg-gray-200 rounded-full h-2.5 ">',
'    </div>',
'{else/}',
'    <div class="flex justify-between mb-1">',
'        <span class="text-base font-medium">#SKILL#</span>',
'        <span class="text-sm font-medium">#PCT#%</span>',
'    </div>',
'        <div class="w-full bg-gray-200 rounded-full h-2.5 ">',
'        <div class="bg-blue-600 h-2.5 rounded-full" style="width: #PCT#%; background: {if COLOR_INDEX%assigned/}var(--u-color-#COLOR_INDEX#);{else/}var(--u-color-1);{endif/}"></div>',
'    </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_report_body_template=>'<div class="progress-list">#APEX$ROWS#</div>'
,p_report_row_template=>'<div #APEX$ROW_IDENTIFICATION# style="margin-top: 1lh;">#APEX$PARTIAL#</div>'
,p_report_placeholder_count=>10
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>5
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(342104441640488784)
,p_plugin_id=>wwv_flow_imp.id(342104163496488776)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'COLOR_INDEX'
,p_prompt=>'Color Index'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(342104853479488784)
,p_plugin_id=>wwv_flow_imp.id(342104163496488776)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'PCT'
,p_prompt=>'Pct'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(342105214178488784)
,p_plugin_id=>wwv_flow_imp.id(342104163496488776)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'SKILL'
,p_prompt=>'Skill'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E70726F67726573732D6C6973743A66697273742D6368696C64207B0A202020206D617267696E2D746F703A203070783B0A7D0A0A2E6D622D31207B0A20206D617267696E2D626F74746F6D3A20302E323572656D3B0A7D0A0A2E666C6578207B0A2020';
wwv_flow_imp.g_varchar2_table(2) := '646973706C61793A20666C65783B0A7D0A0A2E682D32207B0A20206865696768743A20302E3572656D3B0A7D0A0A2E682D325C2E35207B0A20206865696768743A20302E36323572656D3B0A7D0A0A2E772D66756C6C207B0A202077696474683A203130';
wwv_flow_imp.g_varchar2_table(3) := '30253B0A7D0A0A2E6A7573746966792D6265747765656E207B0A20206A7573746966792D636F6E74656E743A2073706163652D6265747765656E3B0A7D0A0A2E726F756E6465642D66756C6C207B0A2020626F726465722D7261646975733A2039393939';
wwv_flow_imp.g_varchar2_table(4) := '70783B0A7D0A0A2E62672D626C75652D363030207B0A20202D2D74772D62672D6F7061636974793A20313B0A20206261636B67726F756E642D636F6C6F723A2072676228333720393920323335202F20766172282D2D74772D62672D6F70616369747929';
wwv_flow_imp.g_varchar2_table(5) := '293B0A7D0A0A2E62672D677261792D323030207B0A20202D2D74772D62672D6F7061636974793A20313B0A20206261636B67726F756E642D636F6C6F723A20726762283232392032333120323335202F20766172282D2D74772D62672D6F706163697479';
wwv_flow_imp.g_varchar2_table(6) := '29293B0A7D0A0A2E746578742D62617365207B0A2020666F6E742D73697A653A203172656D3B0A20206C696E652D6865696768743A20312E3572656D3B0A7D0A0A2E746578742D736D207B0A2020666F6E742D73697A653A20302E38373572656D3B0A20';
wwv_flow_imp.g_varchar2_table(7) := '206C696E652D6865696768743A20312E323572656D3B0A7D0A0A2E666F6E742D6D656469756D207B0A2020666F6E742D7765696768743A203530303B0A7D0A0A2E746578742D626C75652D373030207B0A20202D2D74772D746578742D6F706163697479';
wwv_flow_imp.g_varchar2_table(8) := '3A20313B0A2020636F6C6F723A2072676228323920373820323136202F20766172282D2D74772D746578742D6F70616369747929293B0A7D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(342297118912010685)
,p_plugin_id=>wwv_flow_imp.id(342104163496488776)
,p_file_name=>'styles.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E70726F67726573732D6C6973743A66697273742D6368696C647B6D617267696E2D746F703A307D2E6D622D317B6D617267696E2D626F74746F6D3A2E323572656D7D2E666C65787B646973706C61793A666C65787D2E682D327B6865696768743A2E35';
wwv_flow_imp.g_varchar2_table(2) := '72656D7D2E682D325C2E357B6865696768743A2E36323572656D7D2E772D66756C6C7B77696474683A313030257D2E6A7573746966792D6265747765656E7B6A7573746966792D636F6E74656E743A73706163652D6265747765656E7D2E726F756E6465';
wwv_flow_imp.g_varchar2_table(3) := '642D66756C6C7B626F726465722D7261646975733A3939393970787D2E62672D626C75652D3630302C2E62672D677261792D3230307B2D2D74772D62672D6F7061636974793A313B6261636B67726F756E642D636F6C6F723A7267622833372039392032';
wwv_flow_imp.g_varchar2_table(4) := '33352F766172282D2D74772D62672D6F70616369747929297D2E62672D677261792D3230307B6261636B67726F756E642D636F6C6F723A7267622832323920323331203233352F766172282D2D74772D62672D6F70616369747929297D2E746578742D62';
wwv_flow_imp.g_varchar2_table(5) := '6173657B666F6E742D73697A653A3172656D3B6C696E652D6865696768743A312E3572656D7D2E746578742D736D7B666F6E742D73697A653A2E38373572656D3B6C696E652D6865696768743A312E323572656D7D2E666F6E742D6D656469756D7B666F';
wwv_flow_imp.g_varchar2_table(6) := '6E742D7765696768743A3530307D2E746578742D626C75652D3730307B2D2D74772D746578742D6F7061636974793A313B636F6C6F723A726762283239203738203231362F766172282D2D74772D746578742D6F70616369747929297D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(342300940835011462)
,p_plugin_id=>wwv_flow_imp.id(342104163496488776)
,p_file_name=>'styles.min.css'
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
