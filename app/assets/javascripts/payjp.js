document.addEventListener('DOMContentLoaded', function(){

  let submit = document.getElementById("pay_submit");

  Payjp.setPublicKey('pk_test_81c30000fdd1dc3783434ea1');

    submit.addEventListener('click', function(e){
    e.preventDefault();

    let card = {
        number: document.getElementById("pay_number").value,
        cvc: document.getElementById("pay_cvc").value,
        exp_month: document.getElementById("pay_exp_month").value,
        exp_year: document.getElementById("pay_year").value,
      };

      Payjp.createToken(card, function(status, response){
        if (status === 200) {

          $(".number").removeAttr("name");
          $(".cvc").removeAttr("name");
          $(".exp_month").removeAttr("name")
          $(".exp_year").removeAttr("name")
          $("#charge-form").append(
            $(`<input type="hidden" name="payjpToken" value=${response.id}>`)
          );
          document.inputForm.submit();
          alert("登録しました")
        }else{
          alert("カード情報が正しくありません。");
        }
      });
    });
  });