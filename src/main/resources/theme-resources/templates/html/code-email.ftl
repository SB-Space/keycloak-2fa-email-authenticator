<#import "template.ftl" as layout>
<@layout.emailLayout title=msg("emailOtpTitle") previewText=msg("emailOtpPreview")>
    <p class="p"><strong>${msg("emailGreeting", user.firstName!user.username)}</strong></p>
    <p class="p">${msg("emailOtpIntro", realmName, ttl)}</p>

<#-- Display the 6-digit code large, grouped 3+3 with a space -->
    <#assign left = (code?length >= 3)?then(code?substring(0,3), code)>
    <#assign right = (code?length > 3)?then(code?substring(3, code?length), "")>
    <p style="text-align:center; margin: 24px 0;">
    <span style="display:inline-block; font-family: monospace; font-size: 32px; font-weight: 700; letter-spacing: 4px; color:#252d5f; background:#f2f4fa; border: 1px solid #d7dce8; border-radius: 12px; padding: 14px 22px;">
      ${left}<#if right?has_content><span style="margin: 0 10px;"></span>${right}</#if>
    </span>
    </p>

    <p class="p">${msg("emailOtpIgnore")}</p>
    <p class="p">${msg("emailRegards")}<br/>${msg("emailRegardsTeam")}</p>
</@layout.emailLayout>