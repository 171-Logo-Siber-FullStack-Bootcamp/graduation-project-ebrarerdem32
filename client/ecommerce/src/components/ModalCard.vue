<template>
<div>
      <div class="modal" id="myModal" >
            <div class="modal-dialog">
              <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                  <h4 class="modal-title">{{ parentmessage.name}}</h4>
                  <button type="button" class="close" data-dismiss="modal">
                    &times;
                  </button>
                </div>

                <!-- Modal body -->
                <div class="modal-body" >
                    <img v-bind:src="parentmessage.url" style="height:275px; width:450px">
                    <br>
                    {{ parentmessage.price}}
                </div>
                
                <!-- Modal footer -->
                <div class="modal-footer">
                  <button
                    type="button"
                    class="btn btn-secondary"
                    data-dismiss="modal"
                  >
                    Close
                  </button>
                </div>
              </div>
            </div>
          </div>
               </div>
</template>


<script>
export default {
name:"ModalCard",
 props: ['parentmessage'],


}
</script>

<style>

</style>