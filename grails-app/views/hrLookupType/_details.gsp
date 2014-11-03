<script type="text/javascript">
    var childCount = ${hrLookupTypeInstance?.hrlookups?.size()} + 0;
    $(document).ready(function() {
        <g:if test="${params.action == 'create'}">

        addChild();
        </g:if>
    });


    $('.delButton').live('click', function() {
        //find the parent div
        var prnt = $(this).parents(".detail-div");
        //find the deleted hidden input
        var delInput = prnt.find("input[id$=deleted]");
        delInput.attr('value','true');
        //hide the div
        prnt.hide();
    });

    function addChild() {
        var clone = $("#detail_clone").clone();
        var htmlId = 'hrlookups['+childCount+'].';

        clone.find("input[id$=id]")
                .attr('id',htmlId + 'id')
                .attr('name',htmlId + 'id');

        clone.find("input[id$=deleted]")
                .attr('id',htmlId + 'deleted')
                .attr('name',htmlId + 'deleted');

        clone.find("input[id$=new]")
                .attr('id',htmlId + 'new')
                .attr('name',htmlId + 'new')
                .attr('value', 'true');

        clone.find("input[id$=lookupValue]")
                .attr('id',htmlId + 'lookupValue')
                .attr('name',htmlId + 'lookupValue');

        clone.find("select[id$=isActive]").attr('id', htmlId + 'isActive').attr('name', htmlId + 'isActive');

        clone.attr('id', 'detail'+childCount);
        $("#detailList tbody:last").append(clone);
        clone.show();
        childCount++;

    }

</script>
<div align="center">
<table id="detailList" style="width: 50%;">
    <tr style="background-color: #0188D1; font-family: arial;font-size: 12px; font-weight: bold; color: white; height: 25px;">
        <th>Lookup Value</th>
        <th style="width: 20%;">Active Status</th>
    </tr>
    <g:render template='detail' model="['hrLookup':null,'i':'_clone','hidden':true]"/>
    <g:each var="hrLookup" in="${hrLookupList}" status="i">
        <g:render template='detail' model="['hrLookup':hrLookup,'i':i]"/>
    </g:each>
</table>
<input type="button" value="Add Detail" onclick="addChild();"  />
</div>