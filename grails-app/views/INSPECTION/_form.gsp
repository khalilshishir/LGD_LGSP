<%@ page import="monitoring.INSPECTION" %>



<div class="col-xs-6">
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DISTRICT_ID', 'error')} required">
    <label for="DISTRICT_ID">
        <g:message code="INSPECTION.DISTRICT_ID.label" default="জেলার নাম" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="DISTRICT_ID" name="DISTRICT_ID.id" from="${settings.District.list()}" optionKey="id" required="" value="${INSPECTIONInstance?.DISTRICT_ID?.id}" class="many-to-one form-control" noSelection="['null': '--জেলার নাম--']"/>
</div>
</div>
</div>

<div class="col-xs-6">
<div class="form-group">
<div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UPAZILLA_ID', 'error')} required">
    <label for="UPAZILLA_ID">
        <g:message code="INSPECTION.UPAZILLA_ID.label" default="উপজেলার নাম" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="UPAZILLA_ID" name="UPAZILLA_ID.id" from="${settings.Upazila.list()}" optionKey="id" required="" value="${INSPECTIONInstance?.UPAZILLA_ID?.id}" class="many-to-one form-control" noSelection="['null': '--উপজেলার নাম--']"/>
</div>
</div>
</div>

<div class="col-xs-12">
    <div class="form-group">
<div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UP_NAME_CODE', 'error')} ">
    <label for="UP_NAME_CODE">
        <g:message code="INSPECTION.UP_NAME_CODE.label" default="ইউপির নাম ও কোড" />

    </label>
    <g:textField class="form-control" name="UP_NAME_CODE" value="${INSPECTIONInstance?.UP_NAME_CODE}" placeholder="ইউপির নাম ও কোড "/>
</div>
</div>
</div>

<div class="col-xs-12">
    <div class="form-group">
<div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'CHAIRMAN_NAME', 'error')} ">
    <label for="CHAIRMAN_NAME">
        <g:message code="INSPECTION.CHAIRMAN_NAME.label" default="পরিদর্শনকালে উপস্থিত চেয়ারম্যান ও সদস্যবৃন্দের নাম*" />

    </label>
    <g:textField class="form-control"  name="CHAIRMAN_NAME" value="${INSPECTIONInstance?.CHAIRMAN_NAME}" placeholder="পরিদর্শনকালে উপস্থিত চেয়ারম্যান ও সদস্যবৃন্দের নাম* "/>
</div>
</div>
</div>

</div>
        </div>
        </div>

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">পরিদর্শনের বণনা</h3>
    </div>

    <div class="panel-body">

        <div class="col-xs-12">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'INSPECTION_DATE_NAME', 'error')} ">
                    <label for="INSPECTION_DATE_NAME">
                        <g:message code="INSPECTION.INSPECTION_DATE_NAME.label"
                                   default="পূর্ববর্তী পরিদশেনের তারিখ ও কর্মকতার নাম "/>

                    </label>
                    <g:textField class="form-control" name="INSPECTION_DATE_NAME"
                                 value="${INSPECTIONInstance?.INSPECTION_DATE_NAME}"
                                 placeholder="পূর্ববর্তী পরিদশেনের তারিখ ও কর্মকতার নাম "/>
                </div>
            </div>
        </div>

            <div class="col-xs-12">
                <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'FISCAL_YEAR_DATE', 'error')} ">
                    <label for="FISCAL_YEAR_DATE">
                        <g:message code="INSPECTION.FISCAL_YEAR_DATE.label" default="অর্থ বছর ও পরিদশের তারিখ"/>

                    </label>
                    <g:textField name="FISCAL_YEAR_DATE" value="${INSPECTIONInstance?.FISCAL_YEAR_DATE}"
                                 class="form-control" placeholder="অর্থ বছর ও পরিদশের তারিখ"/>
                </div>
            </div>
            </div>

        <div class="col-xs-12">
            <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGB_AMOUNT', 'error')} required">
            <label for="BGB_AMOUNT">
                <g:message code="INSPECTION.BGB_AMOUNT.label" default="বিবিজি বরাদ্দের পরিমাণ " />
                <span class="required-indicator">*</span>
            </label>
            <g:field name="BGB_AMOUNT" value="${fieldValue(bean: INSPECTIONInstance, field: 'BGB_AMOUNT')}" required="" class="form-control" placeholder="বিবিজি বরাদ্দের পরিমাণ "/>
        </div>
    </div>
</div>

        <div class="col-xs-12">
            <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PGB_AMOUNT', 'error')} required">
            <label for="PGB_AMOUNT">
                <g:message code="INSPECTION.PGB_AMOUNT.label" default="পিবিজি বরাদ্দের পরিমাণ" />
                <span class="required-indicator">*</span>
            </label>
            <g:field name="PGB_AMOUNT" value="${fieldValue(bean: INSPECTIONInstance, field: 'PGB_AMOUNT')}" required="" class="form-control" placeholder="পিবিজি বরাদ্দের পরিমাণ"/>
        </div>
    </div>
</div>


</div>
</div>

<div class="panel panel-info">
<div class="panel-heading">
    <h3 class="panel-title">স্কীম সংখ্যা</h3>
</div>

<div class="panel-body">

    <div class="col-xs-12">
        <div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'JOGAJOG', 'error')} ">
        <label for="JOGAJOG">
            <g:message code="INSPECTION.JOGAJOG.label" default="যোগাযোগ" />

        </label>
        <g:textField name="JOGAJOG" value="${INSPECTIONInstance?.JOGAJOG}" class="form-control"/>
    </div>
</div>
</div>

<div class="col-xs-12">
    <div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SASTHO', 'error')} ">
        <label for="SASTHO">
            <g:message code="INSPECTION.SASTHO.label" default="স্বাস্হ্য" />

        </label>
        <g:textField name="SASTHO" value="${INSPECTIONInstance?.SASTHO}" class="form-control"/>
    </div>
    </div>
</div>

    <div class="col-xs-12">
        <div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PANI_SORBORAHO', 'error')} ">
        <label for="PANI_SORBORAHO">
            <g:message code="INSPECTION.PANI_SORBORAHO.label" default="পানি সরবরাহ" />

        </label>
        <g:textField name="PANI_SORBORAHO" value="${INSPECTIONInstance?.PANI_SORBORAHO}" class="form-control"/>
    </div>
</div>
</div>

<div class="col-xs-12">
    <div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SIKHA', 'error')} ">
        <label for="SIKHA">
            <g:message code="INSPECTION.SIKHA.label" default="শিক্ষা " />

        </label>
        <g:textField name="SIKHA" value="${INSPECTIONInstance?.SIKHA}" class="form-control"/>
    </div>
    </div>
</div>
<div class="col-xs-12">
    <div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PRAKRITIK_SOMPOD', 'error')} ">
        <label for="PRAKRITIK_SOMPOD">
            <g:message code="INSPECTION.PRAKRITIK_SOMPOD.label" default="প্রাকৃতিক সম্পদ ব্যবস্থপনা" />

        </label>
        <g:textField name="PRAKRITIK_SOMPOD" value="${INSPECTIONInstance?.PRAKRITIK_SOMPOD}" class="form-control"/>
    </div>
    </div>
</div>
    <div class="col-xs-12">
        <div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'KRISHI_BAZAR', 'error')} ">
        <label for="KRISHI_BAZAR">
            <g:message code="INSPECTION.KRISHI_BAZAR.label" default="কৃষি এবং বাজার " />

        </label>
        <g:textField name="KRISHI_BAZAR" value="${INSPECTIONInstance?.KRISHI_BAZAR}" class="form-control"/>
    </div>
</div>
</div>

<div class="col-xs-12">
    <div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'POI_NISKASON', 'error')} ">
        <label for="POI_NISKASON">
            <g:message code="INSPECTION.POI_NISKASON.label" default="পয়ঃনিস্কাশন এবং বর্জ্য ব্যবস্থাপনা" />

        </label>
        <g:textField name="POI_NISKASON" value="${INSPECTIONInstance?.POI_NISKASON}" class="form-control"/>
    </div>
    </div>
</div>


    <div class="col-xs-12">
        <div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MANOBSOMPOD_UNNOION', 'error')} ">
        <label for="MANOBSOMPOD_UNNOION">
            <g:message code="INSPECTION.MANOBSOMPOD_UNNOION.label" default="মানব সম্পদ উন্নয়ন" />

        </label>
        <g:textField name="MANOBSOMPOD_UNNOION" value="${INSPECTIONInstance?.MANOBSOMPOD_UNNOION}" class="form-control"/>
    </div>
</div>
</div>

<div class="col-xs-12">
    <div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SKIM_TALIKA', 'error')} ">
        <label for="SKIM_TALIKA">
            <g:message code="INSPECTION.SKIM_TALIKA.label" default="বাস্তবায়িত ও বাস্তবায়নাধীন স্খিমের তালিকা " />

        </label>
        <g:textField name="SKIM_TALIKA" value="${INSPECTIONInstance?.SKIM_TALIKA}" class="form-control" placehelder="বাস্তবায়িত ও বাস্তবায়নাধীন স্খিমের তালিকা "/>
    </div>
    </div>
</div>

    <div class="col-xs-12">
        <div class="form-group">
    <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BISAS_MONTOBBO', 'error')} ">
        <label for="BISAS_MONTOBBO">
            <g:message code="INSPECTION.BISAS_MONTOBBO.label" default="বাস্তবায়নের মান সম্পকিত বিবরণ ও বিশেষে মন্তব্য (যদি থাকে এবং প্রকল্পের নাম সহ)" />

        </label>
        <g:textField name="BISAS_MONTOBBO" value="${INSPECTIONInstance?.BISAS_MONTOBBO}" class="form-control" placeholder="বাস্তবায়নের মান সম্পকিত বিবরণ ও বিশেষে মন্তব্য (যদি থাকে এবং প্রকল্পের নাম সহ)"/>
    </div>
</div>
</div>

</div>
</div>




<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">ইউপি’র জবাবদিহিতা,স্বচ্ছতা ও জনগণের সম্পৃক্ততা সম্পর্কে মন্তব্য</h3>
    </div>

    <div class="panel-body">

        <div class="col-xs-12">
            <div class="form-group">
                <g:message code="INSPECTION.NEGATIVE_SKIM_NO.label" default="নেগেটিভ তালিকাভুক্ত কোন স্কিম গ্রহণ করা হয়েছে কি না" />

            </div>
        </div>

        <div class="col-xs-1">
            <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NEGATIVE_SKIM_YES', 'error')} ">
            <label for="NEGATIVE_SKIM_YES">
                <g:message code="INSPECTION.NEGATIVE_SKIM_YES.label" default="হ্যাঁ" />

            </label>
            <g:checkBox name="NEGATIVE_SKIM_YES" value="${INSPECTIONInstance?.NEGATIVE_SKIM_YES}" />
        </div>
    </div>
</div>


        <div class="col-xs-11">
            <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NEGATIVE_SKIM_NO', 'error')} ">
            <label for="NEGATIVE_SKIM_NO">
                <g:message code="INSPECTION.NEGATIVE_SKIM_NO.label" default="না" />

            </label>
            <g:checkBox name="NEGATIVE_SKIM_NO" value="${INSPECTIONInstance?.NEGATIVE_SKIM_NO}" />
        </div>
    </div>
</div>

<div class="col-xs-12">
    <div class="form-group">
        <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NEGATIVE_SKIM', 'error')} ">
            <label for="NEGATIVE_SKIM">
                %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

            </label>
            <g:textField name="NEGATIVE_SKIM" value="${INSPECTIONInstance?.NEGATIVE_SKIM}" class="form-control" placeholder="নেগেটিভ তালিকাভুক্ত কোন স্কিম গ্রহণ করা হয়েছে কি না"/>
        </div>
    </div>
</div>


        <div class="col-xs-12">
            <div class="form-group">
                <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="৩০% অর্থ মহিলাদের দ্বারা অগ্রাধিকার প্রাপ্ত স্কিম বাস্তবায়নের জন্য ব্যয় করা হয়েছে কি না?হয়ে থাকলে কতটি?(নাম সহ)" />

            </div>
        </div>

        <div class="col-xs-1">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_ORTHO_YES', 'error')} ">
                    <label for="MOHILA_ORTHO_YES">
                        <g:message code="INSPECTION.MOHILA_ORTHO_YES.label" default="হ্যাঁ" />

                    </label>
                    <g:checkBox name="MOHILA_ORTHO_YES" value="${INSPECTIONInstance?.MOHILA_ORTHO_YES}" />
                </div>
            </div>
        </div>


        <div class="col-xs-11">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_ORTHO_NO', 'error')} ">
                    <label for="MOHILA_ORTHO_NO">
                        <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                    </label>
                    <g:checkBox name="MOHILA_ORTHO_NO" value="${INSPECTIONInstance?.MOHILA_ORTHO_NO}" />
                </div>
            </div>
        </div>

        <div class="col-xs-12">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_ORTHO_SKIM', 'error')} ">
                    <label for="MOHILA_ORTHO_SKIM">
                        %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                    </label>
                    <g:textField name="MOHILA_ORTHO_SKIM" value="${INSPECTIONInstance?.MOHILA_ORTHO_SKIM}" class="form-control" placeholder="৩০% অর্থ মহিলাদের দ্বারা অগ্রাধিকার প্রাপ্ত স্কিম বাস্তবায়নের জন্য ব্যয় করা হয়েছে কি না?হয়ে থাকলে কতটি?(নাম সহ)"/>
                </div>
            </div>
        </div>


        <div class="col-xs-12">
            <div class="form-group">
                <g:message code="INSPECTION.VOTER_OPOSTHITI.label" default="ওয়ার্ড পর্যায়ে স্কিমের তালিকা প্রণয়নকালে ৫% ভোটারের উপস্থিতিতে ওয়ার্ড সভা অনুষ্ঠিত হয়েছে কি না? (একটি হাজিরা দেখতে হবে)" />

            </div>
        </div>

        <div class="col-xs-1">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VOTER_OPOSTHITI_YES', 'error')} ">
                    <label for="VOTER_OPOSTHITI_YES">
                        <g:message code="INSPECTION.VOTER_OPOSTHITI_YES.label" default="হ্যাঁ" />

                    </label>
                    <g:checkBox name="VOTER_OPOSTHITI_YES" value="${INSPECTIONInstance?.VOTER_OPOSTHITI_YES}" />
                </div>
            </div>
        </div>


        <div class="col-xs-11">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VOTER_OPOSTHITI_NO', 'error')} ">
                    <label for="VOTER_OPOSTHITI_NO">
                        <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                    </label>
                    <g:checkBox name="VOTER_OPOSTHITI_NO" value="${INSPECTIONInstance?.VOTER_OPOSTHITI_NO}" />
                </div>
            </div>
        </div>

        <div class="col-xs-12">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VOTER_OPOSTHITI', 'error')} ">
                    <label for="VOTER_OPOSTHITI">
                        %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                    </label>
                    <g:textField name="VOTER_OPOSTHITI" value="${INSPECTIONInstance?.VOTER_OPOSTHITI}" class="form-control" placeholder="ওয়ার্ড পর্যায়ে স্কিমের তালিকা প্রণয়নকালে ৫% ভোটারের উপস্থিতিতে ওয়ার্ড সভা অনুষ্ঠিত হয়েছে কি না? (একটি হাজিরা দেখতে হবে)"/>
                </div>
            </div>
        </div>



        <div class="col-xs-12">
            <div class="form-group">
                <g:message code="INSPECTION.MOHILA_SOVAPOTI.label" default="গঠিত ওয়ার্ড কমিটিসমূহের ৩টি কমিটিতে ইউপি মহিলা সদস্য সভাপতি আছে কি না?" />

            </div>
        </div>

        <div class="col-xs-1">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SOVAPOTI_YES', 'error')} ">
                    <label for="MOHILA_SOVAPOTI_YES">
                        <g:message code="INSPECTION.MOHILA_SOVAPOTI_YES.label" default="হ্যাঁ" />

                    </label>
                    <g:checkBox name="MOHILA_SOVAPOTI_YES" value="${INSPECTIONInstance?.MOHILA_SOVAPOTI_YES}" />
                </div>
            </div>
        </div>


        <div class="col-xs-11">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SOVAPOTI_NO', 'error')} ">
                    <label for="MOHILA_SOVAPOTI_NO">
                        <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                    </label>
                    <g:checkBox name="MOHILA_SOVAPOTI_NO" value="${INSPECTIONInstance?.MOHILA_SOVAPOTI_NO}" />
                </div>
            </div>
        </div>

        <div class="col-xs-12">
            <div class="form-group">
                <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SOVAPOTI', 'error')} ">
                    <label for="MOHILA_SOVAPOTI">
                        %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                    </label>
                    <g:textField name="MOHILA_SOVAPOTI" value="${INSPECTIONInstance?.MOHILA_SOVAPOTI}" class="form-control" placeholder="গঠিত ওয়ার্ড কমিটিসমূহের ৩টি কমিটিতে ইউপি মহিলা সদস্য সভাপতি আছে কি না?"/>
                </div>
            </div>
        </div>

    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BGCC_JACHAI.label" default="স্কিমের তালিকা বিজিসিসি কর্তৃক যাচাইকৃত ও সুপাশিরকৃত কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_JACHAI_YES', 'error')} ">
                <label for="BGCC_JACHAI_YES">
                    <g:message code="INSPECTION.BGCC_JACHAI_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="BGCC_JACHAI_YES" value="${INSPECTIONInstance?.BGCC_JACHAI_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_JACHAI_NO', 'error')} ">
                <label for="BGCC_JACHAI_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="BGCC_JACHAI_NO" value="${INSPECTIONInstance?.BGCC_JACHAI_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_JACHAI', 'error')} ">
                <label for="BGCC_JACHAI">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="BGCC_JACHAI" value="${INSPECTIONInstance?.BGCC_JACHAI}" class="form-control" placeholder="স্কিমের তালিকা বিজিসিসি কর্তৃক যাচাইকৃত ও সুপাশিরকৃত কি না?"/>
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.PONCHOBARSHIK.label" default="পঞ্চবার্ষিক পরিকল্পনা প্রণয়ন করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PONCHOBARSHIK_YES', 'error')} ">
                <label for="PONCHOBARSHIK_YES">
                    <g:message code="INSPECTION.PONCHOBARSHIK_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="PONCHOBARSHIK_YES" value="${INSPECTIONInstance?.PONCHOBARSHIK_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PONCHOBARSHIK_NO', 'error')} ">
                <label for="PONCHOBARSHIK_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="PONCHOBARSHIK_NO" value="${INSPECTIONInstance?.PONCHOBARSHIK_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PONCHOBARSHIK', 'error')} ">
                <label for="PONCHOBARSHIK">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="PONCHOBARSHIK" value="${INSPECTIONInstance?.PONCHOBARSHIK}" class="form-control" placeholder="পঞ্চবার্ষিক পরিকল্পনা প্রণয়ন করা হয়েছে কি না?"/>
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.UNNOION_BUDGET.label" default="উন্মুক্ত বাজেট সভা অনুষ্ঠিত হয়ে থাকলে তারিখ ও উপস্থিতির সংখ্যা (হাজিরা খাতা দেখতে হবে)" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNNOION_BUDGET_YES', 'error')} ">
                <label for="UNNOION_BUDGET_YES">
                    <g:message code="INSPECTION.UNNOION_BUDGET_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="UNNOION_BUDGET_YES" value="${INSPECTIONInstance?.UNNOION_BUDGET_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNNOION_BUDGET_NO', 'error')} ">
                <label for="UNNOION_BUDGET_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="UNNOION_BUDGET_NO" value="${INSPECTIONInstance?.UNNOION_BUDGET_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNNOION_BUDGET', 'error')} ">
                <label for="UNNOION_BUDGET">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="UNNOION_BUDGET" value="${INSPECTIONInstance?.UNNOION_BUDGET}" class="form-control" placeholder="উন্মুক্ত বাজেট সভা অনুষ্ঠিত হয়ে থাকলে তারিখ ও উপস্থিতির সংখ্যা (হাজিরা খাতা দেখতে হবে)"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.CASHBOOK_SONROKHON.label" default="ক্যাশবুক/রেজিষ্টার, লেজার নিয়মিত সংক্ষণ করা হয়েছে কিনা?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'CASHBOOK_SONROKHON_YES', 'error')} ">
                <label for="CASHBOOK_SONROKHON_YES">
                    <g:message code="INSPECTION.CASHBOOK_SONROKHON_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="CASHBOOK_SONROKHON_YES" value="${INSPECTIONInstance?.CASHBOOK_SONROKHON_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'CASHBOOK_SONROKHON_NO', 'error')} ">
                <label for="CASHBOOK_SONROKHON_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="CASHBOOK_SONROKHON_NO" value="${INSPECTIONInstance?.CASHBOOK_SONROKHON_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'CASHBOOK_SONROKHON', 'error')} ">
                <label for="CASHBOOK_SONROKHON">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="CASHBOOK_SONROKHON" value="${INSPECTIONInstance?.CASHBOOK_SONROKHON}" class="form-control" placeholder="ক্যাশবুক/রেজিষ্টার, লেজার নিয়মিত সংক্ষণ করা হয়েছে কিনা?"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SOMPOTTI_PRONOION.label" default="সম্পত্তি রেজিষ্টার প্রণয়ন করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SOMPOTTI_PRONOION_YES', 'error')} ">
                <label for="SOMPOTTI_PRONOION_YES">
                    <g:message code="INSPECTION.SOMPOTTI_PRONOION_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="SOMPOTTI_PRONOION_YES" value="${INSPECTIONInstance?.SOMPOTTI_PRONOION_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SOMPOTTI_PRONOION_NO', 'error')} ">
                <label for="SOMPOTTI_PRONOION_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="SOMPOTTI_PRONOION_NO" value="${INSPECTIONInstance?.SOMPOTTI_PRONOION_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SOMPOTTI_PRONOION', 'error')} ">
                <label for="SOMPOTTI_PRONOION">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="SOMPOTTI_PRONOION" value="${INSPECTIONInstance?.SOMPOTTI_PRONOION}" class="form-control" placeholder="সম্পত্তি রেজিষ্টার প্রণয়ন করা হয়েছে কি না?"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SAMAJIK_SUROKHA.label" default="পরিবেশ ও সামাজিক সুরক্ষার পরিপন্থী স্কিম গ্রহণ না করার নির্দেশনা প্রতিপালিত হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SAMAJIK_SUROKHA_YES', 'error')} ">
                <label for="SAMAJIK_SUROKHA_YES">
                    <g:message code="INSPECTION.SAMAJIK_SUROKHA_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="SAMAJIK_SUROKHA_YES" value="${INSPECTIONInstance?.SAMAJIK_SUROKHA_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SAMAJIK_SUROKHA_NO', 'error')} ">
                <label for="SAMAJIK_SUROKHA_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="SAMAJIK_SUROKHA_NO" value="${INSPECTIONInstance?.SAMAJIK_SUROKHA_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SAMAJIK_SUROKHA', 'error')} ">
                <label for="SAMAJIK_SUROKHA">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="SAMAJIK_SUROKHA" value="${INSPECTIONInstance?.SAMAJIK_SUROKHA}" class="form-control" placeholder="পরিবেশ ও সামাজিক সুরক্ষার পরিপন্থী স্কিম গ্রহণ না করার নির্দেশনা প্রতিপালিত হয়েছে কি না?"/>
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.ODIT_NOTICE.label" default="বার্ষিক অডিট প্রতিবেদন নোটিশ বোর্ডে টানানো রয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'ODIT_NOTICE_YES', 'error')} ">
                <label for="ODIT_NOTICE_YES">
                    <g:message code="INSPECTION.ODIT_NOTICE_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="ODIT_NOTICE_YES" value="${INSPECTIONInstance?.ODIT_NOTICE_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'ODIT_NOTICE_NO', 'error')} ">
                <label for="ODIT_NOTICE_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="ODIT_NOTICE_NO" value="${INSPECTIONInstance?.ODIT_NOTICE_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'ODIT_NOTICE', 'error')} ">
                <label for="ODIT_NOTICE">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="ODIT_NOTICE" value="${INSPECTIONInstance?.ODIT_NOTICE}" class="form-control" placeholder="বার্ষিক অডিট প্রতিবেদন নোটিশ বোর্ডে টানানো রয়েছে কি না?"/>
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.VAT_TAX.label" default="ভ্যাট, ট্যাক্স নিয়ম মাফিক কর্তন ও সরকারি কোষাগারে জমা করা হয়েছে কি না এলজিএসপির?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VAT_TAX_YES', 'error')} ">
                <label for="VAT_TAX_YES">
                    <g:message code="INSPECTION.VAT_TAX_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="VAT_TAX_YES" value="${INSPECTIONInstance?.VAT_TAX_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VAT_TAX_NO', 'error')} ">
                <label for="VAT_TAX_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="VAT_TAX_NO" value="${INSPECTIONInstance?.VAT_TAX_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'VAT_TAX', 'error')} ">
                <label for="VAT_TAX">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="VAT_TAX" value="${INSPECTIONInstance?.VAT_TAX}" class="form-control" placeholder="ভ্যাট, ট্যাক্স নিয়ম মাফিক কর্তন ও সরকারি কোষাগারে জমা করা হয়েছে কি না এলজিএসপির?"/>
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.KROI_PROKRIA.label" default="ক্রয় প্রক্রিয়ার নিয়ম অনুসরণ করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'KROI_PROKRIA_YES', 'error')} ">
                <label for="KROI_PROKRIA_YES">
                    <g:message code="INSPECTION.KROI_PROKRIA_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="KROI_PROKRIA_YES" value="${INSPECTIONInstance?.KROI_PROKRIA_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'KROI_PROKRIA_NO', 'error')} ">
                <label for="KROI_PROKRIA_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="KROI_PROKRIA_NO" value="${INSPECTIONInstance?.KROI_PROKRIA_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'KROI_PROKRIA', 'error')} ">
                <label for="KROI_PROKRIA">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="KROI_PROKRIA" value="${INSPECTIONInstance?.KROI_PROKRIA}" class="form-control" placeholder="ক্রয় প্রক্রিয়ার নিয়ম অনুসরণ করা হয়েছে কি না?"/>
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.PIC_SKIM.label" default="পিআইসির মাধ্যমে স্কীম বাস্তবায়ন করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PIC_SKIM_YES', 'error')} ">
                <label for="PIC_SKIM_YES">
                    <g:message code="INSPECTION.PIC_SKIM_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="PIC_SKIM_YES" value="${INSPECTIONInstance?.PIC_SKIM_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PIC_SKIM_NO', 'error')} ">
                <label for="PIC_SKIM_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="PIC_SKIM_NO" value="${INSPECTIONInstance?.PIC_SKIM_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'PIC_SKIM', 'error')} ">
                <label for="PIC_SKIM">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="PIC_SKIM" value="${INSPECTIONInstance?.PIC_SKIM}" class="form-control" placeholder="পিআইসির মাধ্যমে স্কীম বাস্তবায়ন করা হয়েছে কি না?"/>
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.OPEN_TENDER.label" default="প্রয়োজনীয় ক্ষেত্রে আরএফকিউ/ওপেন টেন্ডার করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'OPEN_TENDER_YES', 'error')} ">
                <label for="OPEN_TENDER_YES">
                    <g:message code="INSPECTION.OPEN_TENDER_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="OPEN_TENDER_YES" value="${INSPECTIONInstance?.OPEN_TENDER_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'OPEN_TENDER_NO', 'error')} ">
                <label for="OPEN_TENDER_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="OPEN_TENDER_NO" value="${INSPECTIONInstance?.OPEN_TENDER_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'OPEN_TENDER', 'error')} ">
                <label for="OPEN_TENDER">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="OPEN_TENDER" value="${INSPECTIONInstance?.OPEN_TENDER}" class="form-control" placeholder="প্রয়োজনীয় ক্ষেত্রে আরএফকিউ/ওপেন টেন্ডার করা হয়েছে কি না?"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BRODSHEET_JOBAB.label" default="বিগত অর্থবছর/বছরসমূহে অডিট আপত্তির ব্রডশীট জবাব প্রেরণ করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BRODSHEET_JOBAB_YES', 'error')} ">
                <label for="BRODSHEET_JOBAB_YES">
                    <g:message code="INSPECTION.BRODSHEET_JOBAB_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="BRODSHEET_JOBAB_YES" value="${INSPECTIONInstance?.BRODSHEET_JOBAB_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BRODSHEET_JOBAB_NO', 'error')} ">
                <label for="BRODSHEET_JOBAB_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="BRODSHEET_JOBAB_NO" value="${INSPECTIONInstance?.BRODSHEET_JOBAB_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BRODSHEET_JOBAB', 'error')} ">
                <label for="BRODSHEET_JOBAB">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="BRODSHEET_JOBAB" value="${INSPECTIONInstance?.BRODSHEET_JOBAB}" class="form-control" placeholder="বিগত অর্থবছর/বছরসমূহে অডিট আপত্তির ব্রডশীট জবাব প্রেরণ করা হয়েছে কি না?"/>
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SANNASHIK_PROTIBADON.label" default="ষান্মাসিক প্রতিবেদন প্রেরণ করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SANNASHIK_PROTIBADON_YES', 'error')} ">
                <label for="SANNASHIK_PROTIBADON_YES">
                    <g:message code="INSPECTION.SANNASHIK_PROTIBADON_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="SANNASHIK_PROTIBADON_YES" value="${INSPECTIONInstance?.SANNASHIK_PROTIBADON_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SANNASHIK_PROTIBADON_NO', 'error')} ">
                <label for="SANNASHIK_PROTIBADON_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="SANNASHIK_PROTIBADON_NO" value="${INSPECTIONInstance?.SANNASHIK_PROTIBADON_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SANNASHIK_PROTIBADON', 'error')} ">
                <label for="SANNASHIK_PROTIBADON">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="SANNASHIK_PROTIBADON" value="${INSPECTIONInstance?.SANNASHIK_PROTIBADON}" class="form-control" placeholder="ষান্মাসিক প্রতিবেদন প্রেরণ করা হয়েছে কি না?"/>
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.NOTHI_SONROKHITO.label" default="বিগত ৫ বছরের হিসাব সংক্রান্ত নথি সংরক্ষীত হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NOTHI_SONROKHITO_YES', 'error')} ">
                <label for="NOTHI_SONROKHITO_YES">
                    <g:message code="INSPECTION.NOTHI_SONROKHITO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="NOTHI_SONROKHITO_YES" value="${INSPECTIONInstance?.NOTHI_SONROKHITO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NOTHI_SONROKHITO_NO', 'error')} ">
                <label for="NOTHI_SONROKHITO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="NOTHI_SONROKHITO_NO" value="${INSPECTIONInstance?.NOTHI_SONROKHITO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'NOTHI_SONROKHITO', 'error')} ">
                <label for="NOTHI_SONROKHITO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="NOTHI_SONROKHITO" value="${INSPECTIONInstance?.NOTHI_SONROKHITO}" class="form-control" placeholder="বিগত ৫ বছরের হিসাব সংক্রান্ত নথি সংরক্ষীত হয়েছে কি না?"/>
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BANK_SOMONNOI.label" default="মাসিক ভিত্তিতে ব্যাংক হিসাব সমন্বয় করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BANK_SOMONNOI_YES', 'error')} ">
                <label for="BANK_SOMONNOI_YES">
                    <g:message code="INSPECTION.BANK_SOMONNOI_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="BANK_SOMONNOI_YES" value="${INSPECTIONInstance?.BANK_SOMONNOI_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BANK_SOMONNOI_NO', 'error')} ">
                <label for="BANK_SOMONNOI_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="BANK_SOMONNOI_NO" value="${INSPECTIONInstance?.BANK_SOMONNOI_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BANK_SOMONNOI', 'error')} ">
                <label for="BANK_SOMONNOI">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="BANK_SOMONNOI" value="${INSPECTIONInstance?.BANK_SOMONNOI}" class="form-control" placeholder="মাসিক ভিত্তিতে ব্যাংক হিসাব সমন্বয় করা হয়েছে কি না?"/>
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.GRAM_ADALOT.label" default="গ্রাম আদালত কার্যকরকরণে ভূমিকা" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'GRAM_ADALOT_YES', 'error')} ">
                <label for="GRAM_ADALOT_YES">
                    <g:message code="INSPECTION.GRAM_ADALOT_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="GRAM_ADALOT_YES" value="${INSPECTIONInstance?.GRAM_ADALOT_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'GRAM_ADALOT_NO', 'error')} ">
                <label for="GRAM_ADALOT_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="GRAM_ADALOT_NO" value="${INSPECTIONInstance?.GRAM_ADALOT_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'GRAM_ADALOT', 'error')} ">
                <label for="GRAM_ADALOT">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="GRAM_ADALOT" value="${INSPECTIONInstance?.GRAM_ADALOT}" class="form-control" placeholder="গ্রাম আদালত কার্যকরকরণে ভূমিকা"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.RAJOSSO_NIRDHARON.label" default="স্থানীয় রাজস্ব নির্ধারণ করা হয়েছে কিনা?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_NIRDHARON_YES', 'error')} ">
                <label for="RAJOSSO_NIRDHARON_YES">
                    <g:message code="INSPECTION.RAJOSSO_NIRDHARON_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="RAJOSSO_NIRDHARON_YES" value="${INSPECTIONInstance?.RAJOSSO_NIRDHARON_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_NIRDHARON_NO', 'error')} ">
                <label for="RAJOSSO_NIRDHARON_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="RAJOSSO_NIRDHARON_NO" value="${INSPECTIONInstance?.RAJOSSO_NIRDHARON_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_NIRDHARON', 'error')} ">
                <label for="RAJOSSO_NIRDHARON">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="RAJOSSO_NIRDHARON" value="${INSPECTIONInstance?.RAJOSSO_NIRDHARON}" class="form-control" placeholder="স্থানীয় রাজস্ব নির্ধারণ করা হয়েছে কিনা?"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.RAJOSSO_BRIDHI.label" default="স্থানীয় রাজস্বস্ বৃদ্ধি হয়ে থাকলে বৃদ্ধির পরিমান ও আদায়ের পরিমান। পূর্ববর্তী বছরের রাজস্বের পরিমান কত ছিল?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_BRIDHI_YES', 'error')} ">
                <label for="RAJOSSO_BRIDHI_YES">
                    <g:message code="INSPECTION.RAJOSSO_BRIDHI_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="RAJOSSO_BRIDHI_YES" value="${INSPECTIONInstance?.RAJOSSO_BRIDHI_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_BRIDHI_NO', 'error')} ">
                <label for="RAJOSSO_BRIDHI_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="RAJOSSO_BRIDHI_NO" value="${INSPECTIONInstance?.RAJOSSO_BRIDHI_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'RAJOSSO_BRIDHI', 'error')} ">
                <label for="RAJOSSO_BRIDHI">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="RAJOSSO_BRIDHI" value="${INSPECTIONInstance?.RAJOSSO_BRIDHI}" class="form-control" placeholder="স্থানীয় রাজস্বস্ বৃদ্ধি হয়ে থাকলে বৃদ্ধির পরিমান ও আদায়ের পরিমান। পূর্ববর্তী বছরের রাজস্বের পরিমান কত ছিল?"/>
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.UDC_SOVA.label" default="ইউডিসিসি (ইউনিয়ন ডেভেলপমেন্ট কো-অর্ডিনেশন কমিটি) সভা নিয়মিত অনুষ্ঠিত হয় কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UDC_SOVA_YES', 'error')} ">
                <label for="UDC_SOVA_YES">
                    <g:message code="INSPECTION.UDC_SOVA_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="UDC_SOVA_YES" value="${INSPECTIONInstance?.UDC_SOVA_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UDC_SOVA_NO', 'error')} ">
                <label for="UDC_SOVA_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="UDC_SOVA_NO" value="${INSPECTIONInstance?.UDC_SOVA_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UDC_SOVA', 'error')} ">
                <label for="UDC_SOVA">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="UDC_SOVA" value="${INSPECTIONInstance?.UDC_SOVA}" class="form-control" placeholder="ইউডিসিসি (ইউনিয়ন ডেভেলপমেন্ট কো-অর্ডিনেশন কমিটি) সভা নিয়মিত অনুষ্ঠিত হয় কি না?"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BGCC_SOVA.label" default="বিজিসিসি’র সভা সর্বশেষ কত তারিখে অনুষ্ঠিত হয়েছে?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_SOVA_YES', 'error')} ">
                <label for="BGCC_SOVA_YES">
                    <g:message code="INSPECTION.BGCC_SOVA_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="BGCC_SOVA_YES" value="${INSPECTIONInstance?.BGCC_SOVA_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_SOVA_NO', 'error')} ">
                <label for="BGCC_SOVA_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="BGCC_SOVA_NO" value="${INSPECTIONInstance?.BGCC_SOVA_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BGCC_SOVA', 'error')} ">
                <label for="BGCC_SOVA">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="BGCC_SOVA" value="${INSPECTIONInstance?.BGCC_SOVA}" class="form-control" placeholder="বিজিসিসি’র সভা সর্বশেষ কত তারিখে অনুষ্ঠিত হয়েছে?"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SSC_SODOSHO.label" default="এসএসসি’র সদস্যরা গৃহিত স্কীম বাস্তবায়ন সম্পর্কে অবহিত কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SSC_SODOSHO_YES', 'error')} ">
                <label for="SSC_SODOSHO_YES">
                    <g:message code="INSPECTION.SSC_SODOSHO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="SSC_SODOSHO_YES" value="${INSPECTIONInstance?.SSC_SODOSHO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SSC_SODOSHO_NO', 'error')} ">
                <label for="SSC_SODOSHO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="SSC_SODOSHO_NO" value="${INSPECTIONInstance?.SSC_SODOSHO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SSC_SODOSHO', 'error')} ">
                <label for="SSC_SODOSHO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="SSC_SODOSHO" value="${INSPECTIONInstance?.SSC_SODOSHO}" class="form-control" placeholder="এসএসসি’র সদস্যরা গৃহিত স্কীম বাস্তবায়ন সম্পর্কে অবহিত কি না?"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SKIM_BILL.label" default="বাস্তবায়িত স্কিমের বিল কিভাবে পরিশোধ করা হয়েছে?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SKIM_BILL_YES', 'error')} ">
                <label for="SKIM_BILL_YES">
                    <g:message code="INSPECTION.SKIM_BILL_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="SKIM_BILL_YES" value="${INSPECTIONInstance?.SKIM_BILL_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SKIM_BILL_NO', 'error')} ">
                <label for="SKIM_BILL_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="SKIM_BILL_NO" value="${INSPECTIONInstance?.SKIM_BILL_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SKIM_BILL', 'error')} ">
                <label for="SKIM_BILL">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="SKIM_BILL" value="${INSPECTIONInstance?.SKIM_BILL}" class="form-control" placeholder="বাস্তবায়িত স্কিমের বিল কিভাবে পরিশোধ করা হয়েছে?"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BILL_PRODAN.label" default="এসএসসি এবং ওয়ার্ড কমিটির সুপারিশের ভিত্তিতে বিল প্রদান করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BILL_PRODAN_YES', 'error')} ">
                <label for="BILL_PRODAN_YES">
                    <g:message code="INSPECTION.BILL_PRODAN_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="BILL_PRODAN_YES" value="${INSPECTIONInstance?.BILL_PRODAN_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BILL_PRODAN_NO', 'error')} ">
                <label for="BILL_PRODAN_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="BILL_PRODAN_NO" value="${INSPECTIONInstance?.BILL_PRODAN_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BILL_PRODAN', 'error')} ">
                <label for="BILL_PRODAN">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="BILL_PRODAN" value="${INSPECTIONInstance?.BILL_PRODAN}" class="form-control" placeholder="এসএসসি এবং ওয়ার্ড কমিটির সুপারিশের ভিত্তিতে বিল প্রদান করা হয়েছে কি না?"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.MOHILA_SODOSSO_OBOHITO.label" default="মহিলা সদস্যরা চেকে স্বাক্ষারের পূর্বে স্কিম বাস্তবায়ন সম্পর্কে অবহিত ছিলেন কি না ?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SODOSSO_OBOHITO_YES', 'error')} ">
                <label for="MOHILA_SODOSSO_OBOHITO_YES">
                    <g:message code="INSPECTION.MOHILA_SODOSSO_OBOHITO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="MOHILA_SODOSSO_OBOHITO_YES" value="${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SODOSSO_OBOHITO_NO', 'error')} ">
                <label for="MOHILA_SODOSSO_OBOHITO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="MOHILA_SODOSSO_OBOHITO_NO" value="${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'MOHILA_SODOSSO_OBOHITO', 'error')} ">
                <label for="MOHILA_SODOSSO_OBOHITO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="MOHILA_SODOSSO_OBOHITO" value="${INSPECTIONInstance?.MOHILA_SODOSSO_OBOHITO}" class="form-control" placeholder="মহিলা সদস্যরা চেকে স্বাক্ষারের পূর্বে স্কিম বাস্তবায়ন সম্পর্কে অবহিত ছিলেন কি না ?"/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.SROMGHONO_SKIM_BATITO.label" default="শ্রমঘন স্কীম ব্যতীত অন্যান্য স্কীমে অগ্রিম প্রদান করা হয়েছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SROMGHONO_SKIM_BATITO_YES', 'error')} ">
                <label for="SROMGHONO_SKIM_BATITO_YES">
                    <g:message code="INSPECTION.SROMGHONO_SKIM_BATITO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="SROMGHONO_SKIM_BATITO_YES" value="${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SROMGHONO_SKIM_BATITO_NO', 'error')} ">
                <label for="SROMGHONO_SKIM_BATITO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="SROMGHONO_SKIM_BATITO_NO" value="${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SROMGHONO_SKIM_BATITO', 'error')} ">
                <label for="SROMGHONO_SKIM_BATITO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="SROMGHONO_SKIM_BATITO" value="${INSPECTIONInstance?.SROMGHONO_SKIM_BATITO}" class="form-control" placeholder="শ্রমঘন স্কীম ব্যতীত অন্যান্য স্কীমে অগ্রিম প্রদান করা হয়েছে কি না?"/>
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.BIGOTO_SON_SKIM.label" default="অডিটর কর্তৃক বিগত সনের অডিটকালে পরিদর্শিত স্খীমের নাম" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BIGOTO_SON_SKIM_YES', 'error')} ">
                <label for="BIGOTO_SON_SKIM_YES">
                    <g:message code="INSPECTION.BIGOTO_SON_SKIM_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="BIGOTO_SON_SKIM_YES" value="${INSPECTIONInstance?.BIGOTO_SON_SKIM_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BIGOTO_SON_SKIM_NO', 'error')} ">
                <label for="BIGOTO_SON_SKIM_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="BIGOTO_SON_SKIM_NO" value="${INSPECTIONInstance?.BIGOTO_SON_SKIM_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'BIGOTO_SON_SKIM', 'error')} ">
                <label for="BIGOTO_SON_SKIM">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="BIGOTO_SON_SKIM" value="${INSPECTIONInstance?.BIGOTO_SON_SKIM}" class="form-control" placeholder="অডিটর কর্তৃক বিগত সনের অডিটকালে পরিদর্শিত স্খীমের নাম"/>
            </div>
        </div>
    </div>




    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.DF_SKIM.label" default="ডি এফ কর্তৃক কতটি স্কিম পরিদর্শন করা হয়েছে ? বাস্তবায়নের মান সম্পর্কে সুনিদিষ্ট মন্তব্য " />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DF_SKIM_YES', 'error')} ">
                <label for="DF_SKIM_YES">
                    <g:message code="INSPECTION.DF_SKIM_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="DF_SKIM_YES" value="${INSPECTIONInstance?.DF_SKIM_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DF_SKIM_NO', 'error')} ">
                <label for="DF_SKIM_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="DF_SKIM_NO" value="${INSPECTIONInstance?.DF_SKIM_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DF_SKIM', 'error')} ">
                <label for="DF_SKIM">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="DF_SKIM" value="${INSPECTIONInstance?.DF_SKIM}" class="form-control" placeholder="ডি এফ কর্তৃক কতটি স্কিম পরিদর্শন করা হয়েছে ? বাস্তবায়নের মান সম্পর্কে সুনিদিষ্ট মন্তব্য "/>
            </div>
        </div>
    </div>



    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.WARD_PROKOLPO.label" default="ওয়ার্ড প্রকল্প বাস্তবায়ন কমিটি কর্তৃক প্রকল্প পরিদর্শন করা হয় কি না? হয়ে থাকলে প্রতিবেদন ইউপিতে জমা হয় কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'WARD_PROKOLPO_YES', 'error')} ">
                <label for="WARD_PROKOLPO_YES">
                    <g:message code="INSPECTION.WARD_PROKOLPO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="WARD_PROKOLPO_YES" value="${INSPECTIONInstance?.WARD_PROKOLPO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'WARD_PROKOLPO_NO', 'error')} ">
                <label for="WARD_PROKOLPO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="WARD_PROKOLPO_NO" value="${INSPECTIONInstance?.WARD_PROKOLPO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'WARD_PROKOLPO', 'error')} ">
                <label for="WARD_PROKOLPO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="WARD_PROKOLPO" value="${INSPECTIONInstance?.WARD_PROKOLPO}" class="form-control" placeholder="ওয়ার্ড প্রকল্প বাস্তবায়ন কমিটি কর্তৃক প্রকল্প পরিদর্শন করা হয় কি না? হয়ে থাকলে প্রতিবেদন ইউপিতে জমা হয় কি না?"/>
            </div>
        </div>
    </div>



   %{-- <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.LGSP_PROKOLPO.label" default="এলজিএসপি প্রকল্পের তালিকা ও অগ্রগতি জেলা তথ্য বাতায়নে (NPF) অর্ন্তভুক্ত ও হালনাগাদ করা হচ্ছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO_YES', 'error')} ">
                <label for="LGSP_PROKOLPO_YES">
                    <g:message code="INSPECTION.LGSP_PROKOLPO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="LGSP_PROKOLPO_YES" value="${INSPECTIONInstance?.LGSP_PROKOLPO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO_NO', 'error')} ">
                <label for="LGSP_PROKOLPO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="LGSP_PROKOLPO_NO" value="${INSPECTIONInstance?.LGSP_PROKOLPO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO', 'error')} ">
                <label for="LGSP_PROKOLPO">
                    --}%%{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%%{--

                </label>
                <g:textField name="LGSP_PROKOLPO" value="${INSPECTIONInstance?.LGSP_PROKOLPO}" class="form-control" placeholder="এলজিএসপি প্রকল্পের তালিকা ও অগ্রগতি জেলা তথ্য বাতায়নে (NPF) অর্ন্তভুক্ত ও হালনাগাদ করা হচ্ছে কি না?"/>
            </div>
        </div>
    </div>
--}%


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.LGSP_PROKOLPO.label" default="এলজিএসপি প্রকল্পের তালিকা ও অগ্রগতি জেলা তথ্য বাতায়নে (NPF) অর্ন্তভুক্ত ও হালনাগাদ করা হচ্ছে কি না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO_YES', 'error')} ">
                <label for="LGSP_PROKOLPO_YES">
                    <g:message code="INSPECTION.LGSP_PROKOLPO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="LGSP_PROKOLPO_YES" value="${INSPECTIONInstance?.LGSP_PROKOLPO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO_NO', 'error')} ">
                <label for="LGSP_PROKOLPO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="LGSP_PROKOLPO_NO" value="${INSPECTIONInstance?.LGSP_PROKOLPO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'LGSP_PROKOLPO', 'error')} ">
                <label for="LGSP_PROKOLPO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="LGSP_PROKOLPO" value="${INSPECTIONInstance?.LGSP_PROKOLPO}" class="form-control" placeholder="এলজিএসপি প্রকল্পের তালিকা ও অগ্রগতি জেলা তথ্য বাতায়নে (NPF) অর্ন্তভুক্ত ও হালনাগাদ করা হচ্ছে কি না?"/>
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.UNION_PROKOLPO.label" default="ইউনিয়ন পরিষদের সামনে প্রকল্প তালিকা টানানো হয়েছে কি-না?" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNION_PROKOLPO_YES', 'error')} ">
                <label for="UNION_PROKOLPO_YES">
                    <g:message code="INSPECTION.UNION_PROKOLPO_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="UNION_PROKOLPO_YES" value="${INSPECTIONInstance?.UNION_PROKOLPO_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNION_PROKOLPO_NO', 'error')} ">
                <label for="UNION_PROKOLPO_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="UNION_PROKOLPO_NO" value="${INSPECTIONInstance?.UNION_PROKOLPO_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'UNION_PROKOLPO', 'error')} ">
                <label for="UNION_PROKOLPO">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="UNION_PROKOLPO" value="${INSPECTIONInstance?.UNION_PROKOLPO}" class="form-control" placeholder="ইউনিয়ন পরিষদের সামনে প্রকল্প তালিকা টানানো হয়েছে কি-না?"/>
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <g:message code="INSPECTION.DURNITI.label" default="কোন বিশেষ অনিয়ম ও দুর্নীতি উদঘাটিত হয়ে থাকলে তার বিস্তারিত বিবরণ (ডকুমেন্ট সহ)" />

        </div>
    </div>

    <div class="col-xs-1">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DURNITI_YES', 'error')} ">
                <label for="DURNITI_YES">
                    <g:message code="INSPECTION.DURNITI_YES.label" default="হ্যাঁ" />

                </label>
                <g:checkBox name="DURNITI_YES" value="${INSPECTIONInstance?.DURNITI_YES}" />
            </div>
        </div>
    </div>


    <div class="col-xs-11">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DURNITI_NO', 'error')} ">
                <label for="DURNITI_NO">
                    <g:message code="INSPECTION.MOHILA_ORTHO_NO.label" default="না" />

                </label>
                <g:checkBox name="DURNITI_NO" value="${INSPECTIONInstance?.DURNITI_NO}" />
            </div>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'DURNITI', 'error')} ">
                <label for="DURNITI">
                    %{--<g:message code="INSPECTION.NEGATIVE_SKIM.label" default="NEGATIVESKIM" />--}%

                </label>
                <g:textField name="DURNITI" value="${INSPECTIONInstance?.DURNITI}" class="form-control" placeholder="কোন বিশেষ অনিয়ম ও দুর্নীতি উদঘাটিত হয়ে থাকলে তার বিস্তারিত বিবরণ (ডকুমেন্ট সহ)"/>
            </div>
        </div>
    </div>


    <div class="col-xs-12">
        <div class="form-group">
            <div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'SUPARISH', 'error')} ">
                <label for="SUPARISH">
                    <g:message code="INSPECTION.SUPARISH.label" default="এলজি এসপি-২ এর উদ্দেশ্য বাস্তবায়নে সুনির্দিষ্ট প্রতিবন্ধকতা ও সুপারিশ" />

                </label>
                <g:textField name="SUPARISH" value="${INSPECTIONInstance?.SUPARISH}" class="form-control" placeholder="কোন বিশেষ অনিয়ম ও দুর্নীতি উদঘাটিত হয়ে থাকলে তার বিস্তারিত বিবরণ (ডকুমেন্ট সহ)"/>
            </div>
        </div>
    </div>
</div>
</div>































%{--<div class="fieldcontain ${hasErrors(bean: INSPECTIONInstance, field: 'ID', 'error')} required">
	<label for="ID">
		<g:message code="INSPECTION.ID.label" default="ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ID" type="number" value="${INSPECTIONInstance.ID}" required=""/>
</div>--}%


