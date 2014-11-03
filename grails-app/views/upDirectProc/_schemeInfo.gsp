
<div class="col-xs-12">
    <div class="col-xs-6">
        <div class="">
            <label class="label_cl">স্কীমের ধরণ</label>
            <span class="values">: ${scheme?.SCHEME_TYPE?.NAME}</span>
        </div>
    </div>


    <div class="col-xs-6">
        <div class="">
            <label class="label_cl">অবস্থান</label>
            <span class="values">: ${scheme?.SCHEME_LOCATION}</span>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">প্রাক্কলিত মূল্য</label>
            <span class="values">: ${scheme?.RECEIVED_AMOUNT}</span>
        </div>
    </div>

    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">চুক্তি মূল্য</label>
            <span class="values">: ${scheme?.GRANTED_AMOUNT}</span>
           </div>
    </div>

    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">স্কীমের ক্রয়ের   ধরণ</label>
            <span class="values">: ${scheme?.IMPLEMENTATION_SYSTEM}</span>
        </div>
    </div>
    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">স্কীম শুরুর তারিখ</label>
            <span class="values">: ${scheme?.SCHEME_START_DATE}</span>
        </div>
    </div>
    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">দায়িত্ববান ব্যক্তি </label>
            <span class="values">: ${scheme?.RESPONSIBLE_PERSON}</span>
        </div>
    </div>
    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">মহিলা কর্তৃক বাছাইকৃত ?</label>
            <span class="values">: ${scheme.IS_SELECTED_BY_WOMEN?"হ্যাঁ":"না"}" </span>
        </div>
    </div>
    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">অর্থ বছর </label>
            <span class="values">: ${scheme?.fiscalYear}</span>
             </div>
    </div>
    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">ইউ. পরিষদ  কর্তৃক অনুমোদিত?</label>
            <span class="values">: ${scheme.approvedByUp?"হ্যাঁ":"না"}</span>
             </div>
    </div>
    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">বি জি সি সি  কর্তৃক অনুমোদিত?</label>
            <span class="values">: ${scheme.endorsedByBgcc?"হ্যাঁ":"না"}</span>
          </div>
    </div>
    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">স্কীমের প্রকৃতি </label>
            <span class="values">:${scheme?.schemeCategory?.schemeCategoryName}</span>
            </div>
    </div>
    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">Indicative Ceiling </label>
            <span class="values">: ${scheme?.indicativeCeiling}</span>
              </div>
    </div>

    <div class="col-xs-6">
        <div class="">
           <label class="label_cl">শ্রমিক নিয়োজিত?</label>
            <span class="values">: ${scheme.IS_LABOUR_APPOINTED?"হ্যাঁ":"না"}</span>
        </div>
    </div>

    <div class="col-xs-12">
        <div class="col-xs-3">
            <fieldset class="buttons">
                <g:submitButton name="create" class="btn btn-primary btn-group-md save"
                                value="${message(code: 'default.button.create.label', default: 'Create New')}"/>
            </fieldset>
        </div>
        <div class="col-xs-3"></div>
        <div class="col-xs-3"></div>
    </div>
</div>