<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class CartComponent extends Component
{
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
