<#--
/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
-->
<#include "/${parameters.templateDir}/bootstrap/controlheader.ftl" />
<#if (parameters.dynamicAttributes?? && parameters.dynamicAttributes?size > 0 && parameters.dynamicAttributes["inputPrepend"]??)><#rt/>
<#assign inputPrepend = parameters.dynamicAttributes.remove("inputPrepend")/><#rt/>
</#if><#rt/>
<#if (parameters.dynamicAttributes?? && parameters.dynamicAttributes?size > 0 && parameters.dynamicAttributes["inputAppend"]??)><#rt/>
<#assign inputAppend = parameters.dynamicAttributes.remove("inputAppend")/><#rt/>
</#if><#rt/>
<#if (parameters.dynamicAttributes?? && parameters.dynamicAttributes?size > 0 && parameters.dynamicAttributes["buttonPrepend"]??)><#rt/>
    <#assign buttonPrepend = parameters.dynamicAttributes.remove("buttonPrepend")/><#rt/>
</#if><#rt/>
<#if (parameters.dynamicAttributes?? && parameters.dynamicAttributes?size > 0 && parameters.dynamicAttributes["buttonAppend"]??)><#rt/>
    <#assign buttonAppend = parameters.dynamicAttributes.remove("buttonAppend")/><#rt/>
</#if><#rt/>
<#if (parameters.dynamicAttributes?? && parameters.dynamicAttributes?size > 0 && parameters.dynamicAttributes["buttonId"]??)><#rt/>
    <#assign buttonId = parameters.dynamicAttributes.remove("buttonId")/><#rt/>
</#if><#rt/>

<#if inputPrepend??>
<div class="input-prepend">
    <span class="add-on">${inputPrepend?html}</span>
</#if>
<#if buttonPrepend??>
<div class="input-prepend">
    <button id="${buttonId?html}" class="btn">${buttonPrepend?html}</button>
</#if>
<#if inputAppend??>
<div class="input-append">
</#if>
<#if buttonAppend??>
<div class="input-append">
</#if>
<#include "/${parameters.templateDir}/simple/text.ftl" />
<#if inputPrepend??>
</div>
</#if>
<#if buttonPrepend??>
</div>
</#if>
<#if inputAppend??>
    <span class="add-on">${inputAppend?html}</span>
</div>
</#if>
<#if buttonAppend??>
    <button id="${buttonId?html}" class="btn">${buttonAppend?html}</button>
</div>
</#if>
<#include "/${parameters.templateDir}/bootstrap/controlfooter.ftl" />
