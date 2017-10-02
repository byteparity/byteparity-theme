<#--
This file allows you to override and define new FreeMarker variables.
-->
<#if layout??>
    <#assign banner_title = layout.getGroup().getExpandoBridge().getAttribute("Banner Title") />
    <#assign banner_detail_text = layout.getGroup().getExpandoBridge().getAttribute("Banner Detail Text") />
    <#assign banner_link = layout.getGroup().getExpandoBridge().getAttribute("Banner Link") />
</#if>