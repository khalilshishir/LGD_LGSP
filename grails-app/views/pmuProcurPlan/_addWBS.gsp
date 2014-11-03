<%--
  Created by IntelliJ IDEA.
  User: mmmanzil
  Date: 9/18/14
  Time: 5:07 PM
  To change this template use File | Settings | File Templates.
--%>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <form id="create-form" method="POST" >
               <div class="col-md-3">
                <g:hiddenField name="id" value="${pmuProcPlan?.id}" />
                Assign person: <input class="form-control" type="text" name="Assign_person" id="Assign_person" />
                Test details: <input class="form-control" type="text" name="Test_details" id="Test_details" />
               </div>
                <div class="col-md-3">

                Test name: <input class="form-control" type="text" name="Test_name" id="Test_name" />
                type: <input class="form-control" type="text" name="type" id="type" />
                    </div>

                <button class="btn btn-info" name="save" value="add" type="submit" />

            </form>
        </div>
    </div>

</div>