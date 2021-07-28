<%-- 
    Document   : quick-view
    Created on : Jun 24, 2021, 10:57:57 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade quick-view-popup" id="content_quickview">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div id="ProductSection-product-template" class="product-template__container prstyle1">
                    <div class="product-single">
                        <!-- Start model close -->
                        <a href="javascript:void()" data-dismiss="modal" class="model-close-btn pull-right" title="close">
                            <span class="icon icon anm anm-times-l"></span>
                        </a>
                        <!-- End model close -->
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="product-details-img">
                                    <div class="pl-20">
                                        <img class="primary blur-up lazyloaded" id="qv-image" src="" alt=""/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                <div class="product-single__meta">
                                    <h2 id="qv-productName" class="product-single__title"></h2>
                                    <div class="prInfoRow">
                                        <div class="product-sku">Status :
                                            <span class="variant-sku" id="qv-status"></span>
                                        </div>
                                    </div>
                                    <p class="product-single__price product-single__price-product-template">
                                        <span class="visually-hidden">Regular price</span>
                                        <s id="ComparePrice-product-template">
                                            <span class="money" id="qv-old-price"></span>
                                        </s>
                                        <span class="product-price__price product-price__price-product-template product-price__sale product-price__sale--single">
                                            <span id="ProductPrice-product-template">
                                                <span id="qv-new-price" class="money"></span>
                                            </span>
                                        </span>
                                    </p>
                                    <div id="qv-des" class="product-single__description rte">
                                    </div>

                                    <form method="POST" action="" id="product_form_10508262282" accept-charset="UTF-8" class="product-form product-form-product-template hidedropdown" enctype="multipart/form-data">
                                        <div class="swatch clearfix swatch-0 option1" data-option-index="0">
                                            <div class="product-form__item">
                                                <div class="swatch-element color red available">
                                                    <input class="swatchInput" id="swatch-0-red" type="radio" name="option-0" value="Red">
                                                    <label class="swatchLbl color medium rectangle qv-label">
                                                        <img id="qv-img1" src="" alt="alt" onclick="changeImage(1)"/>
                                                    </label>
                                                </div>
                                                <div class="swatch-element color blue available">
                                                    <input class="swatchInput" id="swatch-0-blue" type="radio" name="option-0" value="Blue">
                                                    <label class="swatchLbl color medium rectangle qv-label">
                                                        <img id="qv-img2" src="" alt="alt"onclick="changeImage(2)"/>
                                                    </label>
                                                </div>
                                                <div class="swatch-element color green available">
                                                    <input class="swatchInput" id="swatch-0-green" type="radio" name="option-0" value="Green">
                                                    <label class="swatchLbl color medium rectangle qv-label">
                                                        <img id="qv-img3" src="" alt="alt"onclick="changeImage(3)"/>
                                                    </label>
                                                </div>

                                            </div>
                                        </div>
                                        <input type="hidden" name="p_id" id="qv-id" value="">
                                        <!-- Product Action -->
                                        <div class="product-action clearfix">
                                            <div class="product-form__item--quantity">
                                                <div class="wrapQtyBtn">
                                                    <div class="qtyField">
                                                        <a class="qtyBtn minus" href="javascript:void(0);">
                                                            <i class="fa anm anm-minus-r" aria-hidden="true"></i>
                                                        </a>
                                                        <input type="text" id="qv-quanty" name="quanty" value="1" class="product-form__input qty">
                                                        <a class="qtyBtn plus" href="javascript:void(0);">
                                                            <i class="fa anm anm-plus-r" aria-hidden="true"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-form__item--submit">
                                                <button onclick="add_cart()" class="btn product-form__cart-submit">
                                                    <span>Add to cart</span>
                                                </button>
                                            </div>
                                        </div>
                                        <!-- End Product Action -->
                                    </form>
                                    <div class="display-table shareRow">
                                        <div class="display-table-cell">
                                            <div class="wishlist-btn">
                                                <a class="wishlist add-to-wishlist" href="#" title="Add to Wishlist">
                                                    <i class="icon anm anm-heart-l" aria-hidden="true"></i>
                                                    <span>Add to Wishlist</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End-product-single-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
