<div>
<br>
<div class="container">
<div class="row">
<div class="col-md-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="row">
                <div class="col-md-6">
                    Thêm mới mã giảm giá
                </div>
                <div class="col-md-6" style="padding-left: 35%;">
                    <a href="{{route('admin.coupons')}}" class="btn btn-success">TẤT CẢ MÃ</a>
                </div>
            </div>

        </div>
        <div class="panel-body">
            @if (Session::has('Thông báo'))
                <div class="alert alert-success" role="alert">{{Session::get('Thông báo')}}</div>
            @endif
            <form class="form-horizontal" wire:submit.prevent="storeCoupon">
                <div class="form-group">
                    <label class="col-md-4 control-label">MÃ GIẢM GIÁ</label>
                    <div class="col-md-4">
                        <input type="text" placeholder="magiamgia" class="form-control input-md" wire:model="code" >
                    @error('code')<p class="text-danger">{{$message}}</p>@enderror
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">Giảm giá theo</label>
                    <div class="col-md-4">
                    <select class="form-control"wire:model="type">
                        <option value="">Lựa chọn</option>
                        <option value="fixed">Fixed</option>
                        <option value="percent">Percent</option>
                        
                     </select>
                    @error('type')<p class="text-danger">{{$message}}</p>@enderror
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">COUPON VALUE</label>
                    <div class="col-md-4">
                        <input type="text" placeholder="coupon value" class="form-control input-md"wire:model="value">
                        @error('value')<p class="text-danger">{{$message}}</p>@enderror

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label">CART VALUE</label>
                    <div class="col-md-4">
                        <input type="text" placeholder="cart value" class="form-control input-md"wire:model="cart_value">
                        @error('cart_value')<p class="text-danger">{{$message}}</p>@enderror

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">
                        <button type="submit" class="btn btn-danger">THÊM MỚI</button>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>
</div>
</div>
</div>
