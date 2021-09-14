<?php

namespace App\Http\Livewire;

use App\Models\Coupon;
use Livewire\Component;
use Cart;
use Gloudemans\Shoppingcart\Facades\Cart as FacadesCart;

class CartComponent extends Component
{

   public $haveCouponCode; //ẩn hiện form nhập mã giảm giá+ kết hợp bên form view nhập mã
   public $couponCode;//hàm nhập code
   public $discount;  
   public $subtotalAfterDiscount;
   public $taxAfterDiscount;
   public $totalAfterDiscount;

      //----------------function tính toán  giảm giá------------------
      public function calculate()
      {
          if(session()->has('coupon'))
          {
              if(session()->get('coupon')['type']=='fixed')
              {
                  $this->discount=session()->get('count')['value'];
                  
              }
              else
              {
                  
              }
          }
      }
      //----------------function tính toán  giảm giá------------------


   //----------------function áp dụng mã giảm giá------------------
   public function applyCouponCode()
   {
       $coupon=Coupon::where('code',$this->couponCode)->where('cart_value','<=',FacadesCart::instance('cart')->subtotal())->first();
       if(!$coupon)
       {
           session()->flash('Thông báo','mã giảm giá không hợp lệ!');
           return;
       }
      //session truyền all giá trị giảm giá code,type,value,cart_value
       session()->put('coupon',[
          'code'=>$coupon->code,
          'type'=>$coupon->type,
          'value'=>$coupon->value,
          'cart_value'=>$coupon->cart_value
       ]);
    }
   //----------------function áp dụng mã giảm giá------------------





    //hàm tăng số lượng hàng khi kích chọn số lượng và trái tim
    public function increaseQuantity($rowId)
    {
        $product=Cart::instance('cart')->get($rowId);
        $qty=$product->qty+1;
        Cart::instance('cart')->update($rowId,$qty);
        $this->emitTo('cart-count-component','refreshComponent'); //cap nhat click cart lập tức
    }
    //hàm giảm số lượng hàng khi kích chọn số lượng và trái tim
    public function decreaseQuantity($rowId)
    {
        $product=Cart::instance('cart')->get($rowId);
        $qty=$product->qty-1;
        Cart::instance('cart')->update($rowId,$qty);
        $this->emitTo('cart-count-component','refreshComponent'); //cap nhat  cart lập tức

    }
    
    //hàm xóa từng sp và trái tim dạng session 
    public function destroy($rowId)
    {
        Cart::instance('cart')->remove($rowId);
        $this->emitTo('cart-count-component','refreshComponent'); //cap nhat  cart lập tức

        session()->flash('success_message','xóa thành công sản phẩm');
    }
    
    //hàm xóa all sp khỏi giỏ
    public function destroyAll()
    {
        Cart::instance('cart')->destroy();
        $this->emitTo('cart-count-component',['refreshComponent']); //cap nhat card  lập tức

    }

    public function render()
    {
        return view('livewire.cart-component')->layout('layouts.base');
    }
}
