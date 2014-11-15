<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="sendMessageModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">�</button>
                <h4 class="modal-title">Compose Mail</h4>
            </div>
            <div class="modal-body">
				
				<!-- <div class="panel-body">
                     <form action="#" class="form-horizontal ">
                         <div class="form-group">
                             <div class="col-md-12">
                                 <textarea class="wysihtml5 form-control" rows="9"></textarea>
                             </div>
                         </div>
                     </form>
                 </div> -->
                 
                 
                  <section class="mail-box-info">
                    <header class="header">
                        <div class="compose-btn pull-right">
                            <button onclick="sendMessageToCollaboroateur_ajax();" class="btn btn-primary btn-sm"><i class="fa fa-check"></i> Send</button>
                            <button class="btn btn-sm btn-default"><i class="fa fa-times"></i> Discard</button>
                            <button class="btn btn-sm btn-default">Draft</button>
                        </div>
                        <div class="btn-toolbar">
                            <h4 class="pull-left" id="fullnameTo">
                                
                            </h4>
                        </div>

                    </header>

                    <section class="mail-list">
                        <div class="compose-mail">
                            <form role="form-horizontal" method="post" action="sendEmailToCollaborateur">
                            	<input type="hidden" id="idCollaborateur_sendMessage" name="id">
                                <div class="form-group">
                                    <label for="to" class="col-md-3">To:</label>
                                    <input type="text" tabindex="1" id="to" class="form-control" readonly="readonly">

                                    <div class="compose-options">
                                        <a onclick="$(this).hide(); $('#cc').parent().removeClass('hidden'); $('#cc').focus();" href="javascript:;">Cc</a>
                                        <a onclick="$(this).hide(); $('#bcc').parent().removeClass('hidden'); $('#bcc').focus();" href="javascript:;">Bcc</a>
                                    </div>
                                </div>

                                <div class="form-group hidden">
                                    <label for="cc" class="">Cc:</label>
                                    <input type="text" tabindex="2" id="cc" class="form-control">
                                </div>

                                <div class="form-group hidden">
                                    <label for="bcc" class="">Bcc:</label>
                                    <input type="text" tabindex="2" id="bcc" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="subject" class="col-md-3">Subject:</label>
                                    <input type="text" tabindex="1" id="subject" class="form-control" name="object">
                                </div>

                                <div class="compose-editor">
                                    <textarea class="wysihtml5 form-control" rows="9" name="msg" id="msg_"></textarea>
                                    <input type="file" class="default">
                                </div>
                                <hr/>
                                <!-- <div class="compose-btn">
                                    <button class="btn btn-primary btn-sm"><i class="fa fa-check"></i> Send</button>
                                    <button class="btn btn-sm btn-default"><i class="fa fa-times"></i> Discard</button>
                                    <button class="btn btn-sm btn-default">Draft</button>
                                </div> -->

                            </form>
                        </div>
                    </section>


                </section>
                
                
            </div>
        </div>
    </div>
</div>