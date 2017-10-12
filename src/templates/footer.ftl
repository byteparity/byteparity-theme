<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "borderless") />
<#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
<#assign VOID = freeMarkerPortletPreferences.setValue("groupId", '${group_id}') />
<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", "38888") />
<@liferay_portlet["runtime"]
    defaultPreferences="${freeMarkerPortletPreferences}"
    portletProviderAction=portletProviderAction.VIEW
    instanceId="GLOBAL_FOOTER"
    portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
<#assign VOID = freeMarkerPortletPreferences.reset() />
