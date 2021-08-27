<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class CartComponent extends Component
{
    //hàm tăng số lượng hàng khi kích chọn số lượng
    public function increaseQuantity($rowId)
    {
        $product=Cart::get($rowId);
        $qty=$product->qty+1;
        Cart::update($rowId,$qty);
    }
    //hàm giảm số lượng hàng khi kích chọn số lượng
    public function decreaseQuantity($rowId)
    {
        $product=Cart::get($rowId);
        $qty=$product->qty-1;
        Cart::update($rowId,$qty);
    }
    
    //hàm xóa từng sp dạng session
    public function destroy($rowId)
    {
        Cart::remove($rowId);
        session()->flash('success_message','xóa thành công sản phẩm');
    }
    
    //hàm xóa all sp khỏi giỏ
    public function destroyAll()
    {
        Cart::destroy();
    }

    public function render()
    {
        return view('livewire.cart-component')->layout('layouts.base');
    }
}
