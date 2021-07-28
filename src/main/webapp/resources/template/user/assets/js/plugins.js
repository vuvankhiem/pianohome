/*********************************************************************************
	Template Name: Belle - Multipurpose eCommerce Bootstrap4 Template
	Description: A perfect template to build beautiful and unique Glasses websites. It comes with nice and clean design.
	Version: 1.0

**********************************************************************************/

/**************************************************************
 ***************************************************************/


/*************************************
	Avoid Console
**************************************/

// Avoid `console` errors in browsers that lack a console.
(function() {
  var method;
  var noop = function() {};
  var methods = [
    'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
    'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
    'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
    'timeline', 'timelineEnd', 'timeStamp', 'trace', 'warn'
  ];
  var length = methods.length;
  var console = (window.console = window.console || {});

  while (length--) {
    method = methods[length];

    // Only stub undefined methods.
    if (!console[method]) {
      console[method] = noop;
    }
  }
}());

// Place any jQuery/helper plugins in here.

/*! Magnific Popup - v1.1.0 - 2016-02-20
 * http://dimsemenov.com/plugins/magnific-popup/
 * Copyright (c) 2016 Dmitry Semenov; */
! function(a) {
  "function" == typeof define && define.amd ? define(["jquery"], a) : a("object" == typeof exports ? require("jquery") : window.jQuery || window.Zepto)
}(function(a) {
  var b, c, d, e, f, g, h = "Close",
    i = "BeforeClose",
    j = "AfterClose",
    k = "BeforeAppend",
    l = "MarkupParse",
    m = "Open",
    n = "Change",
    o = "mfp",
    p = "." + o,
    q = "mfp-ready",
    r = "mfp-removing",
    s = "mfp-prevent-close",
    t = function() {},
    u = !!window.jQuery,
    v = a(window),
    w = function(a, c) {
      b.ev.on(o + a + p, c)
    },
    x = function(b, c, d, e) {
      var f = document.createElement("div");
      return f.className = "mfp-" + b, d && (f.innerHTML = d), e ? c && c.appendChild(f) : (f = a(f), c && f.appendTo(c)), f
    },
    y = function(c, d) {
      b.ev.triggerHandler(o + c, d), b.st.callbacks && (c = c.charAt(0).toLowerCase() + c.slice(1), b.st.callbacks[c] && b.st.callbacks[c].apply(b, a.isArray(d) ? d : [d]))
    },
    z = function(c) {
      return c === g && b.currTemplate.closeBtn || (b.currTemplate.closeBtn = a(b.st.closeMarkup.replace("%title%", b.st.tClose)), g = c), b.currTemplate.closeBtn
    },
    A = function() {
      a.magnificPopup.instance || (b = new t, b.init(), a.magnificPopup.instance = b)
    },
    B = function() {
      var a = document.createElement("p").style,
        b = ["ms", "O", "Moz", "Webkit"];
      if (void 0 !== a.transition) return !0;
      for (; b.length;)
        if (b.pop() + "Transition" in a) return !0;
      return !1
    };
  t.prototype = {
    constructor: t,
    init: function() {
      var c = navigator.appVersion;
      b.isLowIE = b.isIE8 = document.all && !document.addEventListener, b.isAndroid = /android/gi.test(c), b.isIOS = /iphone|ipad|ipod/gi.test(c), b.supportsTransition = B(), b.probablyMobile = b.isAndroid || b.isIOS || /(Opera Mini)|Kindle|webOS|BlackBerry|(Opera Mobi)|(Windows Phone)|IEMobile/i.test(navigator.userAgent), d = a(document), b.popupsCache = {}
    },
    open: function(c) {
      var e;
      if (c.isObj === !1) {
        b.items = c.items.toArray(), b.index = 0;
        var g, h = c.items;
        for (e = 0; e < h.length; e++)
          if (g = h[e], g.parsed && (g = g.el[0]), g === c.el[0]) {
            b.index = e;
            break
          }
      } else b.items = a.isArray(c.items) ? c.items : [c.items], b.index = c.index || 0;
      if (b.isOpen) return void b.updateItemHTML();
      b.types = [], f = "", c.mainEl && c.mainEl.length ? b.ev = c.mainEl.eq(0) : b.ev = d, c.key ? (b.popupsCache[c.key] || (b.popupsCache[c.key] = {}), b.currTemplate = b.popupsCache[c.key]) : b.currTemplate = {}, b.st = a.extend(!0, {}, a.magnificPopup.defaults, c), b.fixedContentPos = "auto" === b.st.fixedContentPos ? !b.probablyMobile : b.st.fixedContentPos, b.st.modal && (b.st.closeOnContentClick = !1, b.st.closeOnBgClick = !1, b.st.showCloseBtn = !1, b.st.enableEscapeKey = !1), b.bgOverlay || (b.bgOverlay = x("bg").on("click" + p, function() {
        b.close()
      }), b.wrap = x("wrap").attr("tabindex", -1).on("click" + p, function(a) {
        b._checkIfClose(a.target) && b.close()
      }), b.container = x("container", b.wrap)), b.contentContainer = x("content"), b.st.preloader && (b.preloader = x("preloader", b.container, b.st.tLoading));
      var i = a.magnificPopup.modules;
      for (e = 0; e < i.length; e++) {
        var j = i[e];
        j = j.charAt(0).toUpperCase() + j.slice(1), b["init" + j].call(b)
      }
      y("BeforeOpen"), b.st.showCloseBtn && (b.st.closeBtnInside ? (w(l, function(a, b, c, d) {
        c.close_replaceWith = z(d.type)
      }), f += " mfp-close-btn-in") : b.wrap.append(z())), b.st.alignTop && (f += " mfp-align-top"), b.fixedContentPos ? b.wrap.css({
        overflow: b.st.overflowY,
        overflowX: "hidden",
        overflowY: b.st.overflowY
      }) : b.wrap.css({
        top: v.scrollTop(),
        position: "absolute"
      }), (b.st.fixedBgPos === !1 || "auto" === b.st.fixedBgPos && !b.fixedContentPos) && b.bgOverlay.css({
        height: d.height(),
        position: "absolute"
      }), b.st.enableEscapeKey && d.on("keyup" + p, function(a) {
        27 === a.keyCode && b.close()
      }), v.on("resize" + p, function() {
        b.updateSize()
      }), b.st.closeOnContentClick || (f += " mfp-auto-cursor"), f && b.wrap.addClass(f);
      var k = b.wH = v.height(),
        n = {};
      if (b.fixedContentPos && b._hasScrollBar(k)) {
        var o = b._getScrollbarSize();
        o && (n.marginRight = o)
      }
      b.fixedContentPos && (b.isIE7 ? a("body, html").css("overflow", "hidden") : n.overflow = "hidden");
      var r = b.st.mainClass;
      return b.isIE7 && (r += " mfp-ie7"), r && b._addClassToMFP(r), b.updateItemHTML(), y("BuildControls"), a("html").css(n), b.bgOverlay.add(b.wrap).prependTo(b.st.prependTo || a(document.body)), b._lastFocusedEl = document.activeElement, setTimeout(function() {
        b.content ? (b._addClassToMFP(q), b._setFocus()) : b.bgOverlay.addClass(q), d.on("focusin" + p, b._onFocusIn)
      }, 16), b.isOpen = !0, b.updateSize(k), y(m), c
    },
    close: function() {
      b.isOpen && (y(i), b.isOpen = !1, b.st.removalDelay && !b.isLowIE && b.supportsTransition ? (b._addClassToMFP(r), setTimeout(function() {
        b._close()
      }, b.st.removalDelay)) : b._close())
    },
    _close: function() {
      y(h);
      var c = r + " " + q + " ";
      if (b.bgOverlay.detach(), b.wrap.detach(), b.container.empty(), b.st.mainClass && (c += b.st.mainClass + " "), b._removeClassFromMFP(c), b.fixedContentPos) {
        var e = {
          marginRight: ""
        };
        b.isIE7 ? a("body, html").css("overflow", "") : e.overflow = "", a("html").css(e)
      }
      d.off("keyup" + p + " focusin" + p), b.ev.off(p), b.wrap.attr("class", "mfp-wrap").removeAttr("style"), b.bgOverlay.attr("class", "mfp-bg"), b.container.attr("class", "mfp-container"), !b.st.showCloseBtn || b.st.closeBtnInside && b.currTemplate[b.currItem.type] !== !0 || b.currTemplate.closeBtn && b.currTemplate.closeBtn.detach(), b.st.autoFocusLast && b._lastFocusedEl && a(b._lastFocusedEl).focus(), b.currItem = null, b.content = null, b.currTemplate = null, b.prevHeight = 0, y(j)
    },
    updateSize: function(a) {
      if (b.isIOS) {
        var c = document.documentElement.clientWidth / window.innerWidth,
          d = window.innerHeight * c;
        b.wrap.css("height", d), b.wH = d
      } else b.wH = a || v.height();
      b.fixedContentPos || b.wrap.css("height", b.wH), y("Resize")
    },
    updateItemHTML: function() {
      var c = b.items[b.index];
      b.contentContainer.detach(), b.content && b.content.detach(), c.parsed || (c = b.parseEl(b.index));
      var d = c.type;
      if (y("BeforeChange", [b.currItem ? b.currItem.type : "", d]), b.currItem = c, !b.currTemplate[d]) {
        var f = b.st[d] ? b.st[d].markup : !1;
        y("FirstMarkupParse", f), f ? b.currTemplate[d] = a(f) : b.currTemplate[d] = !0
      }
      e && e !== c.type && b.container.removeClass("mfp-" + e + "-holder");
      var g = b["get" + d.charAt(0).toUpperCase() + d.slice(1)](c, b.currTemplate[d]);
      b.appendContent(g, d), c.preloaded = !0, y(n, c), e = c.type, b.container.prepend(b.contentContainer), y("AfterChange")
    },
    appendContent: function(a, c) {
      b.content = a, a ? b.st.showCloseBtn && b.st.closeBtnInside && b.currTemplate[c] === !0 ? b.content.find(".mfp-close").length || b.content.append(z()) : b.content = a : b.content = "", y(k), b.container.addClass("mfp-" + c + "-holder"), b.contentContainer.append(b.content)
    },
    parseEl: function(c) {
      var d, e = b.items[c];
      if (e.tagName ? e = {
          el: a(e)
        } : (d = e.type, e = {
          data: e,
          src: e.src
        }), e.el) {
        for (var f = b.types, g = 0; g < f.length; g++)
          if (e.el.hasClass("mfp-" + f[g])) {
            d = f[g];
            break
          } e.src = e.el.attr("data-mfp-src"), e.src || (e.src = e.el.attr("href"))
      }
      return e.type = d || b.st.type || "inline", e.index = c, e.parsed = !0, b.items[c] = e, y("ElementParse", e), b.items[c]
    },
    addGroup: function(a, c) {
      var d = function(d) {
        d.mfpEl = this, b._openClick(d, a, c)
      };
      c || (c = {});
      var e = "click.magnificPopup";
      c.mainEl = a, c.items ? (c.isObj = !0, a.off(e).on(e, d)) : (c.isObj = !1, c.delegate ? a.off(e).on(e, c.delegate, d) : (c.items = a, a.off(e).on(e, d)))
    },
    _openClick: function(c, d, e) {
      var f = void 0 !== e.midClick ? e.midClick : a.magnificPopup.defaults.midClick;
      if (f || !(2 === c.which || c.ctrlKey || c.metaKey || c.altKey || c.shiftKey)) {
        var g = void 0 !== e.disableOn ? e.disableOn : a.magnificPopup.defaults.disableOn;
        if (g)
          if (a.isFunction(g)) {
            if (!g.call(b)) return !0
          } else if (v.width() < g) return !0;
        c.type && (c.preventDefault(), b.isOpen && c.stopPropagation()), e.el = a(c.mfpEl), e.delegate && (e.items = d.find(e.delegate)), b.open(e)
      }
    },
    updateStatus: function(a, d) {
      if (b.preloader) {
        c !== a && b.container.removeClass("mfp-s-" + c), d || "loading" !== a || (d = b.st.tLoading);
        var e = {
          status: a,
          text: d
        };
        y("UpdateStatus", e), a = e.status, d = e.text, b.preloader.html(d), b.preloader.find("a").on("click", function(a) {
          a.stopImmediatePropagation()
        }), b.container.addClass("mfp-s-" + a), c = a
      }
    },
    _checkIfClose: function(c) {
      if (!a(c).hasClass(s)) {
        var d = b.st.closeOnContentClick,
          e = b.st.closeOnBgClick;
        if (d && e) return !0;
        if (!b.content || a(c).hasClass("mfp-close") || b.preloader && c === b.preloader[0]) return !0;
        if (c === b.content[0] || a.contains(b.content[0], c)) {
          if (d) return !0
        } else if (e && a.contains(document, c)) return !0;
        return !1
      }
    },
    _addClassToMFP: function(a) {
      b.bgOverlay.addClass(a), b.wrap.addClass(a)
    },
    _removeClassFromMFP: function(a) {
      this.bgOverlay.removeClass(a), b.wrap.removeClass(a)
    },
    _hasScrollBar: function(a) {
      return (b.isIE7 ? d.height() : document.body.scrollHeight) > (a || v.height())
    },
    _setFocus: function() {
      (b.st.focus ? b.content.find(b.st.focus).eq(0) : b.wrap).focus()
    },
    _onFocusIn: function(c) {
      return c.target === b.wrap[0] || a.contains(b.wrap[0], c.target) ? void 0 : (b._setFocus(), !1)
    },
    _parseMarkup: function(b, c, d) {
      var e;
      d.data && (c = a.extend(d.data, c)), y(l, [b, c, d]), a.each(c, function(c, d) {
        if (void 0 === d || d === !1) return !0;
        if (e = c.split("_"), e.length > 1) {
          var f = b.find(p + "-" + e[0]);
          if (f.length > 0) {
            var g = e[1];
            "replaceWith" === g ? f[0] !== d[0] && f.replaceWith(d) : "img" === g ? f.is("img") ? f.attr("src", d) : f.replaceWith(a("<img>").attr("src", d).attr("class", f.attr("class"))) : f.attr(e[1], d)
          }
        } else b.find(p + "-" + c).html(d)
      })
    },
    _getScrollbarSize: function() {
      if (void 0 === b.scrollbarSize) {
        var a = document.createElement("div");
        a.style.cssText = "width: 99px; height: 99px; overflow: scroll; position: absolute; top: -9999px;", document.body.appendChild(a), b.scrollbarSize = a.offsetWidth - a.clientWidth, document.body.removeChild(a)
      }
      return b.scrollbarSize
    }
  }, a.magnificPopup = {
    instance: null,
    proto: t.prototype,
    modules: [],
    open: function(b, c) {
      return A(), b = b ? a.extend(!0, {}, b) : {}, b.isObj = !0, b.index = c || 0, this.instance.open(b)
    },
    close: function() {
      return a.magnificPopup.instance && a.magnificPopup.instance.close()
    },
    registerModule: function(b, c) {
      c.options && (a.magnificPopup.defaults[b] = c.options), a.extend(this.proto, c.proto), this.modules.push(b)
    },
    defaults: {
      disableOn: 0,
      key: null,
      midClick: !1,
      mainClass: "",
      preloader: !0,
      focus: "",
      closeOnContentClick: !1,
      closeOnBgClick: !0,
      closeBtnInside: !0,
      showCloseBtn: !0,
      enableEscapeKey: !0,
      modal: !1,
      alignTop: !1,
      removalDelay: 0,
      prependTo: null,
      fixedContentPos: "auto",
      fixedBgPos: "auto",
      overflowY: "auto",
      closeMarkup: '<button title="%title%" type="button" class="mfp-close">&#215;</button>',
      tClose: "Close (Esc)",
      tLoading: "Loading...",
      autoFocusLast: !0
    }
  }, a.fn.magnificPopup = function(c) {
    A();
    var d = a(this);
    if ("string" == typeof c)
      if ("open" === c) {
        var e, f = u ? d.data("magnificPopup") : d[0].magnificPopup,
          g = parseInt(arguments[1], 10) || 0;
        f.items ? e = f.items[g] : (e = d, f.delegate && (e = e.find(f.delegate)), e = e.eq(g)), b._openClick({
          mfpEl: e
        }, d, f)
      } else b.isOpen && b[c].apply(b, Array.prototype.slice.call(arguments, 1));
    else c = a.extend(!0, {}, c), u ? d.data("magnificPopup", c) : d[0].magnificPopup = c, b.addGroup(d, c);
    return d
  };
  var C, D, E, F = "inline",
    G = function() {
      E && (D.after(E.addClass(C)).detach(), E = null)
    };
  a.magnificPopup.registerModule(F, {
    options: {
      hiddenClass: "hide",
      markup: "",
      tNotFound: "Content not found"
    },
    proto: {
      initInline: function() {
        b.types.push(F), w(h + "." + F, function() {
          G()
        })
      },
      getInline: function(c, d) {
        if (G(), c.src) {
          var e = b.st.inline,
            f = a(c.src);
          if (f.length) {
            var g = f[0].parentNode;
            g && g.tagName && (D || (C = e.hiddenClass, D = x(C), C = "mfp-" + C), E = f.after(D).detach().removeClass(C)), b.updateStatus("ready")
          } else b.updateStatus("error", e.tNotFound), f = a("<div>");
          return c.inlineElement = f, f
        }
        return b.updateStatus("ready"), b._parseMarkup(d, {}, c), d
      }
    }
  });
  var H, I = "ajax",
    J = function() {
      H && a(document.body).removeClass(H)
    },
    K = function() {
      J(), b.req && b.req.abort()
    };
  a.magnificPopup.registerModule(I, {
    options: {
      settings: null,
      cursor: "mfp-ajax-cur",
      tError: '<a href="%url%">The content</a> could not be loaded.'
    },
    proto: {
      initAjax: function() {
        b.types.push(I), H = b.st.ajax.cursor, w(h + "." + I, K), w("BeforeChange." + I, K)
      },
      getAjax: function(c) {
        H && a(document.body).addClass(H), b.updateStatus("loading");
        var d = a.extend({
          url: c.src,
          success: function(d, e, f) {
            var g = {
              data: d,
              xhr: f
            };
            y("ParseAjax", g), b.appendContent(a(g.data), I), c.finished = !0, J(), b._setFocus(), setTimeout(function() {
              b.wrap.addClass(q)
            }, 16), b.updateStatus("ready"), y("AjaxContentAdded")
          },
          error: function() {
            J(), c.finished = c.loadError = !0, b.updateStatus("error", b.st.ajax.tError.replace("%url%", c.src))
          }
        }, b.st.ajax.settings);
        return b.req = a.ajax(d), ""
      }
    }
  });
  var L, M = function(c) {
    if (c.data && void 0 !== c.data.title) return c.data.title;
    var d = b.st.image.titleSrc;
    if (d) {
      if (a.isFunction(d)) return d.call(b, c);
      if (c.el) return c.el.attr(d) || ""
    }
    return ""
  };
  a.magnificPopup.registerModule("image", {
    options: {
      markup: '<div class="mfp-figure"><div class="mfp-close"></div><figure><div class="mfp-img"></div><figcaption><div class="mfp-bottom-bar"><div class="mfp-title"></div><div class="mfp-counter"></div></div></figcaption></figure></div>',
      cursor: "mfp-zoom-out-cur",
      titleSrc: "title",
      verticalFit: !0,
      tError: '<a href="%url%">The image</a> could not be loaded.'
    },
    proto: {
      initImage: function() {
        var c = b.st.image,
          d = ".image";
        b.types.push("image"), w(m + d, function() {
          "image" === b.currItem.type && c.cursor && a(document.body).addClass(c.cursor)
        }), w(h + d, function() {
          c.cursor && a(document.body).removeClass(c.cursor), v.off("resize" + p)
        }), w("Resize" + d, b.resizeImage), b.isLowIE && w("AfterChange", b.resizeImage)
      },
      resizeImage: function() {
        var a = b.currItem;
        if (a && a.img && b.st.image.verticalFit) {
          var c = 0;
          b.isLowIE && (c = parseInt(a.img.css("padding-top"), 10) + parseInt(a.img.css("padding-bottom"), 10)), a.img.css("max-height", b.wH - c)
        }
      },
      _onImageHasSize: function(a) {
        a.img && (a.hasSize = !0, L && clearInterval(L), a.isCheckingImgSize = !1, y("ImageHasSize", a), a.imgHidden && (b.content && b.content.removeClass("mfp-loading"), a.imgHidden = !1))
      },
      findImageSize: function(a) {
        var c = 0,
          d = a.img[0],
          e = function(f) {
            L && clearInterval(L), L = setInterval(function() {
              return d.naturalWidth > 0 ? void b._onImageHasSize(a) : (c > 200 && clearInterval(L), c++, void(3 === c ? e(10) : 40 === c ? e(50) : 100 === c && e(500)))
            }, f)
          };
        e(1)
      },
      getImage: function(c, d) {
        var e = 0,
          f = function() {
            c && (c.img[0].complete ? (c.img.off(".mfploader"), c === b.currItem && (b._onImageHasSize(c), b.updateStatus("ready")), c.hasSize = !0, c.loaded = !0, y("ImageLoadComplete")) : (e++, 200 > e ? setTimeout(f, 100) : g()))
          },
          g = function() {
            c && (c.img.off(".mfploader"), c === b.currItem && (b._onImageHasSize(c), b.updateStatus("error", h.tError.replace("%url%", c.src))), c.hasSize = !0, c.loaded = !0, c.loadError = !0)
          },
          h = b.st.image,
          i = d.find(".mfp-img");
        if (i.length) {
          var j = document.createElement("img");
          j.className = "mfp-img", c.el && c.el.find("img").length && (j.alt = c.el.find("img").attr("alt")), c.img = a(j).on("load.mfploader", f).on("error.mfploader", g), j.src = c.src, i.is("img") && (c.img = c.img.clone()), j = c.img[0], j.naturalWidth > 0 ? c.hasSize = !0 : j.width || (c.hasSize = !1)
        }
        return b._parseMarkup(d, {
          title: M(c),
          img_replaceWith: c.img
        }, c), b.resizeImage(), c.hasSize ? (L && clearInterval(L), c.loadError ? (d.addClass("mfp-loading"), b.updateStatus("error", h.tError.replace("%url%", c.src))) : (d.removeClass("mfp-loading"), b.updateStatus("ready")), d) : (b.updateStatus("loading"), c.loading = !0, c.hasSize || (c.imgHidden = !0, d.addClass("mfp-loading"), b.findImageSize(c)), d)
      }
    }
  });
  var N, O = function() {
    return void 0 === N && (N = void 0 !== document.createElement("p").style.MozTransform), N
  };
  a.magnificPopup.registerModule("zoom", {
    options: {
      enabled: !1,
      easing: "ease-in-out",
      duration: 300,
      opener: function(a) {
        return a.is("img") ? a : a.find("img")
      }
    },
    proto: {
      initZoom: function() {
        var a, c = b.st.zoom,
          d = ".zoom";
        if (c.enabled && b.supportsTransition) {
          var e, f, g = c.duration,
            j = function(a) {
              var b = a.clone().removeAttr("style").removeAttr("class").addClass("mfp-animated-image"),
                d = "all " + c.duration / 1e3 + "s " + c.easing,
                e = {
                  position: "fixed",
                  zIndex: 9999,
                  left: 0,
                  top: 0,
                  "-webkit-backface-visibility": "hidden"
                },
                f = "transition";
              return e["-webkit-" + f] = e["-moz-" + f] = e["-o-" + f] = e[f] = d, b.css(e), b
            },
            k = function() {
              b.content.css("visibility", "visible")
            };
          w("BuildControls" + d, function() {
            if (b._allowZoom()) {
              if (clearTimeout(e), b.content.css("visibility", "hidden"), a = b._getItemToZoom(), !a) return void k();
              f = j(a), f.css(b._getOffset()), b.wrap.append(f), e = setTimeout(function() {
                f.css(b._getOffset(!0)), e = setTimeout(function() {
                  k(), setTimeout(function() {
                    f.remove(), a = f = null, y("ZoomAnimationEnded")
                  }, 16)
                }, g)
              }, 16)
            }
          }), w(i + d, function() {
            if (b._allowZoom()) {
              if (clearTimeout(e), b.st.removalDelay = g, !a) {
                if (a = b._getItemToZoom(), !a) return;
                f = j(a)
              }
              f.css(b._getOffset(!0)), b.wrap.append(f), b.content.css("visibility", "hidden"), setTimeout(function() {
                f.css(b._getOffset())
              }, 16)
            }
          }), w(h + d, function() {
            b._allowZoom() && (k(), f && f.remove(), a = null)
          })
        }
      },
      _allowZoom: function() {
        return "image" === b.currItem.type
      },
      _getItemToZoom: function() {
        return b.currItem.hasSize ? b.currItem.img : !1
      },
      _getOffset: function(c) {
        var d;
        d = c ? b.currItem.img : b.st.zoom.opener(b.currItem.el || b.currItem);
        var e = d.offset(),
          f = parseInt(d.css("padding-top"), 10),
          g = parseInt(d.css("padding-bottom"), 10);
        e.top -= a(window).scrollTop() - f;
        var h = {
          width: d.width(),
          height: (u ? d.innerHeight() : d[0].offsetHeight) - g - f
        };
        return O() ? h["-moz-transform"] = h.transform = "translate(" + e.left + "px," + e.top + "px)" : (h.left = e.left, h.top = e.top), h
      }
    }
  });
  var P = "iframe",
    Q = "//about:blank",
    R = function(a) {
      if (b.currTemplate[P]) {
        var c = b.currTemplate[P].find("iframe");
        c.length && (a || (c[0].src = Q), b.isIE8 && c.css("display", a ? "block" : "none"))
      }
    };
  a.magnificPopup.registerModule(P, {
    options: {
      markup: '<div class="mfp-iframe-scaler"><div class="mfp-close"></div><iframe class="mfp-iframe" src="//about:blank" frameborder="0" allowfullscreen></iframe></div>',
      srcAction: "iframe_src",
      patterns: {
        youtube: {
          index: "youtube.com",
          id: "v=",
          src: "//www.youtube.com/embed/%id%?autoplay=1"
        },
        vimeo: {
          index: "vimeo.com/",
          id: "/",
          src: "//player.vimeo.com/video/%id%?autoplay=1"
        },
        gmaps: {
          index: "//maps.google.",
          src: "%id%&output=embed"
        }
      }
    },
    proto: {
      initIframe: function() {
        b.types.push(P), w("BeforeChange", function(a, b, c) {
          b !== c && (b === P ? R() : c === P && R(!0))
        }), w(h + "." + P, function() {
          R()
        })
      },
      getIframe: function(c, d) {
        var e = c.src,
          f = b.st.iframe;
        a.each(f.patterns, function() {
          return e.indexOf(this.index) > -1 ? (this.id && (e = "string" == typeof this.id ? e.substr(e.lastIndexOf(this.id) + this.id.length, e.length) : this.id.call(this, e)), e = this.src.replace("%id%", e), !1) : void 0
        });
        var g = {};
        return f.srcAction && (g[f.srcAction] = e), b._parseMarkup(d, g, c), b.updateStatus("ready"), d
      }
    }
  });
  var S = function(a) {
      var c = b.items.length;
      return a > c - 1 ? a - c : 0 > a ? c + a : a
    },
    T = function(a, b, c) {
      return a.replace(/%curr%/gi, b + 1).replace(/%total%/gi, c)
    };
  a.magnificPopup.registerModule("gallery", {
    options: {
      enabled: !1,
      arrowMarkup: '<button title="%title%" type="button" class="mfp-arrow mfp-arrow-%dir%"></button>',
      preload: [0, 2],
      navigateByImgClick: !0,
      arrows: !0,
      tPrev: "Previous (Left arrow key)",
      tNext: "Next (Right arrow key)",
      tCounter: "%curr% of %total%"
    },
    proto: {
      initGallery: function() {
        var c = b.st.gallery,
          e = ".mfp-gallery";
        return b.direction = !0, c && c.enabled ? (f += " mfp-gallery", w(m + e, function() {
          c.navigateByImgClick && b.wrap.on("click" + e, ".mfp-img", function() {
            return b.items.length > 1 ? (b.next(), !1) : void 0
          }), d.on("keydown" + e, function(a) {
            37 === a.keyCode ? b.prev() : 39 === a.keyCode && b.next()
          })
        }), w("UpdateStatus" + e, function(a, c) {
          c.text && (c.text = T(c.text, b.currItem.index, b.items.length))
        }), w(l + e, function(a, d, e, f) {
          var g = b.items.length;
          e.counter = g > 1 ? T(c.tCounter, f.index, g) : ""
        }), w("BuildControls" + e, function() {
          if (b.items.length > 1 && c.arrows && !b.arrowLeft) {
            var d = c.arrowMarkup,
              e = b.arrowLeft = a(d.replace(/%title%/gi, c.tPrev).replace(/%dir%/gi, "left")).addClass(s),
              f = b.arrowRight = a(d.replace(/%title%/gi, c.tNext).replace(/%dir%/gi, "right")).addClass(s);
            e.click(function() {
              b.prev()
            }), f.click(function() {
              b.next()
            }), b.container.append(e.add(f))
          }
        }), w(n + e, function() {
          b._preloadTimeout && clearTimeout(b._preloadTimeout), b._preloadTimeout = setTimeout(function() {
            b.preloadNearbyImages(), b._preloadTimeout = null
          }, 16)
        }), void w(h + e, function() {
          d.off(e), b.wrap.off("click" + e), b.arrowRight = b.arrowLeft = null
        })) : !1
      },
      next: function() {
        b.direction = !0, b.index = S(b.index + 1), b.updateItemHTML()
      },
      prev: function() {
        b.direction = !1, b.index = S(b.index - 1), b.updateItemHTML()
      },
      goTo: function(a) {
        b.direction = a >= b.index, b.index = a, b.updateItemHTML()
      },
      preloadNearbyImages: function() {
        var a, c = b.st.gallery.preload,
          d = Math.min(c[0], b.items.length),
          e = Math.min(c[1], b.items.length);
        for (a = 1; a <= (b.direction ? e : d); a++) b._preloadItem(b.index + a);
        for (a = 1; a <= (b.direction ? d : e); a++) b._preloadItem(b.index - a)
      },
      _preloadItem: function(c) {
        if (c = S(c), !b.items[c].preloaded) {
          var d = b.items[c];
          d.parsed || (d = b.parseEl(c)), y("LazyLoad", d), "image" === d.type && (d.img = a('<img class="mfp-img" />').on("load.mfploader", function() {
            d.hasSize = !0
          }).on("error.mfploader", function() {
            d.hasSize = !0, d.loadError = !0, y("LazyLoadError", d)
          }).attr("src", d.src)), d.preloaded = !0
        }
      }
    }
  });
  var U = "retina";
  a.magnificPopup.registerModule(U, {
    options: {
      replaceSrc: function(a) {
        return a.src.replace(/\.\w+$/, function(a) {
          return "@2x" + a
        })
      },
      ratio: 1
    },
    proto: {
      initRetina: function() {
        if (window.devicePixelRatio > 1) {
          var a = b.st.retina,
            c = a.ratio;
          c = isNaN(c) ? c() : c, c > 1 && (w("ImageHasSize." + U, function(a, b) {
            b.img.css({
              "max-width": b.img[0].naturalWidth / c,
              width: "100%"
            })
          }), w("ElementParse." + U, function(b, d) {
            d.src = a.replaceSrc(d, c)
          }))
        }
      }
    }
  }), A()
});


/*************************************
	Slick Slider
**************************************/

/*
  Version: 1.9.0
  Author: Ken Wheeler
  Website: http://kenwheeler.github.io
  Docs: http://kenwheeler.github.io/slick
  Repo: http://github.com/kenwheeler/slick
  Issues: http://github.com/kenwheeler/slick/issues
 */
(function(i) {
  "use strict";
  "function" == typeof define && define.amd ? define(["jquery"], i) : "undefined" != typeof exports ? module.exports = i(require("jquery")) : i(jQuery)
})(function(i) {
  "use strict";
  var e = window.Slick || {};
  e = function() {
    function e(e, o) {
      var s, n = this;
      n.defaults = {
        accessibility: !0,
        adaptiveHeight: !1,
        appendArrows: i(e),
        appendDots: i(e),
        arrows: !0,
        asNavFor: null,
        prevArrow: '<button class="slick-prev" aria-label="Previous" type="button">Previous</button>',
        nextArrow: '<button class="slick-next" aria-label="Next" type="button">Next</button>',
        autoplay: !1,
        autoplaySpeed: 3e3,
        centerMode: !1,
        centerPadding: "50px",
        cssEase: "ease",
        customPaging: function(e, t) {
          return i('<button type="button" />').text(t + 1)
        },
        dots: !1,
        dotsClass: "slick-dots",
        draggable: !0,
        easing: "linear",
        edgeFriction: .35,
        fade: !1,
        focusOnSelect: !1,
        focusOnChange: !1,
        infinite: !0,
        initialSlide: 0,
        lazyLoad: "ondemand",
        mobileFirst: !1,
        pauseOnHover: !0,
        pauseOnFocus: !0,
        pauseOnDotsHover: !1,
        respondTo: "window",
        responsive: null,
        rows: 1,
        rtl: !1,
        slide: "",
        slidesPerRow: 1,
        slidesToShow: 1,
        slidesToScroll: 1,
        speed: 500,
        swipe: !0,
        swipeToSlide: !1,
        touchMove: !0,
        touchThreshold: 5,
        useCSS: !0,
        useTransform: !0,
        variableWidth: !1,
        vertical: !1,
        verticalSwiping: !1,
        waitForAnimate: !0,
        zIndex: 1e3
      }, n.initials = {
        animating: !1,
        dragging: !1,
        autoPlayTimer: null,
        currentDirection: 0,
        currentLeft: null,
        currentSlide: 0,
        direction: 1,
        $dots: null,
        listWidth: null,
        listHeight: null,
        loadIndex: 0,
        $nextArrow: null,
        $prevArrow: null,
        scrolling: !1,
        slideCount: null,
        slideWidth: null,
        $slideTrack: null,
        $slides: null,
        sliding: !1,
        slideOffset: 0,
        swipeLeft: null,
        swiping: !1,
        $list: null,
        touchObject: {},
        transformsEnabled: !1,
        unslicked: !1
      }, i.extend(n, n.initials), n.activeBreakpoint = null, n.animType = null, n.animProp = null, n.breakpoints = [], n.breakpointSettings = [], n.cssTransitions = !1, n.focussed = !1, n.interrupted = !1, n.hidden = "hidden", n.paused = !0, n.positionProp = null, n.respondTo = null, n.rowCount = 1, n.shouldClick = !0, n.$slider = i(e), n.$slidesCache = null, n.transformType = null, n.transitionType = null, n.visibilityChange = "visibilitychange", n.windowWidth = 0, n.windowTimer = null, s = i(e).data("slick") || {}, n.options = i.extend({}, n.defaults, o, s), n.currentSlide = n.options.initialSlide, n.originalSettings = n.options, "undefined" != typeof document.mozHidden ? (n.hidden = "mozHidden", n.visibilityChange = "mozvisibilitychange") : "undefined" != typeof document.webkitHidden && (n.hidden = "webkitHidden", n.visibilityChange = "webkitvisibilitychange"), n.autoPlay = i.proxy(n.autoPlay, n), n.autoPlayClear = i.proxy(n.autoPlayClear, n), n.autoPlayIterator = i.proxy(n.autoPlayIterator, n), n.changeSlide = i.proxy(n.changeSlide, n), n.clickHandler = i.proxy(n.clickHandler, n), n.selectHandler = i.proxy(n.selectHandler, n), n.setPosition = i.proxy(n.setPosition, n), n.swipeHandler = i.proxy(n.swipeHandler, n), n.dragHandler = i.proxy(n.dragHandler, n), n.keyHandler = i.proxy(n.keyHandler, n), n.instanceUid = t++, n.htmlExpr = /^(?:\s*(<[\w\W]+>)[^>]*)$/, n.registerBreakpoints(), n.init(!0)
    }
    var t = 0;
    return e
  }(), e.prototype.activateADA = function() {
    var i = this;
    i.$slideTrack.find(".slick-active").attr({
      "aria-hidden": "false"
    }).find("a, input, button, select").attr({
      tabindex: "0"
    })
  }, e.prototype.addSlide = e.prototype.slickAdd = function(e, t, o) {
    var s = this;
    if ("boolean" == typeof t) o = t, t = null;
    else if (t < 0 || t >= s.slideCount) return !1;
    s.unload(), "number" == typeof t ? 0 === t && 0 === s.$slides.length ? i(e).appendTo(s.$slideTrack) : o ? i(e).insertBefore(s.$slides.eq(t)) : i(e).insertAfter(s.$slides.eq(t)) : o === !0 ? i(e).prependTo(s.$slideTrack) : i(e).appendTo(s.$slideTrack), s.$slides = s.$slideTrack.children(this.options.slide), s.$slideTrack.children(this.options.slide).detach(), s.$slideTrack.append(s.$slides), s.$slides.each(function(e, t) {
      i(t).attr("data-slick-index", e)
    }), s.$slidesCache = s.$slides, s.reinit()
  }, e.prototype.animateHeight = function() {
    var i = this;
    if (1 === i.options.slidesToShow && i.options.adaptiveHeight === !0 && i.options.vertical === !1) {
      var e = i.$slides.eq(i.currentSlide).outerHeight(!0);
      i.$list.animate({
        height: e
      }, i.options.speed)
    }
  }, e.prototype.animateSlide = function(e, t) {
    var o = {},
      s = this;
    s.animateHeight(), s.options.rtl === !0 && s.options.vertical === !1 && (e = -e), s.transformsEnabled === !1 ? s.options.vertical === !1 ? s.$slideTrack.animate({
      left: e
    }, s.options.speed, s.options.easing, t) : s.$slideTrack.animate({
      top: e
    }, s.options.speed, s.options.easing, t) : s.cssTransitions === !1 ? (s.options.rtl === !0 && (s.currentLeft = -s.currentLeft), i({
      animStart: s.currentLeft
    }).animate({
      animStart: e
    }, {
      duration: s.options.speed,
      easing: s.options.easing,
      step: function(i) {
        i = Math.ceil(i), s.options.vertical === !1 ? (o[s.animType] = "translate(" + i + "px, 0px)", s.$slideTrack.css(o)) : (o[s.animType] = "translate(0px," + i + "px)", s.$slideTrack.css(o))
      },
      complete: function() {
        t && t.call()
      }
    })) : (s.applyTransition(), e = Math.ceil(e), s.options.vertical === !1 ? o[s.animType] = "translate3d(" + e + "px, 0px, 0px)" : o[s.animType] = "translate3d(0px," + e + "px, 0px)", s.$slideTrack.css(o), t && setTimeout(function() {
      s.disableTransition(), t.call()
    }, s.options.speed))
  }, e.prototype.getNavTarget = function() {
    var e = this,
      t = e.options.asNavFor;
    return t && null !== t && (t = i(t).not(e.$slider)), t
  }, e.prototype.asNavFor = function(e) {
    var t = this,
      o = t.getNavTarget();
    null !== o && "object" == typeof o && o.each(function() {
      var t = i(this).slick("getSlick");
      t.unslicked || t.slideHandler(e, !0)
    })
  }, e.prototype.applyTransition = function(i) {
    var e = this,
      t = {};
    e.options.fade === !1 ? t[e.transitionType] = e.transformType + " " + e.options.speed + "ms " + e.options.cssEase : t[e.transitionType] = "opacity " + e.options.speed + "ms " + e.options.cssEase, e.options.fade === !1 ? e.$slideTrack.css(t) : e.$slides.eq(i).css(t)
  }, e.prototype.autoPlay = function() {
    var i = this;
    i.autoPlayClear(), i.slideCount > i.options.slidesToShow && (i.autoPlayTimer = setInterval(i.autoPlayIterator, i.options.autoplaySpeed))
  }, e.prototype.autoPlayClear = function() {
    var i = this;
    i.autoPlayTimer && clearInterval(i.autoPlayTimer)
  }, e.prototype.autoPlayIterator = function() {
    var i = this,
      e = i.currentSlide + i.options.slidesToScroll;
    i.paused || i.interrupted || i.focussed || (i.options.infinite === !1 && (1 === i.direction && i.currentSlide + 1 === i.slideCount - 1 ? i.direction = 0 : 0 === i.direction && (e = i.currentSlide - i.options.slidesToScroll, i.currentSlide - 1 === 0 && (i.direction = 1))), i.slideHandler(e))
  }, e.prototype.buildArrows = function() {
    var e = this;
    e.options.arrows === !0 && (e.$prevArrow = i(e.options.prevArrow).addClass("slick-arrow"), e.$nextArrow = i(e.options.nextArrow).addClass("slick-arrow"), e.slideCount > e.options.slidesToShow ? (e.$prevArrow.removeClass("slick-hidden").removeAttr("aria-hidden tabindex"), e.$nextArrow.removeClass("slick-hidden").removeAttr("aria-hidden tabindex"), e.htmlExpr.test(e.options.prevArrow) && e.$prevArrow.prependTo(e.options.appendArrows), e.htmlExpr.test(e.options.nextArrow) && e.$nextArrow.appendTo(e.options.appendArrows), e.options.infinite !== !0 && e.$prevArrow.addClass("slick-disabled").attr("aria-disabled", "true")) : e.$prevArrow.add(e.$nextArrow).addClass("slick-hidden").attr({
      "aria-disabled": "true",
      tabindex: "-1"
    }))
  }, e.prototype.buildDots = function() {
    var e, t, o = this;
    if (o.options.dots === !0 && o.slideCount > o.options.slidesToShow) {
      for (o.$slider.addClass("slick-dotted"), t = i("<ul />").addClass(o.options.dotsClass), e = 0; e <= o.getDotCount(); e += 1) t.append(i("<li />").append(o.options.customPaging.call(this, o, e)));
      o.$dots = t.appendTo(o.options.appendDots), o.$dots.find("li").first().addClass("slick-active")
    }
  }, e.prototype.buildOut = function() {
    var e = this;
    e.$slides = e.$slider.children(e.options.slide + ":not(.slick-cloned)").addClass("slick-slide"), e.slideCount = e.$slides.length, e.$slides.each(function(e, t) {
      i(t).attr("data-slick-index", e).data("originalStyling", i(t).attr("style") || "")
    }), e.$slider.addClass("slick-slider"), e.$slideTrack = 0 === e.slideCount ? i('<div class="slick-track"/>').appendTo(e.$slider) : e.$slides.wrapAll('<div class="slick-track"/>').parent(), e.$list = e.$slideTrack.wrap('<div class="slick-list"/>').parent(), e.$slideTrack.css("opacity", 0), e.options.centerMode !== !0 && e.options.swipeToSlide !== !0 || (e.options.slidesToScroll = 1), i("img[data-lazy]", e.$slider).not("[src]").addClass("slick-loading"), e.setupInfinite(), e.buildArrows(), e.buildDots(), e.updateDots(), e.setSlideClasses("number" == typeof e.currentSlide ? e.currentSlide : 0), e.options.draggable === !0 && e.$list.addClass("draggable")
  }, e.prototype.buildRows = function() {
    var i, e, t, o, s, n, r, l = this;
    if (o = document.createDocumentFragment(), n = l.$slider.children(), l.options.rows > 0) {
      for (r = l.options.slidesPerRow * l.options.rows, s = Math.ceil(n.length / r), i = 0; i < s; i++) {
        var d = document.createElement("div");
        for (e = 0; e < l.options.rows; e++) {
          var a = document.createElement("div");
          for (t = 0; t < l.options.slidesPerRow; t++) {
            var c = i * r + (e * l.options.slidesPerRow + t);
            n.get(c) && a.appendChild(n.get(c))
          }
          d.appendChild(a)
        }
        o.appendChild(d)
      }
      l.$slider.empty().append(o), l.$slider.children().children().children().css({
        width: 100 / l.options.slidesPerRow + "%",
        display: "inline-block"
      })
    }
  }, e.prototype.checkResponsive = function(e, t) {
    var o, s, n, r = this,
      l = !1,
      d = r.$slider.width(),
      a = window.innerWidth || i(window).width();
    if ("window" === r.respondTo ? n = a : "slider" === r.respondTo ? n = d : "min" === r.respondTo && (n = Math.min(a, d)), r.options.responsive && r.options.responsive.length && null !== r.options.responsive) {
      s = null;
      for (o in r.breakpoints) r.breakpoints.hasOwnProperty(o) && (r.originalSettings.mobileFirst === !1 ? n < r.breakpoints[o] && (s = r.breakpoints[o]) : n > r.breakpoints[o] && (s = r.breakpoints[o]));
      null !== s ? null !== r.activeBreakpoint ? (s !== r.activeBreakpoint || t) && (r.activeBreakpoint = s, "unslick" === r.breakpointSettings[s] ? r.unslick(s) : (r.options = i.extend({}, r.originalSettings, r.breakpointSettings[s]), e === !0 && (r.currentSlide = r.options.initialSlide), r.refresh(e)), l = s) : (r.activeBreakpoint = s, "unslick" === r.breakpointSettings[s] ? r.unslick(s) : (r.options = i.extend({}, r.originalSettings, r.breakpointSettings[s]), e === !0 && (r.currentSlide = r.options.initialSlide), r.refresh(e)), l = s) : null !== r.activeBreakpoint && (r.activeBreakpoint = null, r.options = r.originalSettings, e === !0 && (r.currentSlide = r.options.initialSlide), r.refresh(e), l = s), e || l === !1 || r.$slider.trigger("breakpoint", [r, l])
    }
  }, e.prototype.changeSlide = function(e, t) {
    var o, s, n, r = this,
      l = i(e.currentTarget);
    switch (l.is("a") && e.preventDefault(), l.is("li") || (l = l.closest("li")), n = r.slideCount % r.options.slidesToScroll !== 0, o = n ? 0 : (r.slideCount - r.currentSlide) % r.options.slidesToScroll, e.data.message) {
      case "previous":
        s = 0 === o ? r.options.slidesToScroll : r.options.slidesToShow - o, r.slideCount > r.options.slidesToShow && r.slideHandler(r.currentSlide - s, !1, t);
        break;
      case "next":
        s = 0 === o ? r.options.slidesToScroll : o, r.slideCount > r.options.slidesToShow && r.slideHandler(r.currentSlide + s, !1, t);
        break;
      case "index":
        var d = 0 === e.data.index ? 0 : e.data.index || l.index() * r.options.slidesToScroll;
        r.slideHandler(r.checkNavigable(d), !1, t), l.children().trigger("focus");
        break;
      default:
        return
    }
  }, e.prototype.checkNavigable = function(i) {
    var e, t, o = this;
    if (e = o.getNavigableIndexes(), t = 0, i > e[e.length - 1]) i = e[e.length - 1];
    else
      for (var s in e) {
        if (i < e[s]) {
          i = t;
          break
        }
        t = e[s]
      }
    return i
  }, e.prototype.cleanUpEvents = function() {
    var e = this;
    e.options.dots && null !== e.$dots && (i("li", e.$dots).off("click.slick", e.changeSlide).off("mouseenter.slick", i.proxy(e.interrupt, e, !0)).off("mouseleave.slick", i.proxy(e.interrupt, e, !1)), e.options.accessibility === !0 && e.$dots.off("keydown.slick", e.keyHandler)), e.$slider.off("focus.slick blur.slick"), e.options.arrows === !0 && e.slideCount > e.options.slidesToShow && (e.$prevArrow && e.$prevArrow.off("click.slick", e.changeSlide), e.$nextArrow && e.$nextArrow.off("click.slick", e.changeSlide), e.options.accessibility === !0 && (e.$prevArrow && e.$prevArrow.off("keydown.slick", e.keyHandler), e.$nextArrow && e.$nextArrow.off("keydown.slick", e.keyHandler))), e.$list.off("touchstart.slick mousedown.slick", e.swipeHandler), e.$list.off("touchmove.slick mousemove.slick", e.swipeHandler), e.$list.off("touchend.slick mouseup.slick", e.swipeHandler), e.$list.off("touchcancel.slick mouseleave.slick", e.swipeHandler), e.$list.off("click.slick", e.clickHandler), i(document).off(e.visibilityChange, e.visibility), e.cleanUpSlideEvents(), e.options.accessibility === !0 && e.$list.off("keydown.slick", e.keyHandler), e.options.focusOnSelect === !0 && i(e.$slideTrack).children().off("click.slick", e.selectHandler), i(window).off("orientationchange.slick.slick-" + e.instanceUid, e.orientationChange), i(window).off("resize.slick.slick-" + e.instanceUid, e.resize), i("[draggable!=true]", e.$slideTrack).off("dragstart", e.preventDefault), i(window).off("load.slick.slick-" + e.instanceUid, e.setPosition)
  }, e.prototype.cleanUpSlideEvents = function() {
    var e = this;
    e.$list.off("mouseenter.slick", i.proxy(e.interrupt, e, !0)), e.$list.off("mouseleave.slick", i.proxy(e.interrupt, e, !1))
  }, e.prototype.cleanUpRows = function() {
    var i, e = this;
    e.options.rows > 0 && (i = e.$slides.children().children(), i.removeAttr("style"), e.$slider.empty().append(i))
  }, e.prototype.clickHandler = function(i) {
    var e = this;
    e.shouldClick === !1 && (i.stopImmediatePropagation(), i.stopPropagation(), i.preventDefault())
  }, e.prototype.destroy = function(e) {
    var t = this;
    t.autoPlayClear(), t.touchObject = {}, t.cleanUpEvents(), i(".slick-cloned", t.$slider).detach(), t.$dots && t.$dots.remove(), t.$prevArrow && t.$prevArrow.length && (t.$prevArrow.removeClass("slick-disabled slick-arrow slick-hidden").removeAttr("aria-hidden aria-disabled tabindex").css("display", ""), t.htmlExpr.test(t.options.prevArrow) && t.$prevArrow.remove()), t.$nextArrow && t.$nextArrow.length && (t.$nextArrow.removeClass("slick-disabled slick-arrow slick-hidden").removeAttr("aria-hidden aria-disabled tabindex").css("display", ""), t.htmlExpr.test(t.options.nextArrow) && t.$nextArrow.remove()), t.$slides && (t.$slides.removeClass("slick-slide slick-active slick-center slick-visible slick-current").removeAttr("aria-hidden").removeAttr("data-slick-index").each(function() {
      i(this).attr("style", i(this).data("originalStyling"))
    }), t.$slideTrack.children(this.options.slide).detach(), t.$slideTrack.detach(), t.$list.detach(), t.$slider.append(t.$slides)), t.cleanUpRows(), t.$slider.removeClass("slick-slider"), t.$slider.removeClass("slick-initialized"), t.$slider.removeClass("slick-dotted"), t.unslicked = !0, e || t.$slider.trigger("destroy", [t])
  }, e.prototype.disableTransition = function(i) {
    var e = this,
      t = {};
    t[e.transitionType] = "", e.options.fade === !1 ? e.$slideTrack.css(t) : e.$slides.eq(i).css(t)
  }, e.prototype.fadeSlide = function(i, e) {
    var t = this;
    t.cssTransitions === !1 ? (t.$slides.eq(i).css({
      zIndex: t.options.zIndex
    }), t.$slides.eq(i).animate({
      opacity: 1
    }, t.options.speed, t.options.easing, e)) : (t.applyTransition(i), t.$slides.eq(i).css({
      opacity: 1,
      zIndex: t.options.zIndex
    }), e && setTimeout(function() {
      t.disableTransition(i), e.call()
    }, t.options.speed))
  }, e.prototype.fadeSlideOut = function(i) {
    var e = this;
    e.cssTransitions === !1 ? e.$slides.eq(i).animate({
      opacity: 0,
      zIndex: e.options.zIndex - 2
    }, e.options.speed, e.options.easing) : (e.applyTransition(i), e.$slides.eq(i).css({
      opacity: 0,
      zIndex: e.options.zIndex - 2
    }))
  }, e.prototype.filterSlides = e.prototype.slickFilter = function(i) {
    var e = this;
    null !== i && (e.$slidesCache = e.$slides, e.unload(), e.$slideTrack.children(this.options.slide).detach(), e.$slidesCache.filter(i).appendTo(e.$slideTrack), e.reinit())
  }, e.prototype.focusHandler = function() {
    var e = this;
    e.$slider.off("focus.slick blur.slick").on("focus.slick", "*", function(t) {
      var o = i(this);
      setTimeout(function() {
        e.options.pauseOnFocus && o.is(":focus") && (e.focussed = !0, e.autoPlay())
      }, 0)
    }).on("blur.slick", "*", function(t) {
      i(this);
      e.options.pauseOnFocus && (e.focussed = !1, e.autoPlay())
    })
  }, e.prototype.getCurrent = e.prototype.slickCurrentSlide = function() {
    var i = this;
    return i.currentSlide
  }, e.prototype.getDotCount = function() {
    var i = this,
      e = 0,
      t = 0,
      o = 0;
    if (i.options.infinite === !0)
      if (i.slideCount <= i.options.slidesToShow) ++o;
      else
        for (; e < i.slideCount;) ++o, e = t + i.options.slidesToScroll, t += i.options.slidesToScroll <= i.options.slidesToShow ? i.options.slidesToScroll : i.options.slidesToShow;
    else if (i.options.centerMode === !0) o = i.slideCount;
    else if (i.options.asNavFor)
      for (; e < i.slideCount;) ++o, e = t + i.options.slidesToScroll, t += i.options.slidesToScroll <= i.options.slidesToShow ? i.options.slidesToScroll : i.options.slidesToShow;
    else o = 1 + Math.ceil((i.slideCount - i.options.slidesToShow) / i.options.slidesToScroll);
    return o - 1
  }, e.prototype.getLeft = function(i) {
    var e, t, o, s, n = this,
      r = 0;
    return n.slideOffset = 0, t = n.$slides.first().outerHeight(!0), n.options.infinite === !0 ? (n.slideCount > n.options.slidesToShow && (n.slideOffset = n.slideWidth * n.options.slidesToShow * -1, s = -1, n.options.vertical === !0 && n.options.centerMode === !0 && (2 === n.options.slidesToShow ? s = -1.5 : 1 === n.options.slidesToShow && (s = -2)), r = t * n.options.slidesToShow * s), n.slideCount % n.options.slidesToScroll !== 0 && i + n.options.slidesToScroll > n.slideCount && n.slideCount > n.options.slidesToShow && (i > n.slideCount ? (n.slideOffset = (n.options.slidesToShow - (i - n.slideCount)) * n.slideWidth * -1, r = (n.options.slidesToShow - (i - n.slideCount)) * t * -1) : (n.slideOffset = n.slideCount % n.options.slidesToScroll * n.slideWidth * -1, r = n.slideCount % n.options.slidesToScroll * t * -1))) : i + n.options.slidesToShow > n.slideCount && (n.slideOffset = (i + n.options.slidesToShow - n.slideCount) * n.slideWidth, r = (i + n.options.slidesToShow - n.slideCount) * t), n.slideCount <= n.options.slidesToShow && (n.slideOffset = 0, r = 0), n.options.centerMode === !0 && n.slideCount <= n.options.slidesToShow ? n.slideOffset = n.slideWidth * Math.floor(n.options.slidesToShow) / 2 - n.slideWidth * n.slideCount / 2 : n.options.centerMode === !0 && n.options.infinite === !0 ? n.slideOffset += n.slideWidth * Math.floor(n.options.slidesToShow / 2) - n.slideWidth : n.options.centerMode === !0 && (n.slideOffset = 0, n.slideOffset += n.slideWidth * Math.floor(n.options.slidesToShow / 2)), e = n.options.vertical === !1 ? i * n.slideWidth * -1 + n.slideOffset : i * t * -1 + r, n.options.variableWidth === !0 && (o = n.slideCount <= n.options.slidesToShow || n.options.infinite === !1 ? n.$slideTrack.children(".slick-slide").eq(i) : n.$slideTrack.children(".slick-slide").eq(i + n.options.slidesToShow), e = n.options.rtl === !0 ? o[0] ? (n.$slideTrack.width() - o[0].offsetLeft - o.width()) * -1 : 0 : o[0] ? o[0].offsetLeft * -1 : 0, n.options.centerMode === !0 && (o = n.slideCount <= n.options.slidesToShow || n.options.infinite === !1 ? n.$slideTrack.children(".slick-slide").eq(i) : n.$slideTrack.children(".slick-slide").eq(i + n.options.slidesToShow + 1), e = n.options.rtl === !0 ? o[0] ? (n.$slideTrack.width() - o[0].offsetLeft - o.width()) * -1 : 0 : o[0] ? o[0].offsetLeft * -1 : 0, e += (n.$list.width() - o.outerWidth()) / 2)), e
  }, e.prototype.getOption = e.prototype.slickGetOption = function(i) {
    var e = this;
    return e.options[i]
  }, e.prototype.getNavigableIndexes = function() {
    var i, e = this,
      t = 0,
      o = 0,
      s = [];
    for (e.options.infinite === !1 ? i = e.slideCount : (t = e.options.slidesToScroll * -1, o = e.options.slidesToScroll * -1, i = 2 * e.slideCount); t < i;) s.push(t), t = o + e.options.slidesToScroll, o += e.options.slidesToScroll <= e.options.slidesToShow ? e.options.slidesToScroll : e.options.slidesToShow;
    return s
  }, e.prototype.getSlick = function() {
    return this
  }, e.prototype.getSlideCount = function() {
    var e, t, o, s, n = this;
    return s = n.options.centerMode === !0 ? Math.floor(n.$list.width() / 2) : 0, o = n.swipeLeft * -1 + s, n.options.swipeToSlide === !0 ? (n.$slideTrack.find(".slick-slide").each(function(e, s) {
      var r, l, d;
      if (r = i(s).outerWidth(), l = s.offsetLeft, n.options.centerMode !== !0 && (l += r / 2), d = l + r, o < d) return t = s, !1
    }), e = Math.abs(i(t).attr("data-slick-index") - n.currentSlide) || 1) : n.options.slidesToScroll
  }, e.prototype.goTo = e.prototype.slickGoTo = function(i, e) {
    var t = this;
    t.changeSlide({
      data: {
        message: "index",
        index: parseInt(i)
      }
    }, e)
  }, e.prototype.init = function(e) {
    var t = this;
    i(t.$slider).hasClass("slick-initialized") || (i(t.$slider).addClass("slick-initialized"), t.buildRows(), t.buildOut(), t.setProps(), t.startLoad(), t.loadSlider(), t.initializeEvents(), t.updateArrows(), t.updateDots(), t.checkResponsive(!0), t.focusHandler()), e && t.$slider.trigger("init", [t]), t.options.accessibility === !0 && t.initADA(), t.options.autoplay && (t.paused = !1, t.autoPlay())
  }, e.prototype.initADA = function() {
    var e = this,
      t = Math.ceil(e.slideCount / e.options.slidesToShow),
      o = e.getNavigableIndexes().filter(function(i) {
        return i >= 0 && i < e.slideCount
      });
    e.$slides.add(e.$slideTrack.find(".slick-cloned")).attr({
      "aria-hidden": "true",
      tabindex: "-1"
    }).find("a, input, button, select").attr({
      tabindex: "-1"
    }), null !== e.$dots && (e.$slides.not(e.$slideTrack.find(".slick-cloned")).each(function(t) {
      var s = o.indexOf(t);
      if (i(this).attr({
          role: "tabpanel",
          id: "slick-slide" + e.instanceUid + t,
          tabindex: -1
        }), s !== -1) {
        var n = "slick-slide-control" + e.instanceUid + s;
        i("#" + n).length && i(this).attr({
          "aria-describedby": n
        })
      }
    }), e.$dots.attr("role", "tablist").find("li").each(function(s) {
      var n = o[s];
      i(this).attr({
        role: "presentation"
      }), i(this).find("button").first().attr({
        role: "tab",
        id: "slick-slide-control" + e.instanceUid + s,
        "aria-controls": "slick-slide" + e.instanceUid + n,
        "aria-label": s + 1 + " of " + t,
        "aria-selected": null,
        tabindex: "-1"
      })
    }).eq(e.currentSlide).find("button").attr({
      "aria-selected": "true",
      tabindex: "0"
    }).end());
    for (var s = e.currentSlide, n = s + e.options.slidesToShow; s < n; s++) e.options.focusOnChange ? e.$slides.eq(s).attr({
      tabindex: "0"
    }) : e.$slides.eq(s).removeAttr("tabindex");
    e.activateADA()
  }, e.prototype.initArrowEvents = function() {
    var i = this;
    i.options.arrows === !0 && i.slideCount > i.options.slidesToShow && (i.$prevArrow.off("click.slick").on("click.slick", {
      message: "previous"
    }, i.changeSlide), i.$nextArrow.off("click.slick").on("click.slick", {
      message: "next"
    }, i.changeSlide), i.options.accessibility === !0 && (i.$prevArrow.on("keydown.slick", i.keyHandler), i.$nextArrow.on("keydown.slick", i.keyHandler)))
  }, e.prototype.initDotEvents = function() {
    var e = this;
    e.options.dots === !0 && e.slideCount > e.options.slidesToShow && (i("li", e.$dots).on("click.slick", {
      message: "index"
    }, e.changeSlide), e.options.accessibility === !0 && e.$dots.on("keydown.slick", e.keyHandler)), e.options.dots === !0 && e.options.pauseOnDotsHover === !0 && e.slideCount > e.options.slidesToShow && i("li", e.$dots).on("mouseenter.slick", i.proxy(e.interrupt, e, !0)).on("mouseleave.slick", i.proxy(e.interrupt, e, !1))
  }, e.prototype.initSlideEvents = function() {
    var e = this;
    e.options.pauseOnHover && (e.$list.on("mouseenter.slick", i.proxy(e.interrupt, e, !0)), e.$list.on("mouseleave.slick", i.proxy(e.interrupt, e, !1)))
  }, e.prototype.initializeEvents = function() {
    var e = this;
    e.initArrowEvents(), e.initDotEvents(), e.initSlideEvents(), e.$list.on("touchstart.slick mousedown.slick", {
      action: "start"
    }, e.swipeHandler), e.$list.on("touchmove.slick mousemove.slick", {
      action: "move"
    }, e.swipeHandler), e.$list.on("touchend.slick mouseup.slick", {
      action: "end"
    }, e.swipeHandler), e.$list.on("touchcancel.slick mouseleave.slick", {
      action: "end"
    }, e.swipeHandler), e.$list.on("click.slick", e.clickHandler), i(document).on(e.visibilityChange, i.proxy(e.visibility, e)), e.options.accessibility === !0 && e.$list.on("keydown.slick", e.keyHandler), e.options.focusOnSelect === !0 && i(e.$slideTrack).children().on("click.slick", e.selectHandler), i(window).on("orientationchange.slick.slick-" + e.instanceUid, i.proxy(e.orientationChange, e)), i(window).on("resize.slick.slick-" + e.instanceUid, i.proxy(e.resize, e)), i("[draggable!=true]", e.$slideTrack).on("dragstart", e.preventDefault), i(window).on("load.slick.slick-" + e.instanceUid, e.setPosition), i(e.setPosition)
  }, e.prototype.initUI = function() {
    var i = this;
    i.options.arrows === !0 && i.slideCount > i.options.slidesToShow && (i.$prevArrow.show(), i.$nextArrow.show()), i.options.dots === !0 && i.slideCount > i.options.slidesToShow && i.$dots.show()
  }, e.prototype.keyHandler = function(i) {
    var e = this;
    i.target.tagName.match("TEXTAREA|INPUT|SELECT") || (37 === i.keyCode && e.options.accessibility === !0 ? e.changeSlide({
      data: {
        message: e.options.rtl === !0 ? "next" : "previous"
      }
    }) : 39 === i.keyCode && e.options.accessibility === !0 && e.changeSlide({
      data: {
        message: e.options.rtl === !0 ? "previous" : "next"
      }
    }))
  }, e.prototype.lazyLoad = function() {
    function e(e) {
      i("img[data-lazy]", e).each(function() {
        var e = i(this),
          t = i(this).attr("data-lazy"),
          o = i(this).attr("data-srcset"),
          s = i(this).attr("data-sizes") || r.$slider.attr("data-sizes"),
          n = document.createElement("img");
        n.onload = function() {
          e.animate({
            opacity: 0
          }, 100, function() {
            o && (e.attr("srcset", o), s && e.attr("sizes", s)), e.attr("src", t).animate({
              opacity: 1
            }, 200, function() {
              e.removeAttr("data-lazy data-srcset data-sizes").removeClass("slick-loading")
            }), r.$slider.trigger("lazyLoaded", [r, e, t])
          })
        }, n.onerror = function() {
          e.removeAttr("data-lazy").removeClass("slick-loading").addClass("slick-lazyload-error"), r.$slider.trigger("lazyLoadError", [r, e, t])
        }, n.src = t
      })
    }
    var t, o, s, n, r = this;
    if (r.options.centerMode === !0 ? r.options.infinite === !0 ? (s = r.currentSlide + (r.options.slidesToShow / 2 + 1), n = s + r.options.slidesToShow + 2) : (s = Math.max(0, r.currentSlide - (r.options.slidesToShow / 2 + 1)), n = 2 + (r.options.slidesToShow / 2 + 1) + r.currentSlide) : (s = r.options.infinite ? r.options.slidesToShow + r.currentSlide : r.currentSlide, n = Math.ceil(s + r.options.slidesToShow), r.options.fade === !0 && (s > 0 && s--, n <= r.slideCount && n++)), t = r.$slider.find(".slick-slide").slice(s, n), "anticipated" === r.options.lazyLoad)
      for (var l = s - 1, d = n, a = r.$slider.find(".slick-slide"), c = 0; c < r.options.slidesToScroll; c++) l < 0 && (l = r.slideCount - 1), t = t.add(a.eq(l)), t = t.add(a.eq(d)), l--, d++;
    e(t), r.slideCount <= r.options.slidesToShow ? (o = r.$slider.find(".slick-slide"), e(o)) : r.currentSlide >= r.slideCount - r.options.slidesToShow ? (o = r.$slider.find(".slick-cloned").slice(0, r.options.slidesToShow), e(o)) : 0 === r.currentSlide && (o = r.$slider.find(".slick-cloned").slice(r.options.slidesToShow * -1), e(o))
  }, e.prototype.loadSlider = function() {
    var i = this;
    i.setPosition(), i.$slideTrack.css({
      opacity: 1
    }), i.$slider.removeClass("slick-loading"), i.initUI(), "progressive" === i.options.lazyLoad && i.progressiveLazyLoad()
  }, e.prototype.next = e.prototype.slickNext = function() {
    var i = this;
    i.changeSlide({
      data: {
        message: "next"
      }
    })
  }, e.prototype.orientationChange = function() {
    var i = this;
    i.checkResponsive(), i.setPosition()
  }, e.prototype.pause = e.prototype.slickPause = function() {
    var i = this;
    i.autoPlayClear(), i.paused = !0
  }, e.prototype.play = e.prototype.slickPlay = function() {
    var i = this;
    i.autoPlay(), i.options.autoplay = !0, i.paused = !1, i.focussed = !1, i.interrupted = !1
  }, e.prototype.postSlide = function(e) {
    var t = this;
    if (!t.unslicked && (t.$slider.trigger("afterChange", [t, e]), t.animating = !1, t.slideCount > t.options.slidesToShow && t.setPosition(), t.swipeLeft = null, t.options.autoplay && t.autoPlay(), t.options.accessibility === !0 && (t.initADA(), t.options.focusOnChange))) {
      var o = i(t.$slides.get(t.currentSlide));
      o.attr("tabindex", 0).focus()
    }
  }, e.prototype.prev = e.prototype.slickPrev = function() {
    var i = this;
    i.changeSlide({
      data: {
        message: "previous"
      }
    })
  }, e.prototype.preventDefault = function(i) {
    i.preventDefault()
  }, e.prototype.progressiveLazyLoad = function(e) {
    e = e || 1;
    var t, o, s, n, r, l = this,
      d = i("img[data-lazy]", l.$slider);
    d.length ? (t = d.first(), o = t.attr("data-lazy"), s = t.attr("data-srcset"), n = t.attr("data-sizes") || l.$slider.attr("data-sizes"), r = document.createElement("img"), r.onload = function() {
      s && (t.attr("srcset", s), n && t.attr("sizes", n)), t.attr("src", o).removeAttr("data-lazy data-srcset data-sizes").removeClass("slick-loading"), l.options.adaptiveHeight === !0 && l.setPosition(), l.$slider.trigger("lazyLoaded", [l, t, o]), l.progressiveLazyLoad()
    }, r.onerror = function() {
      e < 3 ? setTimeout(function() {
        l.progressiveLazyLoad(e + 1)
      }, 500) : (t.removeAttr("data-lazy").removeClass("slick-loading").addClass("slick-lazyload-error"), l.$slider.trigger("lazyLoadError", [l, t, o]), l.progressiveLazyLoad())
    }, r.src = o) : l.$slider.trigger("allImagesLoaded", [l])
  }, e.prototype.refresh = function(e) {
    var t, o, s = this;
    o = s.slideCount - s.options.slidesToShow, !s.options.infinite && s.currentSlide > o && (s.currentSlide = o), s.slideCount <= s.options.slidesToShow && (s.currentSlide = 0), t = s.currentSlide, s.destroy(!0), i.extend(s, s.initials, {
      currentSlide: t
    }), s.init(), e || s.changeSlide({
      data: {
        message: "index",
        index: t
      }
    }, !1)
  }, e.prototype.registerBreakpoints = function() {
    var e, t, o, s = this,
      n = s.options.responsive || null;
    if ("array" === i.type(n) && n.length) {
      s.respondTo = s.options.respondTo || "window";
      for (e in n)
        if (o = s.breakpoints.length - 1, n.hasOwnProperty(e)) {
          for (t = n[e].breakpoint; o >= 0;) s.breakpoints[o] && s.breakpoints[o] === t && s.breakpoints.splice(o, 1), o--;
          s.breakpoints.push(t), s.breakpointSettings[t] = n[e].settings
        } s.breakpoints.sort(function(i, e) {
        return s.options.mobileFirst ? i - e : e - i
      })
    }
  }, e.prototype.reinit = function() {
    var e = this;
    e.$slides = e.$slideTrack.children(e.options.slide).addClass("slick-slide"), e.slideCount = e.$slides.length, e.currentSlide >= e.slideCount && 0 !== e.currentSlide && (e.currentSlide = e.currentSlide - e.options.slidesToScroll), e.slideCount <= e.options.slidesToShow && (e.currentSlide = 0), e.registerBreakpoints(), e.setProps(), e.setupInfinite(), e.buildArrows(), e.updateArrows(), e.initArrowEvents(), e.buildDots(), e.updateDots(), e.initDotEvents(), e.cleanUpSlideEvents(), e.initSlideEvents(), e.checkResponsive(!1, !0), e.options.focusOnSelect === !0 && i(e.$slideTrack).children().on("click.slick", e.selectHandler), e.setSlideClasses("number" == typeof e.currentSlide ? e.currentSlide : 0), e.setPosition(), e.focusHandler(), e.paused = !e.options.autoplay, e.autoPlay(), e.$slider.trigger("reInit", [e])
  }, e.prototype.resize = function() {
    var e = this;
    i(window).width() !== e.windowWidth && (clearTimeout(e.windowDelay), e.windowDelay = window.setTimeout(function() {
      e.windowWidth = i(window).width(), e.checkResponsive(), e.unslicked || e.setPosition()
    }, 50))
  }, e.prototype.removeSlide = e.prototype.slickRemove = function(i, e, t) {
    var o = this;
    return "boolean" == typeof i ? (e = i, i = e === !0 ? 0 : o.slideCount - 1) : i = e === !0 ? --i : i, !(o.slideCount < 1 || i < 0 || i > o.slideCount - 1) && (o.unload(), t === !0 ? o.$slideTrack.children().remove() : o.$slideTrack.children(this.options.slide).eq(i).remove(), o.$slides = o.$slideTrack.children(this.options.slide), o.$slideTrack.children(this.options.slide).detach(), o.$slideTrack.append(o.$slides), o.$slidesCache = o.$slides, void o.reinit())
  }, e.prototype.setCSS = function(i) {
    var e, t, o = this,
      s = {};
    o.options.rtl === !0 && (i = -i), e = "left" == o.positionProp ? Math.ceil(i) + "px" : "0px", t = "top" == o.positionProp ? Math.ceil(i) + "px" : "0px", s[o.positionProp] = i, o.transformsEnabled === !1 ? o.$slideTrack.css(s) : (s = {}, o.cssTransitions === !1 ? (s[o.animType] = "translate(" + e + ", " + t + ")", o.$slideTrack.css(s)) : (s[o.animType] = "translate3d(" + e + ", " + t + ", 0px)", o.$slideTrack.css(s)))
  }, e.prototype.setDimensions = function() {
    var i = this;
    i.options.vertical === !1 ? i.options.centerMode === !0 && i.$list.css({
      padding: "0px " + i.options.centerPadding
    }) : (i.$list.height(i.$slides.first().outerHeight(!0) * i.options.slidesToShow), i.options.centerMode === !0 && i.$list.css({
      padding: i.options.centerPadding + " 0px"
    })), i.listWidth = i.$list.width(), i.listHeight = i.$list.height(), i.options.vertical === !1 && i.options.variableWidth === !1 ? (i.slideWidth = Math.ceil(i.listWidth / i.options.slidesToShow), i.$slideTrack.width(Math.ceil(i.slideWidth * i.$slideTrack.children(".slick-slide").length))) : i.options.variableWidth === !0 ? i.$slideTrack.width(5e3 * i.slideCount) : (i.slideWidth = Math.ceil(i.listWidth), i.$slideTrack.height(Math.ceil(i.$slides.first().outerHeight(!0) * i.$slideTrack.children(".slick-slide").length)));
    var e = i.$slides.first().outerWidth(!0) - i.$slides.first().width();
    i.options.variableWidth === !1 && i.$slideTrack.children(".slick-slide").width(i.slideWidth - e)
  }, e.prototype.setFade = function() {
    var e, t = this;
    t.$slides.each(function(o, s) {
      e = t.slideWidth * o * -1, t.options.rtl === !0 ? i(s).css({
        position: "relative",
        right: e,
        top: 0,
        zIndex: t.options.zIndex - 2,
        opacity: 0
      }) : i(s).css({
        position: "relative",
        left: e,
        top: 0,
        zIndex: t.options.zIndex - 2,
        opacity: 0
      })
    }), t.$slides.eq(t.currentSlide).css({
      zIndex: t.options.zIndex - 1,
      opacity: 1
    })
  }, e.prototype.setHeight = function() {
    var i = this;
    if (1 === i.options.slidesToShow && i.options.adaptiveHeight === !0 && i.options.vertical === !1) {
      var e = i.$slides.eq(i.currentSlide).outerHeight(!0);
      i.$list.css("height", e)
    }
  }, e.prototype.setOption = e.prototype.slickSetOption = function() {
    var e, t, o, s, n, r = this,
      l = !1;
    if ("object" === i.type(arguments[0]) ? (o = arguments[0], l = arguments[1], n = "multiple") : "string" === i.type(arguments[0]) && (o = arguments[0], s = arguments[1], l = arguments[2], "responsive" === arguments[0] && "array" === i.type(arguments[1]) ? n = "responsive" : "undefined" != typeof arguments[1] && (n = "single")), "single" === n) r.options[o] = s;
    else if ("multiple" === n) i.each(o, function(i, e) {
      r.options[i] = e
    });
    else if ("responsive" === n)
      for (t in s)
        if ("array" !== i.type(r.options.responsive)) r.options.responsive = [s[t]];
        else {
          for (e = r.options.responsive.length - 1; e >= 0;) r.options.responsive[e].breakpoint === s[t].breakpoint && r.options.responsive.splice(e, 1), e--;
          r.options.responsive.push(s[t])
        } l && (r.unload(), r.reinit())
  }, e.prototype.setPosition = function() {
    var i = this;
    i.setDimensions(), i.setHeight(), i.options.fade === !1 ? i.setCSS(i.getLeft(i.currentSlide)) : i.setFade(), i.$slider.trigger("setPosition", [i])
  }, e.prototype.setProps = function() {
    var i = this,
      e = document.body.style;
    i.positionProp = i.options.vertical === !0 ? "top" : "left",
      "top" === i.positionProp ? i.$slider.addClass("slick-vertical") : i.$slider.removeClass("slick-vertical"), void 0 === e.WebkitTransition && void 0 === e.MozTransition && void 0 === e.msTransition || i.options.useCSS === !0 && (i.cssTransitions = !0), i.options.fade && ("number" == typeof i.options.zIndex ? i.options.zIndex < 3 && (i.options.zIndex = 3) : i.options.zIndex = i.defaults.zIndex), void 0 !== e.OTransform && (i.animType = "OTransform", i.transformType = "-o-transform", i.transitionType = "OTransition", void 0 === e.perspectiveProperty && void 0 === e.webkitPerspective && (i.animType = !1)), void 0 !== e.MozTransform && (i.animType = "MozTransform", i.transformType = "-moz-transform", i.transitionType = "MozTransition", void 0 === e.perspectiveProperty && void 0 === e.MozPerspective && (i.animType = !1)), void 0 !== e.webkitTransform && (i.animType = "webkitTransform", i.transformType = "-webkit-transform", i.transitionType = "webkitTransition", void 0 === e.perspectiveProperty && void 0 === e.webkitPerspective && (i.animType = !1)), void 0 !== e.msTransform && (i.animType = "msTransform", i.transformType = "-ms-transform", i.transitionType = "msTransition", void 0 === e.msTransform && (i.animType = !1)), void 0 !== e.transform && i.animType !== !1 && (i.animType = "transform", i.transformType = "transform", i.transitionType = "transition"), i.transformsEnabled = i.options.useTransform && null !== i.animType && i.animType !== !1
  }, e.prototype.setSlideClasses = function(i) {
    var e, t, o, s, n = this;
    if (t = n.$slider.find(".slick-slide").removeClass("slick-active slick-center slick-current").attr("aria-hidden", "true"), n.$slides.eq(i).addClass("slick-current"), n.options.centerMode === !0) {
      var r = n.options.slidesToShow % 2 === 0 ? 1 : 0;
      e = Math.floor(n.options.slidesToShow / 2), n.options.infinite === !0 && (i >= e && i <= n.slideCount - 1 - e ? n.$slides.slice(i - e + r, i + e + 1).addClass("slick-active").attr("aria-hidden", "false") : (o = n.options.slidesToShow + i, t.slice(o - e + 1 + r, o + e + 2).addClass("slick-active").attr("aria-hidden", "false")), 0 === i ? t.eq(t.length - 1 - n.options.slidesToShow).addClass("slick-center") : i === n.slideCount - 1 && t.eq(n.options.slidesToShow).addClass("slick-center")), n.$slides.eq(i).addClass("slick-center")
    } else i >= 0 && i <= n.slideCount - n.options.slidesToShow ? n.$slides.slice(i, i + n.options.slidesToShow).addClass("slick-active").attr("aria-hidden", "false") : t.length <= n.options.slidesToShow ? t.addClass("slick-active").attr("aria-hidden", "false") : (s = n.slideCount % n.options.slidesToShow, o = n.options.infinite === !0 ? n.options.slidesToShow + i : i, n.options.slidesToShow == n.options.slidesToScroll && n.slideCount - i < n.options.slidesToShow ? t.slice(o - (n.options.slidesToShow - s), o + s).addClass("slick-active").attr("aria-hidden", "false") : t.slice(o, o + n.options.slidesToShow).addClass("slick-active").attr("aria-hidden", "false"));
    "ondemand" !== n.options.lazyLoad && "anticipated" !== n.options.lazyLoad || n.lazyLoad()
  }, e.prototype.setupInfinite = function() {
    var e, t, o, s = this;
    if (s.options.fade === !0 && (s.options.centerMode = !1), s.options.infinite === !0 && s.options.fade === !1 && (t = null, s.slideCount > s.options.slidesToShow)) {
      for (o = s.options.centerMode === !0 ? s.options.slidesToShow + 1 : s.options.slidesToShow, e = s.slideCount; e > s.slideCount - o; e -= 1) t = e - 1, i(s.$slides[t]).clone(!0).attr("id", "").attr("data-slick-index", t - s.slideCount).prependTo(s.$slideTrack).addClass("slick-cloned");
      for (e = 0; e < o + s.slideCount; e += 1) t = e, i(s.$slides[t]).clone(!0).attr("id", "").attr("data-slick-index", t + s.slideCount).appendTo(s.$slideTrack).addClass("slick-cloned");
      s.$slideTrack.find(".slick-cloned").find("[id]").each(function() {
        i(this).attr("id", "")
      })
    }
  }, e.prototype.interrupt = function(i) {
    var e = this;
    i || e.autoPlay(), e.interrupted = i
  }, e.prototype.selectHandler = function(e) {
    var t = this,
      o = i(e.target).is(".slick-slide") ? i(e.target) : i(e.target).parents(".slick-slide"),
      s = parseInt(o.attr("data-slick-index"));
    return s || (s = 0), t.slideCount <= t.options.slidesToShow ? void t.slideHandler(s, !1, !0) : void t.slideHandler(s)
  }, e.prototype.slideHandler = function(i, e, t) {
    var o, s, n, r, l, d = null,
      a = this;
    if (e = e || !1, !(a.animating === !0 && a.options.waitForAnimate === !0 || a.options.fade === !0 && a.currentSlide === i)) return e === !1 && a.asNavFor(i), o = i, d = a.getLeft(o), r = a.getLeft(a.currentSlide), a.currentLeft = null === a.swipeLeft ? r : a.swipeLeft, a.options.infinite === !1 && a.options.centerMode === !1 && (i < 0 || i > a.getDotCount() * a.options.slidesToScroll) ? void(a.options.fade === !1 && (o = a.currentSlide, t !== !0 && a.slideCount > a.options.slidesToShow ? a.animateSlide(r, function() {
      a.postSlide(o)
    }) : a.postSlide(o))) : a.options.infinite === !1 && a.options.centerMode === !0 && (i < 0 || i > a.slideCount - a.options.slidesToScroll) ? void(a.options.fade === !1 && (o = a.currentSlide, t !== !0 && a.slideCount > a.options.slidesToShow ? a.animateSlide(r, function() {
      a.postSlide(o)
    }) : a.postSlide(o))) : (a.options.autoplay && clearInterval(a.autoPlayTimer), s = o < 0 ? a.slideCount % a.options.slidesToScroll !== 0 ? a.slideCount - a.slideCount % a.options.slidesToScroll : a.slideCount + o : o >= a.slideCount ? a.slideCount % a.options.slidesToScroll !== 0 ? 0 : o - a.slideCount : o, a.animating = !0, a.$slider.trigger("beforeChange", [a, a.currentSlide, s]), n = a.currentSlide, a.currentSlide = s, a.setSlideClasses(a.currentSlide), a.options.asNavFor && (l = a.getNavTarget(), l = l.slick("getSlick"), l.slideCount <= l.options.slidesToShow && l.setSlideClasses(a.currentSlide)), a.updateDots(), a.updateArrows(), a.options.fade === !0 ? (t !== !0 ? (a.fadeSlideOut(n), a.fadeSlide(s, function() {
      a.postSlide(s)
    })) : a.postSlide(s), void a.animateHeight()) : void(t !== !0 && a.slideCount > a.options.slidesToShow ? a.animateSlide(d, function() {
      a.postSlide(s)
    }) : a.postSlide(s)))
  }, e.prototype.startLoad = function() {
    var i = this;
    i.options.arrows === !0 && i.slideCount > i.options.slidesToShow && (i.$prevArrow.hide(), i.$nextArrow.hide()), i.options.dots === !0 && i.slideCount > i.options.slidesToShow && i.$dots.hide(), i.$slider.addClass("slick-loading")
  }, e.prototype.swipeDirection = function() {
    var i, e, t, o, s = this;
    return i = s.touchObject.startX - s.touchObject.curX, e = s.touchObject.startY - s.touchObject.curY, t = Math.atan2(e, i), o = Math.round(180 * t / Math.PI), o < 0 && (o = 360 - Math.abs(o)), o <= 45 && o >= 0 ? s.options.rtl === !1 ? "left" : "right" : o <= 360 && o >= 315 ? s.options.rtl === !1 ? "left" : "right" : o >= 135 && o <= 225 ? s.options.rtl === !1 ? "right" : "left" : s.options.verticalSwiping === !0 ? o >= 35 && o <= 135 ? "down" : "up" : "vertical"
  }, e.prototype.swipeEnd = function(i) {
    var e, t, o = this;
    if (o.dragging = !1, o.swiping = !1, o.scrolling) return o.scrolling = !1, !1;
    if (o.interrupted = !1, o.shouldClick = !(o.touchObject.swipeLength > 10), void 0 === o.touchObject.curX) return !1;
    if (o.touchObject.edgeHit === !0 && o.$slider.trigger("edge", [o, o.swipeDirection()]), o.touchObject.swipeLength >= o.touchObject.minSwipe) {
      switch (t = o.swipeDirection()) {
        case "left":
        case "down":
          e = o.options.swipeToSlide ? o.checkNavigable(o.currentSlide + o.getSlideCount()) : o.currentSlide + o.getSlideCount(), o.currentDirection = 0;
          break;
        case "right":
        case "up":
          e = o.options.swipeToSlide ? o.checkNavigable(o.currentSlide - o.getSlideCount()) : o.currentSlide - o.getSlideCount(), o.currentDirection = 1
      }
      "vertical" != t && (o.slideHandler(e), o.touchObject = {}, o.$slider.trigger("swipe", [o, t]))
    } else o.touchObject.startX !== o.touchObject.curX && (o.slideHandler(o.currentSlide), o.touchObject = {})
  }, e.prototype.swipeHandler = function(i) {
    var e = this;
    if (!(e.options.swipe === !1 || "ontouchend" in document && e.options.swipe === !1 || e.options.draggable === !1 && i.type.indexOf("mouse") !== -1)) switch (e.touchObject.fingerCount = i.originalEvent && void 0 !== i.originalEvent.touches ? i.originalEvent.touches.length : 1, e.touchObject.minSwipe = e.listWidth / e.options.touchThreshold, e.options.verticalSwiping === !0 && (e.touchObject.minSwipe = e.listHeight / e.options.touchThreshold), i.data.action) {
      case "start":
        e.swipeStart(i);
        break;
      case "move":
        e.swipeMove(i);
        break;
      case "end":
        e.swipeEnd(i)
    }
  }, e.prototype.swipeMove = function(i) {
    var e, t, o, s, n, r, l = this;
    return n = void 0 !== i.originalEvent ? i.originalEvent.touches : null, !(!l.dragging || l.scrolling || n && 1 !== n.length) && (e = l.getLeft(l.currentSlide), l.touchObject.curX = void 0 !== n ? n[0].pageX : i.clientX, l.touchObject.curY = void 0 !== n ? n[0].pageY : i.clientY, l.touchObject.swipeLength = Math.round(Math.sqrt(Math.pow(l.touchObject.curX - l.touchObject.startX, 2))), r = Math.round(Math.sqrt(Math.pow(l.touchObject.curY - l.touchObject.startY, 2))), !l.options.verticalSwiping && !l.swiping && r > 4 ? (l.scrolling = !0, !1) : (l.options.verticalSwiping === !0 && (l.touchObject.swipeLength = r), t = l.swipeDirection(), void 0 !== i.originalEvent && l.touchObject.swipeLength > 4 && (l.swiping = !0, i.preventDefault()), s = (l.options.rtl === !1 ? 1 : -1) * (l.touchObject.curX > l.touchObject.startX ? 1 : -1), l.options.verticalSwiping === !0 && (s = l.touchObject.curY > l.touchObject.startY ? 1 : -1), o = l.touchObject.swipeLength, l.touchObject.edgeHit = !1, l.options.infinite === !1 && (0 === l.currentSlide && "right" === t || l.currentSlide >= l.getDotCount() && "left" === t) && (o = l.touchObject.swipeLength * l.options.edgeFriction, l.touchObject.edgeHit = !0), l.options.vertical === !1 ? l.swipeLeft = e + o * s : l.swipeLeft = e + o * (l.$list.height() / l.listWidth) * s, l.options.verticalSwiping === !0 && (l.swipeLeft = e + o * s), l.options.fade !== !0 && l.options.touchMove !== !1 && (l.animating === !0 ? (l.swipeLeft = null, !1) : void l.setCSS(l.swipeLeft))))
  }, e.prototype.swipeStart = function(i) {
    var e, t = this;
    return t.interrupted = !0, 1 !== t.touchObject.fingerCount || t.slideCount <= t.options.slidesToShow ? (t.touchObject = {}, !1) : (void 0 !== i.originalEvent && void 0 !== i.originalEvent.touches && (e = i.originalEvent.touches[0]), t.touchObject.startX = t.touchObject.curX = void 0 !== e ? e.pageX : i.clientX, t.touchObject.startY = t.touchObject.curY = void 0 !== e ? e.pageY : i.clientY, void(t.dragging = !0))
  }, e.prototype.unfilterSlides = e.prototype.slickUnfilter = function() {
    var i = this;
    null !== i.$slidesCache && (i.unload(), i.$slideTrack.children(this.options.slide).detach(), i.$slidesCache.appendTo(i.$slideTrack), i.reinit())
  }, e.prototype.unload = function() {
    var e = this;
    i(".slick-cloned", e.$slider).remove(), e.$dots && e.$dots.remove(), e.$prevArrow && e.htmlExpr.test(e.options.prevArrow) && e.$prevArrow.remove(), e.$nextArrow && e.htmlExpr.test(e.options.nextArrow) && e.$nextArrow.remove(), e.$slides.removeClass("slick-slide slick-active slick-visible slick-current").attr("aria-hidden", "true").css("width", "")
  }, e.prototype.unslick = function(i) {
    var e = this;
    e.$slider.trigger("unslick", [e, i]), e.destroy()
  }, e.prototype.updateArrows = function() {
    var i, e = this;
    i = Math.floor(e.options.slidesToShow / 2), e.options.arrows === !0 && e.slideCount > e.options.slidesToShow && !e.options.infinite && (e.$prevArrow.removeClass("slick-disabled").attr("aria-disabled", "false"), e.$nextArrow.removeClass("slick-disabled").attr("aria-disabled", "false"), 0 === e.currentSlide ? (e.$prevArrow.addClass("slick-disabled").attr("aria-disabled", "true"), e.$nextArrow.removeClass("slick-disabled").attr("aria-disabled", "false")) : e.currentSlide >= e.slideCount - e.options.slidesToShow && e.options.centerMode === !1 ? (e.$nextArrow.addClass("slick-disabled").attr("aria-disabled", "true"), e.$prevArrow.removeClass("slick-disabled").attr("aria-disabled", "false")) : e.currentSlide >= e.slideCount - 1 && e.options.centerMode === !0 && (e.$nextArrow.addClass("slick-disabled").attr("aria-disabled", "true"), e.$prevArrow.removeClass("slick-disabled").attr("aria-disabled", "false")))
  }, e.prototype.updateDots = function() {
    var i = this;
    null !== i.$dots && (i.$dots.find("li").removeClass("slick-active").end(), i.$dots.find("li").eq(Math.floor(i.currentSlide / i.options.slidesToScroll)).addClass("slick-active"))
  }, e.prototype.visibility = function() {
    var i = this;
    i.options.autoplay && (document[i.hidden] ? i.interrupted = !0 : i.interrupted = !1)
  }, i.fn.slick = function() {
    var i, t, o = this,
      s = arguments[0],
      n = Array.prototype.slice.call(arguments, 1),
      r = o.length;
    for (i = 0; i < r; i++)
      if ("object" == typeof s || "undefined" == typeof s ? o[i].slick = new e(o[i], s) : t = o[i].slick[s].apply(o[i].slick, n), "undefined" != typeof t) return t;
    return o
  }
});


/* jQuery elevateZoom 3.0.8 - Demo's and documentation: - www.elevateweb.co.uk/image-zoom - Copyright (c) 2013 Andrew Eades - www.elevateweb.co.uk - Dual licensed under the LGPL licenses. - http://en.wikipedia.org/wiki/MIT_License - http://en.wikipedia.org/wiki/GNU_General_Public_License */
"function" !== typeof Object.create && (Object.create = function(d) {
  function h() {}
  h.prototype = d;
  return new h
});
(function(d, h, l, m) {
  var k = {
    init: function(b, a) {
      var c = this;
      c.elem = a;
      c.$elem = d(a);
      c.imageSrc = c.$elem.data("zoom-image") ? c.$elem.data("zoom-image") : c.$elem.attr("src");
      c.options = d.extend({}, d.fn.elevateZoom.options, b);
      c.options.tint && (c.options.lensColour = "none", c.options.lensOpacity = "1");
      "inner" == c.options.zoomType && (c.options.showLens = !1);
      c.$elem.parent().removeAttr("title").removeAttr("alt");
      c.zoomImage = c.imageSrc;
      c.refresh(1);
      d("#" + c.options.gallery + " a").click(function(a) {
        c.options.galleryActiveClass &&
          (d("#" + c.options.gallery + " a").removeClass(c.options.galleryActiveClass), d(this).addClass(c.options.galleryActiveClass));
        a.preventDefault();
        d(this).data("zoom-image") ? c.zoomImagePre = d(this).data("zoom-image") : c.zoomImagePre = d(this).data("image");
        c.swaptheimage(d(this).data("image"), c.zoomImagePre);
        return !1
      })
    },
    refresh: function(b) {
      var a = this;
      setTimeout(function() {
        a.fetch(a.imageSrc)
      }, b || a.options.refresh)
    },
    fetch: function(b) {
      var a = this,
        c = new Image;
      c.onload = function() {
        a.largeWidth = c.width;
        a.largeHeight =
          c.height;
        a.startZoom();
        a.currentImage = a.imageSrc;
        a.options.onZoomedImageLoaded(a.$elem)
      };
      c.src = b
    },
    startZoom: function() {
      var b = this;
      b.nzWidth = b.$elem.width();
      b.nzHeight = b.$elem.height();
      b.isWindowActive = !1;
      b.isLensActive = !1;
      b.isTintActive = !1;
      b.overWindow = !1;
      b.options.imageCrossfade && (b.zoomWrap = b.$elem.wrap('<div style="height:' + b.nzHeight + "px;width:" + b.nzWidth + 'px;" class="zoomWrapper" />'), b.$elem.css("position", "absolute"));
      b.zoomLock = 1;
      b.scrollingLock = !1;
      b.changeBgSize = !1;
      b.currentZoomLevel = b.options.zoomLevel;
      b.nzOffset = b.$elem.offset();
      b.widthRatio = b.largeWidth / b.currentZoomLevel / b.nzWidth;
      b.heightRatio = b.largeHeight / b.currentZoomLevel / b.nzHeight;
      "window" == b.options.zoomType && (b.zoomWindowStyle = "overflow: hidden;background-position: 0px 0px;text-align:center;background-color: " + String(b.options.zoomWindowBgColour) + ";width: " + String(b.options.zoomWindowWidth) + "px;height: " + String(b.options.zoomWindowHeight) + "px;float: left;background-size: " + b.largeWidth / b.currentZoomLevel + "px " + b.largeHeight / b.currentZoomLevel +
        "px;display: none;z-index:100;border: " + String(b.options.borderSize) + "px solid " + b.options.borderColour + ";background-repeat: no-repeat;position: absolute;");
      if ("inner" == b.options.zoomType) {
        var a = b.$elem.css("border-left-width");
        b.zoomWindowStyle = "overflow: hidden;margin-left: " + String(a) + ";margin-top: " + String(a) + ";background-position: 0px 0px;width: " + String(b.nzWidth) + "px;height: " + String(b.nzHeight) + "px;float: left;display: none;cursor:" + b.options.cursor + ";px solid " + b.options.borderColour + ";background-repeat: no-repeat;position: absolute;"
      }
      "window" ==
      b.options.zoomType && (lensHeight = b.nzHeight < b.options.zoomWindowWidth / b.widthRatio ? b.nzHeight : String(b.options.zoomWindowHeight / b.heightRatio), lensWidth = b.largeWidth < b.options.zoomWindowWidth ? b.nzWidth : b.options.zoomWindowWidth / b.widthRatio, b.lensStyle = "background-position: 0px 0px;width: " + String(b.options.zoomWindowWidth / b.widthRatio) + "px;height: " + String(b.options.zoomWindowHeight / b.heightRatio) + "px;float: right;display: none;overflow: hidden;z-index: 999;-webkit-transform: translateZ(0);opacity:" +
        b.options.lensOpacity + ";filter: alpha(opacity = " + 100 * b.options.lensOpacity + "); zoom:1;width:" + lensWidth + "px;height:" + lensHeight + "px;background-color:" + b.options.lensColour + ";cursor:" + b.options.cursor + ";border: " + b.options.lensBorderSize + "px solid " + b.options.lensBorderColour + ";background-repeat: no-repeat;position: absolute;");
      b.tintStyle = "display: block;position: absolute;background-color: " + b.options.tintColour + ";filter:alpha(opacity=0);opacity: 0;width: " + b.nzWidth + "px;height: " + b.nzHeight + "px;";
      b.lensRound = "";
      "lens" == b.options.zoomType && (b.lensStyle = "background-position: 0px 0px;float: left;display: none;border: " + String(b.options.borderSize) + "px solid " + b.options.borderColour + ";width:" + String(b.options.lensSize) + "px;height:" + String(b.options.lensSize) + "px;background-repeat: no-repeat;position: absolute;");
      "round" == b.options.lensShape && (b.lensRound = "border-top-left-radius: " + String(b.options.lensSize / 2 + b.options.borderSize) + "px;border-top-right-radius: " + String(b.options.lensSize / 2 + b.options.borderSize) +
        "px;border-bottom-left-radius: " + String(b.options.lensSize / 2 + b.options.borderSize) + "px;border-bottom-right-radius: " + String(b.options.lensSize / 2 + b.options.borderSize) + "px;");
      b.zoomContainer = d('<div class="zoomContainer" style="-webkit-transform: translateZ(0);position:absolute;left:' + b.nzOffset.left + "px;top:" + b.nzOffset.top + "px;height:" + b.nzHeight + "px;width:" + b.nzWidth + 'px;"></div>');
      d("body").append(b.zoomContainer);
      b.options.containLensZoom && "lens" == b.options.zoomType && b.zoomContainer.css("overflow",
        "hidden");
      "inner" != b.options.zoomType && (b.zoomLens = d("<div class='zoomLens' style='" + b.lensStyle + b.lensRound + "'>&nbsp;</div>").appendTo(b.zoomContainer).click(function() {
        b.$elem.trigger("click")
      }), b.options.tint && (b.tintContainer = d("<div/>").addClass("tintContainer"), b.zoomTint = d("<div class='zoomTint' style='" + b.tintStyle + "'></div>"), b.zoomLens.wrap(b.tintContainer), b.zoomTintcss = b.zoomLens.after(b.zoomTint), b.zoomTintImage = d('<img style="position: absolute; left: 0px; top: 0px; max-width: none; width: ' +
        b.nzWidth + "px; height: " + b.nzHeight + 'px;" src="' + b.imageSrc + '">').appendTo(b.zoomLens).click(function() {
        b.$elem.trigger("click")
      })));
      isNaN(b.options.zoomWindowPosition) ? b.zoomWindow = d("<div style='z-index:999;left:" + b.windowOffsetLeft + "px;top:" + b.windowOffsetTop + "px;" + b.zoomWindowStyle + "' class='zoomWindow'>&nbsp;</div>").appendTo("body").click(function() {
        b.$elem.trigger("click")
      }) : b.zoomWindow = d("<div style='z-index:999;left:" + b.windowOffsetLeft + "px;top:" + b.windowOffsetTop + "px;" + b.zoomWindowStyle +
        "' class='zoomWindow'>&nbsp;</div>").appendTo(b.zoomContainer).click(function() {
        b.$elem.trigger("click")
      });
      b.zoomWindowContainer = d("<div/>").addClass("zoomWindowContainer").css("width", b.options.zoomWindowWidth);
      b.zoomWindow.wrap(b.zoomWindowContainer);
      "lens" == b.options.zoomType && b.zoomLens.css({
        backgroundImage: "url('" + b.imageSrc + "')"
      });
      "window" == b.options.zoomType && b.zoomWindow.css({
        backgroundImage: "url('" + b.imageSrc + "')"
      });
      "inner" == b.options.zoomType && b.zoomWindow.css({
        backgroundImage: "url('" + b.imageSrc +
          "')"
      });
      b.$elem.bind("touchmove", function(a) {
        a.preventDefault();
        b.setPosition(a.originalEvent.touches[0] || a.originalEvent.changedTouches[0])
      });
      b.zoomContainer.bind("touchmove", function(a) {
        "inner" == b.options.zoomType && b.showHideWindow("show");
        a.preventDefault();
        b.setPosition(a.originalEvent.touches[0] || a.originalEvent.changedTouches[0])
      });
      b.zoomContainer.bind("touchend", function(a) {
        b.showHideWindow("hide");
        b.options.showLens && b.showHideLens("hide");
        b.options.tint && "inner" != b.options.zoomType && b.showHideTint("hide")
      });
      b.$elem.bind("touchend", function(a) {
        b.showHideWindow("hide");
        b.options.showLens && b.showHideLens("hide");
        b.options.tint && "inner" != b.options.zoomType && b.showHideTint("hide")
      });
      b.options.showLens && (b.zoomLens.bind("touchmove", function(a) {
        a.preventDefault();
        b.setPosition(a.originalEvent.touches[0] || a.originalEvent.changedTouches[0])
      }), b.zoomLens.bind("touchend", function(a) {
        b.showHideWindow("hide");
        b.options.showLens && b.showHideLens("hide");
        b.options.tint && "inner" != b.options.zoomType && b.showHideTint("hide")
      }));
      b.$elem.bind("mousemove", function(a) {
        !1 == b.overWindow && b.setElements("show");
        if (b.lastX !== a.clientX || b.lastY !== a.clientY) b.setPosition(a), b.currentLoc = a;
        b.lastX = a.clientX;
        b.lastY = a.clientY
      });
      b.zoomContainer.bind("mousemove", function(a) {
        !1 == b.overWindow && b.setElements("show");
        if (b.lastX !== a.clientX || b.lastY !== a.clientY) b.setPosition(a), b.currentLoc = a;
        b.lastX = a.clientX;
        b.lastY = a.clientY
      });
      "inner" != b.options.zoomType && b.zoomLens.bind("mousemove", function(a) {
        if (b.lastX !== a.clientX || b.lastY !== a.clientY) b.setPosition(a),
          b.currentLoc = a;
        b.lastX = a.clientX;
        b.lastY = a.clientY
      });
      b.options.tint && "inner" != b.options.zoomType && b.zoomTint.bind("mousemove", function(a) {
        if (b.lastX !== a.clientX || b.lastY !== a.clientY) b.setPosition(a), b.currentLoc = a;
        b.lastX = a.clientX;
        b.lastY = a.clientY
      });
      "inner" == b.options.zoomType && b.zoomWindow.bind("mousemove", function(a) {
        if (b.lastX !== a.clientX || b.lastY !== a.clientY) b.setPosition(a), b.currentLoc = a;
        b.lastX = a.clientX;
        b.lastY = a.clientY
      });
      b.zoomContainer.add(b.$elem).mouseenter(function() {
        !1 == b.overWindow &&
          b.setElements("show")
      }).mouseleave(function() {
        b.scrollLock || b.setElements("hide")
      });
      "inner" != b.options.zoomType && b.zoomWindow.mouseenter(function() {
        b.overWindow = !0;
        b.setElements("hide")
      }).mouseleave(function() {
        b.overWindow = !1
      });
      b.minZoomLevel = b.options.minZoomLevel ? b.options.minZoomLevel : 2 * b.options.scrollZoomIncrement;
      b.options.scrollZoom && b.zoomContainer.add(b.$elem).bind("mousewheel DOMMouseScroll MozMousePixelScroll", function(a) {
        b.scrollLock = !0;
        clearTimeout(d.data(this, "timer"));
        d.data(this, "timer",
          setTimeout(function() {
            b.scrollLock = !1
          }, 250));
        var e = a.originalEvent.wheelDelta || -1 * a.originalEvent.detail;
        a.stopImmediatePropagation();
        a.stopPropagation();
        a.preventDefault();
        0 < e / 120 ? b.currentZoomLevel >= b.minZoomLevel && b.changeZoomLevel(b.currentZoomLevel - b.options.scrollZoomIncrement) : b.options.maxZoomLevel ? b.currentZoomLevel <= b.options.maxZoomLevel && b.changeZoomLevel(parseFloat(b.currentZoomLevel) + b.options.scrollZoomIncrement) : b.changeZoomLevel(parseFloat(b.currentZoomLevel) + b.options.scrollZoomIncrement);
        return !1
      })
    },
    setElements: function(b) {
      if (!this.options.zoomEnabled) return !1;
      "show" == b && this.isWindowSet && ("inner" == this.options.zoomType && this.showHideWindow("show"), "window" == this.options.zoomType && this.showHideWindow("show"), this.options.showLens && this.showHideLens("show"), this.options.tint && "inner" != this.options.zoomType && this.showHideTint("show"));
      "hide" == b && ("window" == this.options.zoomType && this.showHideWindow("hide"), this.options.tint || this.showHideWindow("hide"), this.options.showLens && this.showHideLens("hide"),
        this.options.tint && this.showHideTint("hide"))
    },
    setPosition: function(b) {
      if (!this.options.zoomEnabled) return !1;
      this.nzHeight = this.$elem.height();
      this.nzWidth = this.$elem.width();
      this.nzOffset = this.$elem.offset();
      this.options.tint && "inner" != this.options.zoomType && (this.zoomTint.css({
        top: 0
      }), this.zoomTint.css({
        left: 0
      }));
      this.options.responsive && !this.options.scrollZoom && this.options.showLens && (lensHeight = this.nzHeight < this.options.zoomWindowWidth / this.widthRatio ? this.nzHeight : String(this.options.zoomWindowHeight /
        this.heightRatio), lensWidth = this.largeWidth < this.options.zoomWindowWidth ? this.nzWidth : this.options.zoomWindowWidth / this.widthRatio, this.widthRatio = this.largeWidth / this.nzWidth, this.heightRatio = this.largeHeight / this.nzHeight, "lens" != this.options.zoomType && (lensHeight = this.nzHeight < this.options.zoomWindowWidth / this.widthRatio ? this.nzHeight : String(this.options.zoomWindowHeight / this.heightRatio), lensWidth = this.options.zoomWindowWidth < this.options.zoomWindowWidth ? this.nzWidth : this.options.zoomWindowWidth /
        this.widthRatio, this.zoomLens.css("width", lensWidth), this.zoomLens.css("height", lensHeight), this.options.tint && (this.zoomTintImage.css("width", this.nzWidth), this.zoomTintImage.css("height", this.nzHeight))), "lens" == this.options.zoomType && this.zoomLens.css({
        width: String(this.options.lensSize) + "px",
        height: String(this.options.lensSize) + "px"
      }));
      this.zoomContainer.css({
        top: this.nzOffset.top
      });
      this.zoomContainer.css({
        left: this.nzOffset.left
      });
      this.mouseLeft = parseInt(b.pageX - this.nzOffset.left);
      this.mouseTop =
        parseInt(b.pageY - this.nzOffset.top);
      "window" == this.options.zoomType && (this.Etoppos = this.mouseTop < this.zoomLens.height() / 2, this.Eboppos = this.mouseTop > this.nzHeight - this.zoomLens.height() / 2 - 2 * this.options.lensBorderSize, this.Eloppos = this.mouseLeft < 0 + this.zoomLens.width() / 2, this.Eroppos = this.mouseLeft > this.nzWidth - this.zoomLens.width() / 2 - 2 * this.options.lensBorderSize);
      "inner" == this.options.zoomType && (this.Etoppos = this.mouseTop < this.nzHeight / 2 / this.heightRatio, this.Eboppos = this.mouseTop > this.nzHeight -
        this.nzHeight / 2 / this.heightRatio, this.Eloppos = this.mouseLeft < 0 + this.nzWidth / 2 / this.widthRatio, this.Eroppos = this.mouseLeft > this.nzWidth - this.nzWidth / 2 / this.widthRatio - 2 * this.options.lensBorderSize);
      0 >= this.mouseLeft || 0 > this.mouseTop || this.mouseLeft > this.nzWidth || this.mouseTop > this.nzHeight ? this.setElements("hide") : (this.options.showLens && (this.lensLeftPos = String(this.mouseLeft - this.zoomLens.width() / 2), this.lensTopPos = String(this.mouseTop - this.zoomLens.height() / 2)), this.Etoppos && (this.lensTopPos = 0),
        this.Eloppos && (this.tintpos = this.lensLeftPos = this.windowLeftPos = 0), "window" == this.options.zoomType && (this.Eboppos && (this.lensTopPos = Math.max(this.nzHeight - this.zoomLens.height() - 2 * this.options.lensBorderSize, 0)), this.Eroppos && (this.lensLeftPos = this.nzWidth - this.zoomLens.width() - 2 * this.options.lensBorderSize)), "inner" == this.options.zoomType && (this.Eboppos && (this.lensTopPos = Math.max(this.nzHeight - 2 * this.options.lensBorderSize, 0)), this.Eroppos && (this.lensLeftPos = this.nzWidth - this.nzWidth - 2 * this.options.lensBorderSize)),
        "lens" == this.options.zoomType && (this.windowLeftPos = String(-1 * ((b.pageX - this.nzOffset.left) * this.widthRatio - this.zoomLens.width() / 2)), this.windowTopPos = String(-1 * ((b.pageY - this.nzOffset.top) * this.heightRatio - this.zoomLens.height() / 2)), this.zoomLens.css({
          backgroundPosition: this.windowLeftPos + "px " + this.windowTopPos + "px"
        }), this.changeBgSize && (this.nzHeight > this.nzWidth ? ("lens" == this.options.zoomType && this.zoomLens.css({
          "background-size": this.largeWidth / this.newvalueheight + "px " + this.largeHeight / this.newvalueheight +
            "px"
        }), this.zoomWindow.css({
          "background-size": this.largeWidth / this.newvalueheight + "px " + this.largeHeight / this.newvalueheight + "px"
        })) : ("lens" == this.options.zoomType && this.zoomLens.css({
          "background-size": this.largeWidth / this.newvaluewidth + "px " + this.largeHeight / this.newvaluewidth + "px"
        }), this.zoomWindow.css({
          "background-size": this.largeWidth / this.newvaluewidth + "px " + this.largeHeight / this.newvaluewidth + "px"
        })), this.changeBgSize = !1), this.setWindowPostition(b)), this.options.tint && "inner" != this.options.zoomType &&
        this.setTintPosition(b), "window" == this.options.zoomType && this.setWindowPostition(b), "inner" == this.options.zoomType && this.setWindowPostition(b), this.options.showLens && (this.fullwidth && "lens" != this.options.zoomType && (this.lensLeftPos = 0), this.zoomLens.css({
          left: this.lensLeftPos + "px",
          top: this.lensTopPos + "px"
        })))
    },
    showHideWindow: function(b) {
      "show" != b || this.isWindowActive || (this.options.zoomWindowFadeIn ? this.zoomWindow.stop(!0, !0, !1).fadeIn(this.options.zoomWindowFadeIn) : this.zoomWindow.show(), this.isWindowActive = !0);
      "hide" == b && this.isWindowActive && (this.options.zoomWindowFadeOut ? this.zoomWindow.stop(!0, !0).fadeOut(this.options.zoomWindowFadeOut) : this.zoomWindow.hide(), this.isWindowActive = !1)
    },
    showHideLens: function(b) {
      "show" != b || this.isLensActive || (this.options.lensFadeIn ? this.zoomLens.stop(!0, !0, !1).fadeIn(this.options.lensFadeIn) : this.zoomLens.show(), this.isLensActive = !0);
      "hide" == b && this.isLensActive && (this.options.lensFadeOut ? this.zoomLens.stop(!0, !0).fadeOut(this.options.lensFadeOut) : this.zoomLens.hide(),
        this.isLensActive = !1)
    },
    showHideTint: function(b) {
      "show" != b || this.isTintActive || (this.options.zoomTintFadeIn ? this.zoomTint.css({
        opacity: this.options.tintOpacity
      }).animate().stop(!0, !0).fadeIn("slow") : (this.zoomTint.css({
        opacity: this.options.tintOpacity
      }).animate(), this.zoomTint.show()), this.isTintActive = !0);
      "hide" == b && this.isTintActive && (this.options.zoomTintFadeOut ? this.zoomTint.stop(!0, !0).fadeOut(this.options.zoomTintFadeOut) : this.zoomTint.hide(), this.isTintActive = !1)
    },
    setLensPostition: function(b) {},
    setWindowPostition: function(b) {
      var a = this;
      if (isNaN(a.options.zoomWindowPosition)) a.externalContainer = d("#" + a.options.zoomWindowPosition), a.externalContainerWidth = a.externalContainer.width(), a.externalContainerHeight = a.externalContainer.height(), a.externalContainerOffset = a.externalContainer.offset(), a.windowOffsetTop = a.externalContainerOffset.top, a.windowOffsetLeft = a.externalContainerOffset.left;
      else switch (a.options.zoomWindowPosition) {
        case 1:
          a.windowOffsetTop = a.options.zoomWindowOffety;
          a.windowOffsetLeft = +a.nzWidth;
          break;
        case 2:
          a.options.zoomWindowHeight > a.nzHeight && (a.windowOffsetTop = -1 * (a.options.zoomWindowHeight / 2 - a.nzHeight / 2), a.windowOffsetLeft = a.nzWidth);
          break;
        case 3:
          a.windowOffsetTop = a.nzHeight - a.zoomWindow.height() - 2 * a.options.borderSize;
          a.windowOffsetLeft = a.nzWidth;
          break;
        case 4:
          a.windowOffsetTop = a.nzHeight;
          a.windowOffsetLeft = a.nzWidth;
          break;
        case 5:
          a.windowOffsetTop = a.nzHeight;
          a.windowOffsetLeft = a.nzWidth - a.zoomWindow.width() - 2 * a.options.borderSize;
          break;
        case 6:
          a.options.zoomWindowHeight >
            a.nzHeight && (a.windowOffsetTop = a.nzHeight, a.windowOffsetLeft = -1 * (a.options.zoomWindowWidth / 2 - a.nzWidth / 2 + 2 * a.options.borderSize));
          break;
        case 7:
          a.windowOffsetTop = a.nzHeight;
          a.windowOffsetLeft = 0;
          break;
        case 8:
          a.windowOffsetTop = a.nzHeight;
          a.windowOffsetLeft = -1 * (a.zoomWindow.width() + 2 * a.options.borderSize);
          break;
        case 9:
          a.windowOffsetTop = a.nzHeight - a.zoomWindow.height() - 2 * a.options.borderSize;
          a.windowOffsetLeft = -1 * (a.zoomWindow.width() + 2 * a.options.borderSize);
          break;
        case 10:
          a.options.zoomWindowHeight > a.nzHeight &&
            (a.windowOffsetTop = -1 * (a.options.zoomWindowHeight / 2 - a.nzHeight / 2), a.windowOffsetLeft = -1 * (a.zoomWindow.width() + 2 * a.options.borderSize));
          break;
        case 11:
          a.windowOffsetTop = a.options.zoomWindowOffety;
          a.windowOffsetLeft = -1 * (a.zoomWindow.width() + 2 * a.options.borderSize);
          break;
        case 12:
          a.windowOffsetTop = -1 * (a.zoomWindow.height() + 2 * a.options.borderSize);
          a.windowOffsetLeft = -1 * (a.zoomWindow.width() + 2 * a.options.borderSize);
          break;
        case 13:
          a.windowOffsetTop = -1 * (a.zoomWindow.height() + 2 * a.options.borderSize);
          a.windowOffsetLeft =
            0;
          break;
        case 14:
          a.options.zoomWindowHeight > a.nzHeight && (a.windowOffsetTop = -1 * (a.zoomWindow.height() + 2 * a.options.borderSize), a.windowOffsetLeft = -1 * (a.options.zoomWindowWidth / 2 - a.nzWidth / 2 + 2 * a.options.borderSize));
          break;
        case 15:
          a.windowOffsetTop = -1 * (a.zoomWindow.height() + 2 * a.options.borderSize);
          a.windowOffsetLeft = a.nzWidth - a.zoomWindow.width() - 2 * a.options.borderSize;
          break;
        case 16:
          a.windowOffsetTop = -1 * (a.zoomWindow.height() + 2 * a.options.borderSize);
          a.windowOffsetLeft = a.nzWidth;
          break;
        default:
          a.windowOffsetTop =
            a.options.zoomWindowOffety, a.windowOffsetLeft = a.nzWidth
      }
      a.isWindowSet = !0;
      a.windowOffsetTop += a.options.zoomWindowOffety;
      a.windowOffsetLeft += a.options.zoomWindowOffetx;
      a.zoomWindow.css({
        top: a.windowOffsetTop
      });
      a.zoomWindow.css({
        left: a.windowOffsetLeft
      });
      "inner" == a.options.zoomType && (a.zoomWindow.css({
        top: 0
      }), a.zoomWindow.css({
        left: 0
      }));
      a.windowLeftPos = String(-1 * ((b.pageX - a.nzOffset.left) * a.widthRatio - a.zoomWindow.width() / 2));
      a.windowTopPos = String(-1 * ((b.pageY - a.nzOffset.top) * a.heightRatio - a.zoomWindow.height() /
        2));
      a.Etoppos && (a.windowTopPos = 0);
      a.Eloppos && (a.windowLeftPos = 0);
      a.Eboppos && (a.windowTopPos = -1 * (a.largeHeight / a.currentZoomLevel - a.zoomWindow.height()));
      a.Eroppos && (a.windowLeftPos = -1 * (a.largeWidth / a.currentZoomLevel - a.zoomWindow.width()));
      a.fullheight && (a.windowTopPos = 0);
      a.fullwidth && (a.windowLeftPos = 0);
      if ("window" == a.options.zoomType || "inner" == a.options.zoomType) 1 == a.zoomLock && (1 >= a.widthRatio && (a.windowLeftPos = 0), 1 >= a.heightRatio && (a.windowTopPos = 0)), a.largeHeight < a.options.zoomWindowHeight && (a.windowTopPos =
        0), a.largeWidth < a.options.zoomWindowWidth && (a.windowLeftPos = 0), a.options.easing ? (a.xp || (a.xp = 0), a.yp || (a.yp = 0), a.loop || (a.loop = setInterval(function() {
        a.xp += (a.windowLeftPos - a.xp) / a.options.easingAmount;
        a.yp += (a.windowTopPos - a.yp) / a.options.easingAmount;
        a.scrollingLock ? (clearInterval(a.loop), a.xp = a.windowLeftPos, a.yp = a.windowTopPos, a.xp = -1 * ((b.pageX - a.nzOffset.left) * a.widthRatio - a.zoomWindow.width() / 2), a.yp = -1 * ((b.pageY - a.nzOffset.top) * a.heightRatio - a.zoomWindow.height() / 2), a.changeBgSize && (a.nzHeight >
          a.nzWidth ? ("lens" == a.options.zoomType && a.zoomLens.css({
            "background-size": a.largeWidth / a.newvalueheight + "px " + a.largeHeight / a.newvalueheight + "px"
          }), a.zoomWindow.css({
            "background-size": a.largeWidth / a.newvalueheight + "px " + a.largeHeight / a.newvalueheight + "px"
          })) : ("lens" != a.options.zoomType && a.zoomLens.css({
            "background-size": a.largeWidth / a.newvaluewidth + "px " + a.largeHeight / a.newvalueheight + "px"
          }), a.zoomWindow.css({
            "background-size": a.largeWidth / a.newvaluewidth + "px " + a.largeHeight / a.newvaluewidth + "px"
          })),
          a.changeBgSize = !1), a.zoomWindow.css({
          backgroundPosition: a.windowLeftPos + "px " + a.windowTopPos + "px"
        }), a.scrollingLock = !1, a.loop = !1) : (a.changeBgSize && (a.nzHeight > a.nzWidth ? ("lens" == a.options.zoomType && a.zoomLens.css({
          "background-size": a.largeWidth / a.newvalueheight + "px " + a.largeHeight / a.newvalueheight + "px"
        }), a.zoomWindow.css({
          "background-size": a.largeWidth / a.newvalueheight + "px " + a.largeHeight / a.newvalueheight + "px"
        })) : ("lens" != a.options.zoomType && a.zoomLens.css({
          "background-size": a.largeWidth / a.newvaluewidth +
            "px " + a.largeHeight / a.newvaluewidth + "px"
        }), a.zoomWindow.css({
          "background-size": a.largeWidth / a.newvaluewidth + "px " + a.largeHeight / a.newvaluewidth + "px"
        })), a.changeBgSize = !1), a.zoomWindow.css({
          backgroundPosition: a.xp + "px " + a.yp + "px"
        }))
      }, 16))) : (a.changeBgSize && (a.nzHeight > a.nzWidth ? ("lens" == a.options.zoomType && a.zoomLens.css({
        "background-size": a.largeWidth / a.newvalueheight + "px " + a.largeHeight / a.newvalueheight + "px"
      }), a.zoomWindow.css({
        "background-size": a.largeWidth / a.newvalueheight + "px " + a.largeHeight /
          a.newvalueheight + "px"
      })) : ("lens" == a.options.zoomType && a.zoomLens.css({
        "background-size": a.largeWidth / a.newvaluewidth + "px " + a.largeHeight / a.newvaluewidth + "px"
      }), a.largeHeight / a.newvaluewidth < a.options.zoomWindowHeight ? a.zoomWindow.css({
        "background-size": a.largeWidth / a.newvaluewidth + "px " + a.largeHeight / a.newvaluewidth + "px"
      }) : a.zoomWindow.css({
        "background-size": a.largeWidth / a.newvalueheight + "px " + a.largeHeight / a.newvalueheight + "px"
      })), a.changeBgSize = !1), a.zoomWindow.css({
        backgroundPosition: a.windowLeftPos +
          "px " + a.windowTopPos + "px"
      }))
    },
    setTintPosition: function(b) {
      this.nzOffset = this.$elem.offset();
      this.tintpos = String(-1 * (b.pageX - this.nzOffset.left - this.zoomLens.width() / 2));
      this.tintposy = String(-1 * (b.pageY - this.nzOffset.top - this.zoomLens.height() / 2));
      this.Etoppos && (this.tintposy = 0);
      this.Eloppos && (this.tintpos = 0);
      this.Eboppos && (this.tintposy = -1 * (this.nzHeight - this.zoomLens.height() - 2 * this.options.lensBorderSize));
      this.Eroppos && (this.tintpos = -1 * (this.nzWidth - this.zoomLens.width() - 2 * this.options.lensBorderSize));
      this.options.tint && (this.fullheight && (this.tintposy = 0), this.fullwidth && (this.tintpos = 0), this.zoomTintImage.css({
        left: this.tintpos + "px"
      }), this.zoomTintImage.css({
        top: this.tintposy + "px"
      }))
    },
    swaptheimage: function(b, a) {
      var c = this,
        e = new Image;
      c.options.loadingIcon && (c.spinner = d("<div style=\"background: url('" + c.options.loadingIcon + "') no-repeat center;height:" + c.nzHeight + "px;width:" + c.nzWidth + 'px;z-index: 2000;position: absolute; background-position: center center;"></div>'), c.$elem.after(c.spinner));
      c.options.onImageSwap(c.$elem);
      e.onload = function() {
        c.largeWidth = e.width;
        c.largeHeight = e.height;
        c.zoomImage = a;
        c.zoomWindow.css({
          "background-size": c.largeWidth + "px " + c.largeHeight + "px"
        });
        c.zoomWindow.css({
          "background-size": c.largeWidth + "px " + c.largeHeight + "px"
        });
        c.swapAction(b, a)
      };
      e.src = a
    },
    swapAction: function(b, a) {
      var c = this,
        e = new Image;
      e.onload = function() {
        c.nzHeight = e.height;
        c.nzWidth = e.width;
        c.options.onImageSwapComplete(c.$elem);
        c.doneCallback()
      };
      e.src = b;
      c.currentZoomLevel = c.options.zoomLevel;
      c.options.maxZoomLevel = !1;
      "lens" == c.options.zoomType && c.zoomLens.css({
        backgroundImage: "url('" + a + "')"
      });
      "window" == c.options.zoomType && c.zoomWindow.css({
        backgroundImage: "url('" + a + "')"
      });
      "inner" == c.options.zoomType && c.zoomWindow.css({
        backgroundImage: "url('" + a + "')"
      });
      c.currentImage = a;
      if (c.options.imageCrossfade) {
        var f = c.$elem,
          g = f.clone();
        c.$elem.attr("src", b);
        c.$elem.after(g);
        g.stop(!0).fadeOut(c.options.imageCrossfade, function() {
          d(this).remove()
        });
        c.$elem.width("auto").removeAttr("width");
        c.$elem.height("auto").removeAttr("height");
        f.fadeIn(c.options.imageCrossfade);
        c.options.tint && "inner" != c.options.zoomType && (f = c.zoomTintImage, g = f.clone(), c.zoomTintImage.attr("src", a), c.zoomTintImage.after(g), g.stop(!0).fadeOut(c.options.imageCrossfade, function() {
          d(this).remove()
        }), f.fadeIn(c.options.imageCrossfade), c.zoomTint.css({
          height: c.$elem.height()
        }), c.zoomTint.css({
          width: c.$elem.width()
        }));
        c.zoomContainer.css("height", c.$elem.height());
        c.zoomContainer.css("width", c.$elem.width());
        "inner" != c.options.zoomType || c.options.constrainType ||
          (c.zoomWrap.parent().css("height", c.$elem.height()), c.zoomWrap.parent().css("width", c.$elem.width()), c.zoomWindow.css("height", c.$elem.height()), c.zoomWindow.css("width", c.$elem.width()))
      } else c.$elem.attr("src", b), c.options.tint && (c.zoomTintImage.attr("src", a), c.zoomTintImage.attr("height", c.$elem.height()), c.zoomTintImage.css({
        height: c.$elem.height()
      }), c.zoomTint.css({
        height: c.$elem.height()
      })), c.zoomContainer.css("height", c.$elem.height()), c.zoomContainer.css("width", c.$elem.width());
      c.options.imageCrossfade &&
        (c.zoomWrap.css("height", c.$elem.height()), c.zoomWrap.css("width", c.$elem.width()));
      c.options.constrainType && ("height" == c.options.constrainType && (c.zoomContainer.css("height", c.options.constrainSize), c.zoomContainer.css("width", "auto"), c.options.imageCrossfade ? (c.zoomWrap.css("height", c.options.constrainSize), c.zoomWrap.css("width", "auto"), c.constwidth = c.zoomWrap.width()) : (c.$elem.css("height", c.options.constrainSize), c.$elem.css("width", "auto"), c.constwidth = c.$elem.width()), "inner" == c.options.zoomType &&
          (c.zoomWrap.parent().css("height", c.options.constrainSize), c.zoomWrap.parent().css("width", c.constwidth), c.zoomWindow.css("height", c.options.constrainSize), c.zoomWindow.css("width", c.constwidth)), c.options.tint && (c.tintContainer.css("height", c.options.constrainSize), c.tintContainer.css("width", c.constwidth), c.zoomTint.css("height", c.options.constrainSize), c.zoomTint.css("width", c.constwidth), c.zoomTintImage.css("height", c.options.constrainSize), c.zoomTintImage.css("width", c.constwidth))), "width" ==
        c.options.constrainType && (c.zoomContainer.css("height", "auto"), c.zoomContainer.css("width", c.options.constrainSize), c.options.imageCrossfade ? (c.zoomWrap.css("height", "auto"), c.zoomWrap.css("width", c.options.constrainSize), c.constheight = c.zoomWrap.height()) : (c.$elem.css("height", "auto"), c.$elem.css("width", c.options.constrainSize), c.constheight = c.$elem.height()), "inner" == c.options.zoomType && (c.zoomWrap.parent().css("height", c.constheight), c.zoomWrap.parent().css("width", c.options.constrainSize), c.zoomWindow.css("height",
          c.constheight), c.zoomWindow.css("width", c.options.constrainSize)), c.options.tint && (c.tintContainer.css("height", c.constheight), c.tintContainer.css("width", c.options.constrainSize), c.zoomTint.css("height", c.constheight), c.zoomTint.css("width", c.options.constrainSize), c.zoomTintImage.css("height", c.constheight), c.zoomTintImage.css("width", c.options.constrainSize))))
    },
    doneCallback: function() {
      this.options.loadingIcon && this.spinner.hide();
      this.nzOffset = this.$elem.offset();
      this.nzWidth = this.$elem.width();
      this.nzHeight = this.$elem.height();
      this.currentZoomLevel = this.options.zoomLevel;
      this.widthRatio = this.largeWidth / this.nzWidth;
      this.heightRatio = this.largeHeight / this.nzHeight;
      "window" == this.options.zoomType && (lensHeight = this.nzHeight < this.options.zoomWindowWidth / this.widthRatio ? this.nzHeight : String(this.options.zoomWindowHeight / this.heightRatio), lensWidth = this.options.zoomWindowWidth < this.options.zoomWindowWidth ? this.nzWidth : this.options.zoomWindowWidth / this.widthRatio, this.zoomLens && (this.zoomLens.css("width",
        lensWidth), this.zoomLens.css("height", lensHeight)))
    },
    getCurrentImage: function() {
      return this.zoomImage
    },
    getGalleryList: function() {
      var b = this;
      b.gallerylist = [];
      b.options.gallery ? d("#" + b.options.gallery + " a").each(function() {
          var a = "";
          d(this).data("zoom-image") ? a = d(this).data("zoom-image") : d(this).data("image") && (a = d(this).data("image"));
          a == b.zoomImage ? b.gallerylist.unshift({
            href: "" + a + "",
            title: d(this).find("img").attr("title")
          }) : b.gallerylist.push({
            href: "" + a + "",
            title: d(this).find("img").attr("title")
          })
        }) :
        b.gallerylist.push({
          href: "" + b.zoomImage + "",
          title: d(this).find("img").attr("title")
        });
      return b.gallerylist
    },
    changeZoomLevel: function(b) {
      this.scrollingLock = !0;
      this.newvalue = parseFloat(b).toFixed(2);
      newvalue = parseFloat(b).toFixed(2);
      maxheightnewvalue = this.largeHeight / (this.options.zoomWindowHeight / this.nzHeight * this.nzHeight);
      maxwidthtnewvalue = this.largeWidth / (this.options.zoomWindowWidth / this.nzWidth * this.nzWidth);
      "inner" != this.options.zoomType && (maxheightnewvalue <= newvalue ? (this.heightRatio = this.largeHeight /
        maxheightnewvalue / this.nzHeight, this.newvalueheight = maxheightnewvalue, this.fullheight = !0) : (this.heightRatio = this.largeHeight / newvalue / this.nzHeight, this.newvalueheight = newvalue, this.fullheight = !1), maxwidthtnewvalue <= newvalue ? (this.widthRatio = this.largeWidth / maxwidthtnewvalue / this.nzWidth, this.newvaluewidth = maxwidthtnewvalue, this.fullwidth = !0) : (this.widthRatio = this.largeWidth / newvalue / this.nzWidth, this.newvaluewidth = newvalue, this.fullwidth = !1), "lens" == this.options.zoomType && (maxheightnewvalue <= newvalue ?
        (this.fullwidth = !0, this.newvaluewidth = maxheightnewvalue) : (this.widthRatio = this.largeWidth / newvalue / this.nzWidth, this.newvaluewidth = newvalue, this.fullwidth = !1)));
      "inner" == this.options.zoomType && (maxheightnewvalue = parseFloat(this.largeHeight / this.nzHeight).toFixed(2), maxwidthtnewvalue = parseFloat(this.largeWidth / this.nzWidth).toFixed(2), newvalue > maxheightnewvalue && (newvalue = maxheightnewvalue), newvalue > maxwidthtnewvalue && (newvalue = maxwidthtnewvalue), maxheightnewvalue <= newvalue ? (this.heightRatio = this.largeHeight /
        newvalue / this.nzHeight, this.newvalueheight = newvalue > maxheightnewvalue ? maxheightnewvalue : newvalue, this.fullheight = !0) : (this.heightRatio = this.largeHeight / newvalue / this.nzHeight, this.newvalueheight = newvalue > maxheightnewvalue ? maxheightnewvalue : newvalue, this.fullheight = !1), maxwidthtnewvalue <= newvalue ? (this.widthRatio = this.largeWidth / newvalue / this.nzWidth, this.newvaluewidth = newvalue > maxwidthtnewvalue ? maxwidthtnewvalue : newvalue, this.fullwidth = !0) : (this.widthRatio = this.largeWidth / newvalue / this.nzWidth, this.newvaluewidth =
        newvalue, this.fullwidth = !1));
      scrcontinue = !1;
      "inner" == this.options.zoomType && (this.nzWidth > this.nzHeight && (this.newvaluewidth <= maxwidthtnewvalue ? scrcontinue = !0 : (scrcontinue = !1, this.fullwidth = this.fullheight = !0)), this.nzHeight > this.nzWidth && (this.newvaluewidth <= maxwidthtnewvalue ? scrcontinue = !0 : (scrcontinue = !1, this.fullwidth = this.fullheight = !0)));
      "inner" != this.options.zoomType && (scrcontinue = !0);
      scrcontinue && (this.zoomLock = 0, this.changeZoom = !0, this.options.zoomWindowHeight / this.heightRatio <= this.nzHeight &&
        (this.currentZoomLevel = this.newvalueheight, "lens" != this.options.zoomType && "inner" != this.options.zoomType && (this.changeBgSize = !0, this.zoomLens.css({
          height: String(this.options.zoomWindowHeight / this.heightRatio) + "px"
        })), "lens" == this.options.zoomType || "inner" == this.options.zoomType) && (this.changeBgSize = !0), this.options.zoomWindowWidth / this.widthRatio <= this.nzWidth && ("inner" != this.options.zoomType && this.newvaluewidth > this.newvalueheight && (this.currentZoomLevel = this.newvaluewidth), "lens" != this.options.zoomType &&
          "inner" != this.options.zoomType && (this.changeBgSize = !0, this.zoomLens.css({
            width: String(this.options.zoomWindowWidth / this.widthRatio) + "px"
          })), "lens" == this.options.zoomType || "inner" == this.options.zoomType) && (this.changeBgSize = !0), "inner" == this.options.zoomType && (this.changeBgSize = !0, this.nzWidth > this.nzHeight && (this.currentZoomLevel = this.newvaluewidth), this.nzHeight > this.nzWidth && (this.currentZoomLevel = this.newvaluewidth)));
      this.setPosition(this.currentLoc)
    },
    closeAll: function() {
      self.zoomWindow && self.zoomWindow.hide();
      self.zoomLens && self.zoomLens.hide();
      self.zoomTint && self.zoomTint.hide()
    },
    changeState: function(b) {
      "enable" == b && (this.options.zoomEnabled = !0);
      "disable" == b && (this.options.zoomEnabled = !1)
    }
  };
  d.fn.elevateZoom = function(b) {
    return this.each(function() {
      var a = Object.create(k);
      a.init(b, this);
      d.data(this, "elevateZoom", a)
    })
  };
  d.fn.elevateZoom.options = {
    zoomActivation: "hover",
    zoomEnabled: !0,
    preloading: 1,
    zoomLevel: 1,
    scrollZoom: !1,
    scrollZoomIncrement: 0.1,
    minZoomLevel: !1,
    maxZoomLevel: !1,
    easing: !1,
    easingAmount: 12,
    lensSize: 200,
    zoomWindowWidth: 400,
    zoomWindowHeight: 400,
    zoomWindowOffetx: 0,
    zoomWindowOffety: 0,
    zoomWindowPosition: 1,
    zoomWindowBgColour: "#fff",
    lensFadeIn: !1,
    lensFadeOut: !1,
    debug: !1,
    zoomWindowFadeIn: !1,
    zoomWindowFadeOut: !1,
    zoomWindowAlwaysShow: !1,
    zoomTintFadeIn: !1,
    zoomTintFadeOut: !1,
    borderSize: 4,
    showLens: !0,
    borderColour: "#888",
    lensBorderSize: 1,
    lensBorderColour: "#000",
    lensShape: "square",
    zoomType: "window",
    containLensZoom: !1,
    lensColour: "white",
    lensOpacity: 0.4,
    lenszoom: !1,
    tint: !1,
    tintColour: "#333",
    tintOpacity: 0.4,
    gallery: !1,
    galleryActiveClass: "zoomGalleryActive",
    imageCrossfade: !1,
    constrainType: !1,
    constrainSize: !1,
    loadingIcon: !1,
    cursor: "default",
    responsive: !0,
    onComplete: d.noop,
    onZoomedImageLoaded: function() {},
    onImageSwap: d.noop,
    onImageSwapComplete: d.noop
  }
})(jQuery, window, document);





/*  jQuery Nice Select - v1.0
https://github.com/hernansartorio/jquery-nice-select
Made by Hernán Sartorio
*/
! function(e) {
  e.fn.niceSelect = function(t) {
    function s(t) {
      t.after(e("<div></div>").addClass("nice-select").addClass(t.attr("class") || "").addClass(t.attr("disabled") ? "disabled" : "").attr("tabindex", t.attr("disabled") ? null : "0").html('<span class="current"></span><ul class="list"></ul>'));
      var s = t.next(),
        n = t.find("option"),
        i = t.find("option:selected");
      s.find(".current").html(i.data("display") || i.text()), n.each(function(t) {
        var n = e(this),
          i = n.data("display");
        s.find("ul").append(e("<li></li>").attr("data-value", n.val()).attr("data-display", i || null).addClass("option" + (n.is(":selected") ? " selected" : "") + (n.is(":disabled") ? " disabled" : "")).html(n.text()))
      })
    }
    if ("string" == typeof t) return "update" == t ? this.each(function() {
      var t = e(this),
        n = e(this).next(".nice-select"),
        i = n.hasClass("open");
      n.length && (n.remove(), s(t), i && t.next().trigger("click"))
    }) : "destroy" == t ? (this.each(function() {
      var t = e(this),
        s = e(this).next(".nice-select");
      s.length && (s.remove(), t.css("display", ""))
    }), 0 == e(".nice-select").length && e(document).off(".nice_select")) : console.log('Method "' + t + '" does not exist.'), this;
    this.hide(), this.each(function() {
      var t = e(this);
      t.next().hasClass("nice-select") || s(t)
    }), e(document).off(".nice_select"), e(document).on("click.nice_select", ".nice-select", function(t) {
      var s = e(this);
      e(".nice-select").not(s).removeClass("open"), s.toggleClass("open"), s.hasClass("open") ? (s.find(".option"), s.find(".focus").removeClass("focus"), s.find(".selected").addClass("focus")) : s.focus()
    }), e(document).on("click.nice_select", function(t) {
      0 === e(t.target).closest(".nice-select").length && e(".nice-select").removeClass("open").find(".option")
    }), e(document).on("click.nice_select", ".nice-select .option:not(.disabled)", function(t) {
      var s = e(this),
        n = s.closest(".nice-select");
      n.find(".selected").removeClass("selected"), s.addClass("selected");
      var i = s.data("display") || s.text();
      n.find(".current").text(i), n.prev("select").val(s.data("value")).trigger("change")
    }), e(document).on("keydown.nice_select", ".nice-select", function(t) {
      var s = e(this),
        n = e(s.find(".focus") || s.find(".list .option.selected"));
      if (32 == t.keyCode || 13 == t.keyCode) return s.hasClass("open") ? n.trigger("click") : s.trigger("click"), !1;
      if (40 == t.keyCode) {
        if (s.hasClass("open")) {
          var i = n.nextAll(".option:not(.disabled)").first();
          i.length > 0 && (s.find(".focus").removeClass("focus"), i.addClass("focus"))
        } else s.trigger("click");
        return !1
      }
      if (38 == t.keyCode) {
        if (s.hasClass("open")) {
          var l = n.prevAll(".option:not(.disabled)").first();
          l.length > 0 && (s.find(".focus").removeClass("focus"), l.addClass("focus"))
        } else s.trigger("click");
        return !1
      }
      if (27 == t.keyCode) s.hasClass("open") && s.trigger("click");
      else if (9 == t.keyCode && s.hasClass("open")) return !1
    });
    var n = document.createElement("a").style;
    return n.cssText = "pointer-events:auto", "auto" !== n.pointerEvents && e("html").addClass("no-csspointerevents"), this
  }
}(jQuery);









/*========= Youtube Player =========*/
/*! YU2FVL - jQuery Youtube Url To FullScreen Video Lightbox - v0.1.0 - 2016-02-07
 * http://otakod.es/yu2fvl
 * Copyright (c) 2016 darkylmnx; Licensed MIT */
! function(t, e, s) {
  function i(t) {
    return /youtu\.be/.test(t) ? t.split("youtu.be/")[1].split("?")[0].split("&")[0].split("#")[0] : /youtube\.com\/v\//.test(t) ? t.split("youtube.com/v/")[1].split("?")[0].split("&")[0].split("#")[0] : /youtube\.com\/embed\//.test(t) ? t.split("youtube.com/embed/")[1].split("?")[0].split("&")[0].split("#")[0] : /youtube.com|youtuberepeater.com|listenonrepeat.com/.test(t) ? t.split("v=")[1].split("&")[0].split("#")[0] : !1
  }

  function n(t, e, s) {
    var i = JSON.stringify({
      event: "command",
      func: e,
      args: s || []
    }); - 1 !== t.src.indexOf("youtube.com/embed") && t.contentWindow.postMessage(i, "*")
  }

  function o(e, i, o) {
    function f() {
      var t = a.width() - e.minPaddingX,
        s = a.height() - e.minPaddingY,
        i = t / s,
        n = e.ratio;
      i > n ? (C.height(s), C.width(s * n)) : (C.width(t), C.height(t / n)), C.css("left", (a.width() - C.width()) / 2), C.css("top", (a.height() - C.height()) / 2)
    }

    function r() {
      n(w[0], "playVideo"), h()
    }

    function h() {
      b.stop().fadeIn("fast"), C.stop().fadeIn("fast")
    }

    function m() {
      b.stop().fadeOut("fast"), C.stop().fadeOut("fast", function() {
        null === i && e.open && (b.remove(), C.remove())
      })
    }

    function v(t) {
      t.on("click", function(t) {
        t.preventDefault(), r()
      })
    }

    function y(t) {
      t.on("click", function(t) {
        t.preventDefault(), n(w[0], "pauseVideo"), m()
      })
    }
    var C = t(s.createElement("DIV")).addClass(e.cssClass).css(c),
      b = t(s.createElement("DIV")).addClass(e.cssClass + e.overlayCssClass).css(p),
      g = t(s.createElement("BUTTON")).addClass(e.cssClass + e.closeCssClass).html(e.closeText),
      w = t(s.createElement("IFRAME")).addClass(e.cssClass + e.iframeCssClass).attr({
        src: l + o + d
      }).css(u);
    C.append(w).append(g), t("body").append(b).append(C), e.open && w.on("load", function() {
      r()
    }), null !== i && v(i), y(g.add(b)), a.on("resize", f).trigger("resize")
  }
  var a = t(e),
    l = "https://www.youtube.com/embed/",
    d = "?enablejsapi=1",
    c = {
      display: "none",
      position: "fixed"
    },
    u = {
      width: "100%",
      height: "100%"
    },
    p = {
      display: "none",
      position: "fixed",
      top: 0,
      left: 0,
      width: "100%",
      height: "100%"
    },
    f = {
      minPaddingX: 50,
      minPaddingY: 50,
      ratio: 16 / 9,
      cssClass: "yu2fvl",
      overlayCssClass: "-overlay",
      iframeCssClass: "-iframe",
      closeCssClass: "-close",
      closeText: "X",
      open: !1,
      vid: !1
    };
  t.yu2fvl = function(e) {
    var s = t.extend({}, f, e);
    if (s.vid === !1) throw "YOU MUST SET THE 'vid' option";
    o(s, null, s.vid)
  }, t.fn.yu2fvl = function(e) {
    function s() {
      var e = t(this),
        s = i(e.attr("href"));
      o(n, e, s)
    }
    var n = t.extend({}, f, e);
    return n.vid !== !1 ? (o(n, this, n.vid), this) : this.each(s)
  }
}(jQuery, window, document);


// Counterup Js
/*========== Odometer ==========*/
/*! odometer 0.4.6 */
(function() {
  var a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G = [].slice;
  q = '<span class="odometer-value"></span>', n = '<span class="odometer-ribbon"><span class="odometer-ribbon-inner">' + q + "</span></span>", d = '<span class="odometer-digit"><span class="odometer-digit-spacer">8</span><span class="odometer-digit-inner">' + n + "</span></span>", g = '<span class="odometer-formatting-mark"></span>', c = "(,ddd).dd", h = /^\(?([^)]*)\)?(?:(.)(d+))?$/, i = 30, f = 2e3, a = 20, j = 2, e = .5, k = 1e3 / i, b = 1e3 / a, o = "transitionend webkitTransitionEnd oTransitionEnd otransitionend MSTransitionEnd", y = document.createElement("div").style, p = null != y.transition || null != y.webkitTransition || null != y.mozTransition || null != y.oTransition, w = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || window.msRequestAnimationFrame, l = window.MutationObserver || window.WebKitMutationObserver || window.MozMutationObserver, s = function(a) {
    var b;
    return b = document.createElement("div"), b.innerHTML = a, b.children[0]
  }, v = function(a, b) {
    return a.className = a.className.replace(new RegExp("(^| )" + b.split(" ").join("|") + "( |$)", "gi"), " ")
  }, r = function(a, b) {
    return v(a, b), a.className += " " + b
  }, z = function(a, b) {
    var c;
    return null != document.createEvent ? (c = document.createEvent("HTMLEvents"), c.initEvent(b, !0, !0), a.dispatchEvent(c)) : void 0
  }, u = function() {
    var a, b;
    return null != (a = null != (b = window.performance) ? "function" == typeof b.now ? b.now() : void 0 : void 0) ? a : +new Date
  }, x = function(a, b) {
    return null == b && (b = 0), b ? (a *= Math.pow(10, b), a += .5, a = Math.floor(a), a /= Math.pow(10, b)) : Math.round(a)
  }, A = function(a) {
    return 0 > a ? Math.ceil(a) : Math.floor(a)
  }, t = function(a) {
    return a - x(a)
  }, C = !1, (B = function() {
    var a, b, c, d, e;
    if (!C && null != window.jQuery) {
      for (C = !0, d = ["html", "text"], e = [], b = 0, c = d.length; c > b; b++) a = d[b], e.push(function(a) {
        var b;
        return b = window.jQuery.fn[a], window.jQuery.fn[a] = function(a) {
          var c;
          return null == a || null == (null != (c = this[0]) ? c.odometer : void 0) ? b.apply(this, arguments) : this[0].odometer.update(a)
        }
      }(a));
      return e
    }
  })(), setTimeout(B, 0), m = function() {
    function a(b) {
      var c, d, e, g, h, i, l, m, n, o, p = this;
      if (this.options = b, this.el = this.options.el, null != this.el.odometer) return this.el.odometer;
      this.el.odometer = this, m = a.options;
      for (d in m) g = m[d], null == this.options[d] && (this.options[d] = g);
      null == (h = this.options).duration && (h.duration = f), this.MAX_VALUES = this.options.duration / k / j | 0, this.resetFormat(), this.value = this.cleanValue(null != (n = this.options.value) ? n : ""), this.renderInside(), this.render();
      try {
        for (o = ["innerHTML", "innerText", "textContent"], i = 0, l = o.length; l > i; i++) e = o[i], null != this.el[e] && ! function(a) {
          return Object.defineProperty(p.el, a, {
            get: function() {
              var b;
              return "innerHTML" === a ? p.inside.outerHTML : null != (b = p.inside.innerText) ? b : p.inside.textContent
            },
            set: function(a) {
              return p.update(a)
            }
          })
        }(e)
      } catch (q) {
        c = q, this.watchForMutations()
      }
    }
    return a.prototype.renderInside = function() {
      return this.inside = document.createElement("div"), this.inside.className = "odometer-inside", this.el.innerHTML = "", this.el.appendChild(this.inside)
    }, a.prototype.watchForMutations = function() {
      var a, b = this;
      if (null != l) try {
        return null == this.observer && (this.observer = new l(function() {
          var a;
          return a = b.el.innerText, b.renderInside(), b.render(b.value), b.update(a)
        })), this.watchMutations = !0, this.startWatchingMutations()
      } catch (c) {
        a = c
      }
    }, a.prototype.startWatchingMutations = function() {
      return this.watchMutations ? this.observer.observe(this.el, {
        childList: !0
      }) : void 0
    }, a.prototype.stopWatchingMutations = function() {
      var a;
      return null != (a = this.observer) ? a.disconnect() : void 0
    }, a.prototype.cleanValue = function(a) {
      var b;
      return "string" == typeof a && (a = a.replace(null != (b = this.format.radix) ? b : ".", "<radix>"), a = a.replace(/[.,]/g, ""), a = a.replace("<radix>", "."), a = parseFloat(a, 10) || 0), x(a, this.format.precision)
    }, a.prototype.bindTransitionEnd = function() {
      var a, b, c, d, e, f, g = this;
      if (!this.transitionEndBound) {
        for (this.transitionEndBound = !0, b = !1, e = o.split(" "), f = [], c = 0, d = e.length; d > c; c++) a = e[c], f.push(this.el.addEventListener(a, function() {
          return b ? !0 : (b = !0, setTimeout(function() {
            return g.render(), b = !1, z(g.el, "odometerdone")
          }, 0), !0)
        }, !1));
        return f
      }
    }, a.prototype.resetFormat = function() {
      var a, b, d, e, f, g, i, j;
      if (a = null != (i = this.options.format) ? i : c, a || (a = "d"), d = h.exec(a), !d) throw new Error("Odometer: Unparsable digit format");
      return j = d.slice(1, 4), g = j[0], f = j[1], b = j[2], e = (null != b ? b.length : void 0) || 0, this.format = {
        repeating: g,
        radix: f,
        precision: e
      }
    }, a.prototype.render = function(a) {
      var b, c, d, e, f, g, h, i, j, k, l, m;
      for (null == a && (a = this.value), this.stopWatchingMutations(), this.resetFormat(), this.inside.innerHTML = "", g = this.options.theme, b = this.el.className.split(" "), f = [], i = 0, k = b.length; k > i; i++) c = b[i], c.length && ((e = /^odometer-theme-(.+)$/.exec(c)) ? g = e[1] : /^odometer(-|$)/.test(c) || f.push(c));
      for (f.push("odometer"), p || f.push("odometer-no-transitions"), f.push(g ? "odometer-theme-" + g : "odometer-auto-theme"), this.el.className = f.join(" "), this.ribbons = {}, this.digits = [], h = !this.format.precision || !t(a) || !1, m = a.toString().split("").reverse(), j = 0, l = m.length; l > j; j++) d = m[j], "." === d && (h = !0), this.addDigit(d, h);
      return this.startWatchingMutations()
    }, a.prototype.update = function(a) {
      var b, c = this;
      return a = this.cleanValue(a), (b = a - this.value) ? (v(this.el, "odometer-animating-up odometer-animating-down odometer-animating"), b > 0 ? r(this.el, "odometer-animating-up") : r(this.el, "odometer-animating-down"), this.stopWatchingMutations(), this.animate(a), this.startWatchingMutations(), setTimeout(function() {
        return c.el.offsetHeight, r(c.el, "odometer-animating")
      }, 0), this.value = a) : void 0
    }, a.prototype.renderDigit = function() {
      return s(d)
    }, a.prototype.insertDigit = function(a, b) {
      return null != b ? this.inside.insertBefore(a, b) : this.inside.children.length ? this.inside.insertBefore(a, this.inside.children[0]) : this.inside.appendChild(a)
    }, a.prototype.addSpacer = function(a, b, c) {
      var d;
      return d = s(g), d.innerHTML = a, c && r(d, c), this.insertDigit(d, b)
    }, a.prototype.addDigit = function(a, b) {
      var c, d, e, f;
      if (null == b && (b = !0), "-" === a) return this.addSpacer(a, null, "odometer-negation-mark");
      if ("." === a) return this.addSpacer(null != (f = this.format.radix) ? f : ".", null, "odometer-radix-mark");
      if (b)
        for (e = !1;;) {
          if (!this.format.repeating.length) {
            if (e) throw new Error("Bad odometer format without digits");
            this.resetFormat(), e = !0
          }
          if (c = this.format.repeating[this.format.repeating.length - 1], this.format.repeating = this.format.repeating.substring(0, this.format.repeating.length - 1), "d" === c) break;
          this.addSpacer(c)
        }
      return d = this.renderDigit(), d.querySelector(".odometer-value").innerHTML = a, this.digits.push(d), this.insertDigit(d)
    }, a.prototype.animate = function(a) {
      return p && "count" !== this.options.animation ? this.animateSlide(a) : this.animateCount(a)
    }, a.prototype.animateCount = function(a) {
      var c, d, e, f, g, h = this;
      if (d = +a - this.value) return f = e = u(), c = this.value, (g = function() {
        var i, j, k;
        return u() - f > h.options.duration ? (h.value = a, h.render(), void z(h.el, "odometerdone")) : (i = u() - e, i > b && (e = u(), k = i / h.options.duration, j = d * k, c += j, h.render(Math.round(c))), null != w ? w(g) : setTimeout(g, b))
      })()
    }, a.prototype.getDigitCount = function() {
      var a, b, c, d, e, f;
      for (d = 1 <= arguments.length ? G.call(arguments, 0) : [], a = e = 0, f = d.length; f > e; a = ++e) c = d[a], d[a] = Math.abs(c);
      return b = Math.max.apply(Math, d), Math.ceil(Math.log(b + 1) / Math.log(10))
    }, a.prototype.getFractionalDigitCount = function() {
      var a, b, c, d, e, f, g;
      for (e = 1 <= arguments.length ? G.call(arguments, 0) : [], b = /^\-?\d*\.(\d*?)0*$/, a = f = 0, g = e.length; g > f; a = ++f) d = e[a], e[a] = d.toString(), c = b.exec(e[a]), e[a] = null == c ? 0 : c[1].length;
      return Math.max.apply(Math, e)
    }, a.prototype.resetDigits = function() {
      return this.digits = [], this.ribbons = [], this.inside.innerHTML = "", this.resetFormat()
    }, a.prototype.animateSlide = function(a) {
      var b, c, d, f, g, h, i, j, k, l, m, n, o, p, q, s, t, u, v, w, x, y, z, B, C, D, E;
      if (s = this.value, j = this.getFractionalDigitCount(s, a), j && (a *= Math.pow(10, j), s *= Math.pow(10, j)), d = a - s) {
        for (this.bindTransitionEnd(), f = this.getDigitCount(s, a), g = [], b = 0, m = v = 0; f >= 0 ? f > v : v > f; m = f >= 0 ? ++v : --v) {
          if (t = A(s / Math.pow(10, f - m - 1)), i = A(a / Math.pow(10, f - m - 1)), h = i - t, Math.abs(h) > this.MAX_VALUES) {
            for (l = [], n = h / (this.MAX_VALUES + this.MAX_VALUES * b * e), c = t; h > 0 && i > c || 0 > h && c > i;) l.push(Math.round(c)), c += n;
            l[l.length - 1] !== i && l.push(i), b++
          } else l = function() {
            E = [];
            for (var a = t; i >= t ? i >= a : a >= i; i >= t ? a++ : a--) E.push(a);
            return E
          }.apply(this);
          for (m = w = 0, y = l.length; y > w; m = ++w) k = l[m], l[m] = Math.abs(k % 10);
          g.push(l)
        }
        for (this.resetDigits(), D = g.reverse(), m = x = 0, z = D.length; z > x; m = ++x)
          for (l = D[m], this.digits[m] || this.addDigit(" ", m >= j), null == (u = this.ribbons)[m] && (u[m] = this.digits[m].querySelector(".odometer-ribbon-inner")), this.ribbons[m].innerHTML = "", 0 > d && (l = l.reverse()), o = C = 0, B = l.length; B > C; o = ++C) k = l[o], q = document.createElement("div"), q.className = "odometer-value", q.innerHTML = k, this.ribbons[m].appendChild(q), o === l.length - 1 && r(q, "odometer-last-value"), 0 === o && r(q, "odometer-first-value");
        return 0 > t && this.addDigit("-"), p = this.inside.querySelector(".odometer-radix-mark"), null != p && p.parent.removeChild(p), j ? this.addSpacer(this.format.radix, this.digits[j - 1], "odometer-radix-mark") : void 0
      }
    }, a
  }(), m.options = null != (E = window.odometerOptions) ? E : {}, setTimeout(function() {
    var a, b, c, d, e;
    if (window.odometerOptions) {
      d = window.odometerOptions, e = [];
      for (a in d) b = d[a], e.push(null != (c = m.options)[a] ? (c = m.options)[a] : c[a] = b);
      return e
    }
  }, 0), m.init = function() {
    var a, b, c, d, e, f;
    if (null != document.querySelectorAll) {
      for (b = document.querySelectorAll(m.options.selector || ".odometer"), f = [], c = 0, d = b.length; d > c; c++) a = b[c], f.push(a.odometer = new m({
        el: a,
        value: null != (e = a.innerText) ? e : a.textContent
      }));
      return f
    }
  }, null != (null != (F = document.documentElement) ? F.doScroll : void 0) && null != document.createEventObject ? (D = document.onreadystatechange, document.onreadystatechange = function() {
    return "complete" === document.readyState && m.options.auto !== !1 && m.init(), null != D ? D.apply(this, arguments) : void 0
  }) : document.addEventListener("DOMContentLoaded", function() {
    return m.options.auto !== !1 ? m.init() : void 0
  }, !1), "function" == typeof define && define.amd ? define(["jquery"], function() {
    return m
  }) : typeof exports === !1 ? module.exports = m : window.Odometer = m
}).call(this);


/*================= Contact Form ================*/

$(function() {

  // Get the form.
  var form = $('#contact-form');

  // Get the messages div.
  var formMessages = $('.form-messege');

  // Set up an event listener for the contact form.
  $(form).submit(function(e) {
    // Stop the browser from submitting the form.
    e.preventDefault();

    // Serialize the form data.
    var formData = $(form).serialize();

    // Submit the form using AJAX.
    $.ajax({
        type: 'POST',
        url: $(form).attr('action'),
        data: formData
      })
      .done(function(response) {
        // Make sure that the formMessages div has the 'success' class.
        $(formMessages).removeClass('error');
        $(formMessages).addClass('success');

        // Set the message text.
        $(formMessages).text(response);

        // Clear the form.
        $('#contact-form input,#contact-form textarea').val('');
      })
      .fail(function(data) {
        // Make sure that the formMessages div has the 'error' class.
        $(formMessages).removeClass('success');
        $(formMessages).addClass('error');

        // Set the message text.
        if (data.responseText !== '') {
          $(formMessages).text(data.responseText);
        } else {
          $(formMessages).text('Oops! An error occured and your message could not be sent.');
        }
      });
  });

});





/*========== ScrollUp ==========*/
/*!
 * scrollup v2.4.1
 * Url: http://markgoodyear.com/labs/scrollup/
 * Copyright (c) Mark Goodyear â€” @markgdyr â€” http://markgoodyear.com
 * License: MIT
 */
! function(l, o, e) {
  "use strict";
  l.fn.scrollUp = function(o) {
    l.data(e.body, "scrollUp") || (l.data(e.body, "scrollUp", !0), l.fn.scrollUp.init(o))
  }, l.fn.scrollUp.init = function(r) {
    var s, t, c, i, n, a, d, p = l.fn.scrollUp.settings = l.extend({}, l.fn.scrollUp.defaults, r),
      f = !1;
    switch (d = p.scrollTrigger ? l(p.scrollTrigger) : l("<a/>", {
        id: p.scrollName,
        href: "#top"
      }), p.scrollTitle && d.attr("title", p.scrollTitle), d.appendTo("body"), p.scrollImg || p.scrollTrigger || d.html(p.scrollText), d.css({
        display: "none",
        position: "fixed",
        zIndex: p.zIndex
      }), p.activeOverlay && l("<div/>", {
        id: p.scrollName + "-active"
      }).css({
        position: "absolute",
        top: p.scrollDistance + "px",
        width: "100%",
        borderTop: "1px dotted" + p.activeOverlay,
        zIndex: p.zIndex
      }).appendTo("body"), p.animation) {
      case "fade":
        s = "fadeIn", t = "fadeOut", c = p.animationSpeed;
        break;
      case "slide":
        s = "slideDown", t = "slideUp", c = p.animationSpeed;
        break;
      default:
        s = "show", t = "hide", c = 0
    }
    i = "top" === p.scrollFrom ? p.scrollDistance : l(e).height() - l(o).height() - p.scrollDistance, n = l(o).scroll(function() {
      l(o).scrollTop() > i ? f || (d[s](c), f = !0) : f && (d[t](c), f = !1)
    }), p.scrollTarget ? "number" == typeof p.scrollTarget ? a = p.scrollTarget : "string" == typeof p.scrollTarget && (a = Math.floor(l(p.scrollTarget).offset().top)) : a = 0, d.click(function(o) {
      o.preventDefault(), l("html, body").animate({
        scrollTop: a
      }, p.scrollSpeed, p.easingType)
    })
  }, l.fn.scrollUp.defaults = {
    scrollName: "scrollUp",
    scrollDistance: 300,
    scrollFrom: "top",
    scrollSpeed: 300,
    easingType: "linear",
    animation: "fade",
    animationSpeed: 200,
    scrollTrigger: !1,
    scrollTarget: !1,
    scrollText: "Scroll to top",
    scrollTitle: !1,
    scrollImg: !1,
    activeOverlay: !1,
    zIndex: 2147483647
  }, l.fn.scrollUp.destroy = function(r) {
    l.removeData(e.body, "scrollUp"), l("#" + l.fn.scrollUp.settings.scrollName).remove(), l("#" + l.fn.scrollUp.settings.scrollName + "-active").remove(), l.fn.jquery.split(".")[1] >= 7 ? l(o).off("scroll", r) : l(o).unbind("scroll", r)
  }, l.scrollUp = l.fn.scrollUp
}(jQuery, window, document);




/*************************************
	Countdown Js
**************************************/
// AMD support (Thanks to @FagnerMartinsBrack)
;
(function(factory) {
  'use strict';

  if (typeof define === 'function' && define.amd) {
    define(['jquery'], factory);
  } else {
    factory(jQuery);
  }
})(function($) {
  'use strict';

  var instances = [],
    matchers = [],
    defaultOptions = {
      precision: 100, // 0.1 seconds, used to update the DOM
      elapse: false
    };
  // Miliseconds
  matchers.push(/^[0-9]*$/.source);
  // Month/Day/Year [hours:minutes:seconds]
  matchers.push(/([0-9]{1,2}\/){2}[0-9]{4}( [0-9]{1,2}(:[0-9]{2}){2})?/
    .source);
  // Year/Day/Month [hours:minutes:seconds] and
  // Year-Day-Month [hours:minutes:seconds]
  matchers.push(/[0-9]{4}([\/\-][0-9]{1,2}){2}( [0-9]{1,2}(:[0-9]{2}){2})?/
    .source);
  // Cast the matchers to a regular expression object
  matchers = new RegExp(matchers.join('|'));
  // Parse a Date formatted has String to a native object
  function parseDateString(dateString) {
    // Pass through when a native object is sent
    if (dateString instanceof Date) {
      return dateString;
    }
    // Caste string to date object
    if (String(dateString).match(matchers)) {
      // If looks like a milisecond value cast to number before
      // final casting (Thanks to @msigley)
      if (String(dateString).match(/^[0-9]*$/)) {
        dateString = Number(dateString);
      }
      // Replace dashes to slashes
      if (String(dateString).match(/\-/)) {
        dateString = String(dateString).replace(/\-/g, '/');
      }
      return new Date(dateString);
    } else {
      throw new Error('Couldn\'t cast `' + dateString +
        '` to a date object.');
    }
  }
  // Map to convert from a directive to offset object property
  var DIRECTIVE_KEY_MAP = {
    'Y': 'years',
    'm': 'months',
    'n': 'daysToMonth',
    'w': 'weeks',
    'd': 'daysToWeek',
    'D': 'totalDays',
    'H': 'hours',
    'M': 'minutes',
    'S': 'seconds'
  };
  // Returns an escaped regexp from the string
  function escapedRegExp(str) {
    var sanitize = str.toString().replace(/([.?*+^$[\]\\(){}|-])/g, '\\$1');
    return new RegExp(sanitize);
  }
  // Time string formatter
  function strftime(offsetObject) {
    return function(format) {
      var directives = format.match(/%(-|!)?[A-Z]{1}(:[^;]+;)?/gi);
      if (directives) {
        for (var i = 0, len = directives.length; i < len; ++i) {
          var directive = directives[i]
            .match(/%(-|!)?([a-zA-Z]{1})(:[^;]+;)?/),
            regexp = escapedRegExp(directive[0]),
            modifier = directive[1] || '',
            plural = directive[3] || '',
            value = null;
          // Get the key
          directive = directive[2];
          // Swap shot-versions directives
          if (DIRECTIVE_KEY_MAP.hasOwnProperty(directive)) {
            value = DIRECTIVE_KEY_MAP[directive];
            value = Number(offsetObject[value]);
          }
          if (value !== null) {
            // Pluralize
            if (modifier === '!') {
              value = pluralize(plural, value);
            }
            // Add zero-padding
            if (modifier === '') {
              if (value < 10) {
                value = '0' + value.toString();
              }
            }
            // Replace the directive
            format = format.replace(regexp, value.toString());
          }
        }
      }
      format = format.replace(/%%/, '%');
      return format;
    };
  }
  // Pluralize
  function pluralize(format, count) {
    var plural = 's',
      singular = '';
    if (format) {
      format = format.replace(/(:|;|\s)/gi, '').split(/\,/);
      if (format.length === 1) {
        plural = format[0];
      } else {
        singular = format[0];
        plural = format[1];
      }
    }
    if (Math.abs(count) === 1) {
      return singular;
    } else {
      return plural;
    }
  }
  // The Final Countdown
  var Countdown = function(el, finalDate, options) {
    this.el = el;
    this.$el = $(el);
    this.interval = null;
    this.offset = {};
    this.options = $.extend({}, defaultOptions);
    // console.log(this.options);
    // Register this instance
    this.instanceNumber = instances.length;
    instances.push(this);
    // Save the reference
    this.$el.data('countdown-instance', this.instanceNumber);
    // Handle options or callback
    if (options) {
      // Register the callbacks when supplied
      if (typeof options === 'function') {
        this.$el.on('update.countdown', options);
        this.$el.on('stoped.countdown', options);
        this.$el.on('finish.countdown', options);
      } else {
        this.options = $.extend({}, defaultOptions, options);
      }
    }
    // Set the final date and start
    this.setFinalDate(finalDate);
    this.start();
  };
  $.extend(Countdown.prototype, {
    start: function() {
      if (this.interval !== null) {
        clearInterval(this.interval);
      }
      var self = this;
      this.update();
      this.interval = setInterval(function() {
        self.update.call(self);
      }, this.options.precision);
    },
    stop: function() {
      clearInterval(this.interval);
      this.interval = null;
      this.dispatchEvent('stoped');
    },
    toggle: function() {
      if (this.interval) {
        this.stop();
      } else {
        this.start();
      }
    },
    pause: function() {
      this.stop();
    },
    resume: function() {
      this.start();
    },
    remove: function() {
      this.stop.call(this);
      instances[this.instanceNumber] = null;
      // Reset the countdown instance under data attr (Thanks to @assiotis)
      delete this.$el.data().countdownInstance;
    },
    setFinalDate: function(value) {
      this.finalDate = parseDateString(value); // Cast the given date
    },
    update: function() {
      // Stop if dom is not in the html (Thanks to @dleavitt)
      if (this.$el.closest('html').length === 0) {
        this.remove();
        return;
      }
      var hasEventsAttached = $._data(this.el, 'events') !== undefined,
        now = new Date(),
        newTotalSecsLeft;
      // Create an offset date object
      newTotalSecsLeft = this.finalDate.getTime() - now.getTime(); // Millisecs
      // Calculate the remaining time
      newTotalSecsLeft = Math.ceil(newTotalSecsLeft / 1000); // Secs
      // If is not have to elapse set the finish
      newTotalSecsLeft = !this.options.elapse && newTotalSecsLeft < 0 ? 0 :
        Math.abs(newTotalSecsLeft);
      // Do not proceed to calculation if the seconds have not changed or
      // does not any event attached
      if (this.totalSecsLeft === newTotalSecsLeft || !hasEventsAttached) {
        return;
      } else {
        this.totalSecsLeft = newTotalSecsLeft;
      }
      // Check if the countdown has elapsed
      this.elapsed = (now >= this.finalDate);
      // Calculate the offsets
      this.offset = {
        seconds: this.totalSecsLeft % 60,
        minutes: Math.floor(this.totalSecsLeft / 60) % 60,
        hours: Math.floor(this.totalSecsLeft / 60 / 60) % 24,
        days: Math.floor(this.totalSecsLeft / 60 / 60 / 24) % 7,
        daysToWeek: Math.floor(this.totalSecsLeft / 60 / 60 / 24) % 7,
        daysToMonth: Math.floor(this.totalSecsLeft / 60 / 60 / 24 % 30.4368),
        totalDays: Math.floor(this.totalSecsLeft / 60 / 60 / 24),
        weeks: Math.floor(this.totalSecsLeft / 60 / 60 / 24 / 7),
        months: Math.floor(this.totalSecsLeft / 60 / 60 / 24 / 30.4368),
        years: Math.abs(this.finalDate.getFullYear() - now.getFullYear())
      };
      // Dispatch an event
      if (!this.options.elapse && this.totalSecsLeft === 0) {
        this.stop();
        this.dispatchEvent('finish');
      } else {
        this.dispatchEvent('update');
      }
    },
    dispatchEvent: function(eventName) {
      var event = $.Event(eventName + '.countdown');
      event.finalDate = this.finalDate;
      event.elapsed = this.elapsed;
      event.offset = $.extend({}, this.offset);
      event.strftime = strftime(this.offset);
      this.$el.trigger(event);
    }
  });
  // Register the jQuery selector actions
  $.fn.countdown = function() {
    var argumentsArray = Array.prototype.slice.call(arguments, 0);
    return this.each(function() {
      // If no data was set, jQuery.data returns undefined
      var instanceNumber = $(this).data('countdown-instance');
      // Verify if we already have a countdown for this node ...
      // Fix issue #22 (Thanks to @romanbsd)
      if (instanceNumber !== undefined) {
        var instance = instances[instanceNumber],
          method = argumentsArray[0];
        // If method exists in the prototype execute
        if (Countdown.prototype.hasOwnProperty(method)) {
          instance[method].apply(instance, argumentsArray.slice(1));
          // If method look like a date try to set a new final date
        } else if (String(method).match(/^[$A-Z_][0-9A-Z_$]*$/i) === null) {
          instance.setFinalDate.call(instance, method);
          // Allow plugin to restart after finished
          // Fix issue #38 (thanks to @yaoazhen)
          instance.start();
        } else {
          $.error('Method %s does not exist on jQuery.countdown'
            .replace(/\%s/gi, method));
        }
      } else {
        // ... if not we create an instance
        new Countdown(this, argumentsArray[0], argumentsArray[1]);
      }
    });
  };
});


/*------------------------------------------
  10. jQuery UI - v1.11.4 - 2015-12-02
-------------------------------------------*/


/*! jQuery UI - v1.11.4 - 2015-12-02
 * http://jqueryui.com
 * Includes: core.js, widget.js, mouse.js, slider.js
 * Copyright jQuery Foundation and other contributors; Licensed MIT */

(function(e) {
  "function" == typeof define && define.amd ? define(["jquery"], e) : e(jQuery)
})(function(e) {
  function t(t, s) {
    var n, a, o, r = t.nodeName.toLowerCase();
    return "area" === r ? (n = t.parentNode, a = n.name, t.href && a && "map" === n.nodeName.toLowerCase() ? (o = e("img[usemap='#" + a + "']")[0], !!o && i(o)) : !1) : (/^(input|select|textarea|button|object)$/.test(r) ? !t.disabled : "a" === r ? t.href || s : s) && i(t)
  }

  function i(t) {
    return e.expr.filters.visible(t) && !e(t).parents().addBack().filter(function() {
      return "hidden" === e.css(this, "visibility")
    }).length
  }
  e.ui = e.ui || {}, e.extend(e.ui, {
    version: "1.11.4",
    keyCode: {
      BACKSPACE: 8,
      COMMA: 188,
      DELETE: 46,
      DOWN: 40,
      END: 35,
      ENTER: 13,
      ESCAPE: 27,
      HOME: 36,
      LEFT: 37,
      PAGE_DOWN: 34,
      PAGE_UP: 33,
      PERIOD: 190,
      RIGHT: 39,
      SPACE: 32,
      TAB: 9,
      UP: 38
    }
  }), e.fn.extend({
    scrollParent: function(t) {
      var i = this.css("position"),
        s = "absolute" === i,
        n = t ? /(auto|scroll|hidden)/ : /(auto|scroll)/,
        a = this.parents().filter(function() {
          var t = e(this);
          return s && "static" === t.css("position") ? !1 : n.test(t.css("overflow") + t.css("overflow-y") + t.css("overflow-x"))
        }).eq(0);
      return "fixed" !== i && a.length ? a : e(this[0].ownerDocument || document)
    },
    uniqueId: function() {
      var e = 0;
      return function() {
        return this.each(function() {
          this.id || (this.id = "ui-id-" + ++e)
        })
      }
    }(),
    removeUniqueId: function() {
      return this.each(function() {
        /^ui-id-\d+$/.test(this.id) && e(this).removeAttr("id")
      })
    }
  }), e.extend(e.expr[":"], {
    data: e.expr.createPseudo ? e.expr.createPseudo(function(t) {
      return function(i) {
        return !!e.data(i, t)
      }
    }) : function(t, i, s) {
      return !!e.data(t, s[3])
    },
    focusable: function(i) {
      return t(i, !isNaN(e.attr(i, "tabindex")))
    },
    tabbable: function(i) {
      var s = e.attr(i, "tabindex"),
        n = isNaN(s);
      return (n || s >= 0) && t(i, !n)
    }
  }), e("<a>").outerWidth(1).jquery || e.each(["Width", "Height"], function(t, i) {
    function s(t, i, s, a) {
      return e.each(n, function() {
        i -= parseFloat(e.css(t, "padding" + this)) || 0, s && (i -= parseFloat(e.css(t, "border" + this + "Width")) || 0), a && (i -= parseFloat(e.css(t, "margin" + this)) || 0)
      }), i
    }
    var n = "Width" === i ? ["Left", "Right"] : ["Top", "Bottom"],
      a = i.toLowerCase(),
      o = {
        innerWidth: e.fn.innerWidth,
        innerHeight: e.fn.innerHeight,
        outerWidth: e.fn.outerWidth,
        outerHeight: e.fn.outerHeight
      };
    e.fn["inner" + i] = function(t) {
      return void 0 === t ? o["inner" + i].call(this) : this.each(function() {
        e(this).css(a, s(this, t) + "px")
      })
    }, e.fn["outer" + i] = function(t, n) {
      return "number" != typeof t ? o["outer" + i].call(this, t) : this.each(function() {
        e(this).css(a, s(this, t, !0, n) + "px")
      })
    }
  }), e.fn.addBack || (e.fn.addBack = function(e) {
    return this.add(null == e ? this.prevObject : this.prevObject.filter(e))
  }), e("<a>").data("a-b", "a").removeData("a-b").data("a-b") && (e.fn.removeData = function(t) {
    return function(i) {
      return arguments.length ? t.call(this, e.camelCase(i)) : t.call(this)
    }
  }(e.fn.removeData)), e.ui.ie = !!/msie [\w.]+/.exec(navigator.userAgent.toLowerCase()), e.fn.extend({
    focus: function(t) {
      return function(i, s) {
        return "number" == typeof i ? this.each(function() {
          var t = this;
          setTimeout(function() {
            e(t).focus(), s && s.call(t)
          }, i)
        }) : t.apply(this, arguments)
      }
    }(e.fn.focus),
    disableSelection: function() {
      var e = "onselectstart" in document.createElement("div") ? "selectstart" : "mousedown";
      return function() {
        return this.bind(e + ".ui-disableSelection", function(e) {
          e.preventDefault()
        })
      }
    }(),
    enableSelection: function() {
      return this.unbind(".ui-disableSelection")
    },
    zIndex: function(t) {
      if (void 0 !== t) return this.css("zIndex", t);
      if (this.length)
        for (var i, s, n = e(this[0]); n.length && n[0] !== document;) {
          if (i = n.css("position"), ("absolute" === i || "relative" === i || "fixed" === i) && (s = parseInt(n.css("zIndex"), 10), !isNaN(s) && 0 !== s)) return s;
          n = n.parent()
        }
      return 0
    }
  }), e.ui.plugin = {
    add: function(t, i, s) {
      var n, a = e.ui[t].prototype;
      for (n in s) a.plugins[n] = a.plugins[n] || [], a.plugins[n].push([i, s[n]])
    },
    call: function(e, t, i, s) {
      var n, a = e.plugins[t];
      if (a && (s || e.element[0].parentNode && 11 !== e.element[0].parentNode.nodeType))
        for (n = 0; a.length > n; n++) e.options[a[n][0]] && a[n][1].apply(e.element, i)
    }
  };
  var s = 0,
    n = Array.prototype.slice;
  e.cleanData = function(t) {
    return function(i) {
      var s, n, a;
      for (a = 0; null != (n = i[a]); a++) try {
        s = e._data(n, "events"), s && s.remove && e(n).triggerHandler("remove")
      } catch (o) {}
      t(i)
    }
  }(e.cleanData), e.widget = function(t, i, s) {
    var n, a, o, r, h = {},
      l = t.split(".")[0];
    return t = t.split(".")[1], n = l + "-" + t, s || (s = i, i = e.Widget), e.expr[":"][n.toLowerCase()] = function(t) {
      return !!e.data(t, n)
    }, e[l] = e[l] || {}, a = e[l][t], o = e[l][t] = function(e, t) {
      return this._createWidget ? (arguments.length && this._createWidget(e, t), void 0) : new o(e, t)
    }, e.extend(o, a, {
      version: s.version,
      _proto: e.extend({}, s),
      _childConstructors: []
    }), r = new i, r.options = e.widget.extend({}, r.options), e.each(s, function(t, s) {
      return e.isFunction(s) ? (h[t] = function() {
        var e = function() {
            return i.prototype[t].apply(this, arguments)
          },
          n = function(e) {
            return i.prototype[t].apply(this, e)
          };
        return function() {
          var t, i = this._super,
            a = this._superApply;
          return this._super = e, this._superApply = n, t = s.apply(this, arguments), this._super = i, this._superApply = a, t
        }
      }(), void 0) : (h[t] = s, void 0)
    }), o.prototype = e.widget.extend(r, {
      widgetEventPrefix: a ? r.widgetEventPrefix || t : t
    }, h, {
      constructor: o,
      namespace: l,
      widgetName: t,
      widgetFullName: n
    }), a ? (e.each(a._childConstructors, function(t, i) {
      var s = i.prototype;
      e.widget(s.namespace + "." + s.widgetName, o, i._proto)
    }), delete a._childConstructors) : i._childConstructors.push(o), e.widget.bridge(t, o), o
  }, e.widget.extend = function(t) {
    for (var i, s, a = n.call(arguments, 1), o = 0, r = a.length; r > o; o++)
      for (i in a[o]) s = a[o][i], a[o].hasOwnProperty(i) && void 0 !== s && (t[i] = e.isPlainObject(s) ? e.isPlainObject(t[i]) ? e.widget.extend({}, t[i], s) : e.widget.extend({}, s) : s);
    return t
  }, e.widget.bridge = function(t, i) {
    var s = i.prototype.widgetFullName || t;
    e.fn[t] = function(a) {
      var o = "string" == typeof a,
        r = n.call(arguments, 1),
        h = this;
      return o ? this.each(function() {
        var i, n = e.data(this, s);
        return "instance" === a ? (h = n, !1) : n ? e.isFunction(n[a]) && "_" !== a.charAt(0) ? (i = n[a].apply(n, r), i !== n && void 0 !== i ? (h = i && i.jquery ? h.pushStack(i.get()) : i, !1) : void 0) : e.error("no such method '" + a + "' for " + t + " widget instance") : e.error("cannot call methods on " + t + " prior to initialization; " + "attempted to call method '" + a + "'")
      }) : (r.length && (a = e.widget.extend.apply(null, [a].concat(r))), this.each(function() {
        var t = e.data(this, s);
        t ? (t.option(a || {}), t._init && t._init()) : e.data(this, s, new i(a, this))
      })), h
    }
  }, e.Widget = function() {}, e.Widget._childConstructors = [], e.Widget.prototype = {
    widgetName: "widget",
    widgetEventPrefix: "",
    defaultElement: "<div>",
    options: {
      disabled: !1,
      create: null
    },
    _createWidget: function(t, i) {
      i = e(i || this.defaultElement || this)[0], this.element = e(i), this.uuid = s++, this.eventNamespace = "." + this.widgetName + this.uuid, this.bindings = e(), this.hoverable = e(), this.focusable = e(), i !== this && (e.data(i, this.widgetFullName, this), this._on(!0, this.element, {
        remove: function(e) {
          e.target === i && this.destroy()
        }
      }), this.document = e(i.style ? i.ownerDocument : i.document || i), this.window = e(this.document[0].defaultView || this.document[0].parentWindow)), this.options = e.widget.extend({}, this.options, this._getCreateOptions(), t), this._create(), this._trigger("create", null, this._getCreateEventData()), this._init()
    },
    _getCreateOptions: e.noop,
    _getCreateEventData: e.noop,
    _create: e.noop,
    _init: e.noop,
    destroy: function() {
      this._destroy(), this.element.unbind(this.eventNamespace).removeData(this.widgetFullName).removeData(e.camelCase(this.widgetFullName)), this.widget().unbind(this.eventNamespace).removeAttr("aria-disabled").removeClass(this.widgetFullName + "-disabled " + "ui-state-disabled"), this.bindings.unbind(this.eventNamespace), this.hoverable.removeClass("ui-state-hover"), this.focusable.removeClass("ui-state-focus")
    },
    _destroy: e.noop,
    widget: function() {
      return this.element
    },
    option: function(t, i) {
      var s, n, a, o = t;
      if (0 === arguments.length) return e.widget.extend({}, this.options);
      if ("string" == typeof t)
        if (o = {}, s = t.split("."), t = s.shift(), s.length) {
          for (n = o[t] = e.widget.extend({}, this.options[t]), a = 0; s.length - 1 > a; a++) n[s[a]] = n[s[a]] || {}, n = n[s[a]];
          if (t = s.pop(), 1 === arguments.length) return void 0 === n[t] ? null : n[t];
          n[t] = i
        } else {
          if (1 === arguments.length) return void 0 === this.options[t] ? null : this.options[t];
          o[t] = i
        } return this._setOptions(o), this
    },
    _setOptions: function(e) {
      var t;
      for (t in e) this._setOption(t, e[t]);
      return this
    },
    _setOption: function(e, t) {
      return this.options[e] = t, "disabled" === e && (this.widget().toggleClass(this.widgetFullName + "-disabled", !!t), t && (this.hoverable.removeClass("ui-state-hover"), this.focusable.removeClass("ui-state-focus"))), this
    },
    enable: function() {
      return this._setOptions({
        disabled: !1
      })
    },
    disable: function() {
      return this._setOptions({
        disabled: !0
      })
    },
    _on: function(t, i, s) {
      var n, a = this;
      "boolean" != typeof t && (s = i, i = t, t = !1), s ? (i = n = e(i), this.bindings = this.bindings.add(i)) : (s = i, i = this.element, n = this.widget()), e.each(s, function(s, o) {
        function r() {
          return t || a.options.disabled !== !0 && !e(this).hasClass("ui-state-disabled") ? ("string" == typeof o ? a[o] : o).apply(a, arguments) : void 0
        }
        "string" != typeof o && (r.guid = o.guid = o.guid || r.guid || e.guid++);
        var h = s.match(/^([\w:-]*)\s*(.*)$/),
          l = h[1] + a.eventNamespace,
          u = h[2];
        u ? n.delegate(u, l, r) : i.bind(l, r)
      })
    },
    _off: function(t, i) {
      i = (i || "").split(" ").join(this.eventNamespace + " ") + this.eventNamespace, t.unbind(i).undelegate(i), this.bindings = e(this.bindings.not(t).get()), this.focusable = e(this.focusable.not(t).get()), this.hoverable = e(this.hoverable.not(t).get())
    },
    _delay: function(e, t) {
      function i() {
        return ("string" == typeof e ? s[e] : e).apply(s, arguments)
      }
      var s = this;
      return setTimeout(i, t || 0)
    },
    _hoverable: function(t) {
      this.hoverable = this.hoverable.add(t), this._on(t, {
        mouseenter: function(t) {
          e(t.currentTarget).addClass("ui-state-hover")
        },
        mouseleave: function(t) {
          e(t.currentTarget).removeClass("ui-state-hover")
        }
      })
    },
    _focusable: function(t) {
      this.focusable = this.focusable.add(t), this._on(t, {
        focusin: function(t) {
          e(t.currentTarget).addClass("ui-state-focus")
        },
        focusout: function(t) {
          e(t.currentTarget).removeClass("ui-state-focus")
        }
      })
    },
    _trigger: function(t, i, s) {
      var n, a, o = this.options[t];
      if (s = s || {}, i = e.Event(i), i.type = (t === this.widgetEventPrefix ? t : this.widgetEventPrefix + t).toLowerCase(), i.target = this.element[0], a = i.originalEvent)
        for (n in a) n in i || (i[n] = a[n]);
      return this.element.trigger(i, s), !(e.isFunction(o) && o.apply(this.element[0], [i].concat(s)) === !1 || i.isDefaultPrevented())
    }
  }, e.each({
    show: "fadeIn",
    hide: "fadeOut"
  }, function(t, i) {
    e.Widget.prototype["_" + t] = function(s, n, a) {
      "string" == typeof n && (n = {
        effect: n
      });
      var o, r = n ? n === !0 || "number" == typeof n ? i : n.effect || i : t;
      n = n || {}, "number" == typeof n && (n = {
        duration: n
      }), o = !e.isEmptyObject(n), n.complete = a, n.delay && s.delay(n.delay), o && e.effects && e.effects.effect[r] ? s[t](n) : r !== t && s[r] ? s[r](n.duration, n.easing, a) : s.queue(function(i) {
        e(this)[t](), a && a.call(s[0]), i()
      })
    }
  }), e.widget;
  var a = !1;
  e(document).mouseup(function() {
    a = !1
  }), e.widget("ui.mouse", {
    version: "1.11.4",
    options: {
      cancel: "input,textarea,button,select,option",
      distance: 1,
      delay: 0
    },
    _mouseInit: function() {
      var t = this;
      this.element.bind("mousedown." + this.widgetName, function(e) {
        return t._mouseDown(e)
      }).bind("click." + this.widgetName, function(i) {
        return !0 === e.data(i.target, t.widgetName + ".preventClickEvent") ? (e.removeData(i.target, t.widgetName + ".preventClickEvent"), i.stopImmediatePropagation(), !1) : void 0
      }), this.started = !1
    },
    _mouseDestroy: function() {
      this.element.unbind("." + this.widgetName), this._mouseMoveDelegate && this.document.unbind("mousemove." + this.widgetName, this._mouseMoveDelegate).unbind("mouseup." + this.widgetName, this._mouseUpDelegate)
    },
    _mouseDown: function(t) {
      if (!a) {
        this._mouseMoved = !1, this._mouseStarted && this._mouseUp(t), this._mouseDownEvent = t;
        var i = this,
          s = 1 === t.which,
          n = "string" == typeof this.options.cancel && t.target.nodeName ? e(t.target).closest(this.options.cancel).length : !1;
        return s && !n && this._mouseCapture(t) ? (this.mouseDelayMet = !this.options.delay, this.mouseDelayMet || (this._mouseDelayTimer = setTimeout(function() {
          i.mouseDelayMet = !0
        }, this.options.delay)), this._mouseDistanceMet(t) && this._mouseDelayMet(t) && (this._mouseStarted = this._mouseStart(t) !== !1, !this._mouseStarted) ? (t.preventDefault(), !0) : (!0 === e.data(t.target, this.widgetName + ".preventClickEvent") && e.removeData(t.target, this.widgetName + ".preventClickEvent"), this._mouseMoveDelegate = function(e) {
          return i._mouseMove(e)
        }, this._mouseUpDelegate = function(e) {
          return i._mouseUp(e)
        }, this.document.bind("mousemove." + this.widgetName, this._mouseMoveDelegate).bind("mouseup." + this.widgetName, this._mouseUpDelegate), t.preventDefault(), a = !0, !0)) : !0
      }
    },
    _mouseMove: function(t) {
      if (this._mouseMoved) {
        if (e.ui.ie && (!document.documentMode || 9 > document.documentMode) && !t.button) return this._mouseUp(t);
        if (!t.which) return this._mouseUp(t)
      }
      return (t.which || t.button) && (this._mouseMoved = !0), this._mouseStarted ? (this._mouseDrag(t), t.preventDefault()) : (this._mouseDistanceMet(t) && this._mouseDelayMet(t) && (this._mouseStarted = this._mouseStart(this._mouseDownEvent, t) !== !1, this._mouseStarted ? this._mouseDrag(t) : this._mouseUp(t)), !this._mouseStarted)
    },
    _mouseUp: function(t) {
      return this.document.unbind("mousemove." + this.widgetName, this._mouseMoveDelegate).unbind("mouseup." + this.widgetName, this._mouseUpDelegate), this._mouseStarted && (this._mouseStarted = !1, t.target === this._mouseDownEvent.target && e.data(t.target, this.widgetName + ".preventClickEvent", !0), this._mouseStop(t)), a = !1, !1
    },
    _mouseDistanceMet: function(e) {
      return Math.max(Math.abs(this._mouseDownEvent.pageX - e.pageX), Math.abs(this._mouseDownEvent.pageY - e.pageY)) >= this.options.distance
    },
    _mouseDelayMet: function() {
      return this.mouseDelayMet
    },
    _mouseStart: function() {},
    _mouseDrag: function() {},
    _mouseStop: function() {},
    _mouseCapture: function() {
      return !0
    }
  }), e.widget("ui.slider", e.ui.mouse, {
    version: "1.11.4",
    widgetEventPrefix: "slide",
    options: {
      animate: !1,
      distance: 0,
      max: 100,
      min: 0,
      orientation: "horizontal",
      range: !1,
      step: 1,
      value: 0,
      values: null,
      change: null,
      slide: null,
      start: null,
      stop: null
    },
    numPages: 5,
    _create: function() {
      this._keySliding = !1, this._mouseSliding = !1, this._animateOff = !0, this._handleIndex = null, this._detectOrientation(), this._mouseInit(), this._calculateNewMax(), this.element.addClass("ui-slider ui-slider-" + this.orientation + " ui-widget" + " ui-widget-content" + " ui-corner-all"), this._refresh(), this._setOption("disabled", this.options.disabled), this._animateOff = !1
    },
    _refresh: function() {
      this._createRange(), this._createHandles(), this._setupEvents(), this._refreshValue()
    },
    _createHandles: function() {
      var t, i, s = this.options,
        n = this.element.find(".ui-slider-handle").addClass("ui-state-default ui-corner-all"),
        a = "<span class='ui-slider-handle ui-state-default ui-corner-all' tabindex='0'></span>",
        o = [];
      for (i = s.values && s.values.length || 1, n.length > i && (n.slice(i).remove(), n = n.slice(0, i)), t = n.length; i > t; t++) o.push(a);
      this.handles = n.add(e(o.join("")).appendTo(this.element)), this.handle = this.handles.eq(0), this.handles.each(function(t) {
        e(this).data("ui-slider-handle-index", t)
      })
    },
    _createRange: function() {
      var t = this.options,
        i = "";
      t.range ? (t.range === !0 && (t.values ? t.values.length && 2 !== t.values.length ? t.values = [t.values[0], t.values[0]] : e.isArray(t.values) && (t.values = t.values.slice(0)) : t.values = [this._valueMin(), this._valueMin()]), this.range && this.range.length ? this.range.removeClass("ui-slider-range-min ui-slider-range-max").css({
        left: "",
        bottom: ""
      }) : (this.range = e("<div></div>").appendTo(this.element), i = "ui-slider-range ui-widget-header ui-corner-all"), this.range.addClass(i + ("min" === t.range || "max" === t.range ? " ui-slider-range-" + t.range : ""))) : (this.range && this.range.remove(), this.range = null)
    },
    _setupEvents: function() {
      this._off(this.handles), this._on(this.handles, this._handleEvents), this._hoverable(this.handles), this._focusable(this.handles)
    },
    _destroy: function() {
      this.handles.remove(), this.range && this.range.remove(), this.element.removeClass("ui-slider ui-slider-horizontal ui-slider-vertical ui-widget ui-widget-content ui-corner-all"), this._mouseDestroy()
    },
    _mouseCapture: function(t) {
      var i, s, n, a, o, r, h, l, u = this,
        d = this.options;
      return d.disabled ? !1 : (this.elementSize = {
        width: this.element.outerWidth(),
        height: this.element.outerHeight()
      }, this.elementOffset = this.element.offset(), i = {
        x: t.pageX,
        y: t.pageY
      }, s = this._normValueFromMouse(i), n = this._valueMax() - this._valueMin() + 1, this.handles.each(function(t) {
        var i = Math.abs(s - u.values(t));
        (n > i || n === i && (t === u._lastChangedValue || u.values(t) === d.min)) && (n = i, a = e(this), o = t)
      }), r = this._start(t, o), r === !1 ? !1 : (this._mouseSliding = !0, this._handleIndex = o, a.addClass("ui-state-active").focus(), h = a.offset(), l = !e(t.target).parents().addBack().is(".ui-slider-handle"), this._clickOffset = l ? {
        left: 0,
        top: 0
      } : {
        left: t.pageX - h.left - a.width() / 2,
        top: t.pageY - h.top - a.height() / 2 - (parseInt(a.css("borderTopWidth"), 10) || 0) - (parseInt(a.css("borderBottomWidth"), 10) || 0) + (parseInt(a.css("marginTop"), 10) || 0)
      }, this.handles.hasClass("ui-state-hover") || this._slide(t, o, s), this._animateOff = !0, !0))
    },
    _mouseStart: function() {
      return !0
    },
    _mouseDrag: function(e) {
      var t = {
          x: e.pageX,
          y: e.pageY
        },
        i = this._normValueFromMouse(t);
      return this._slide(e, this._handleIndex, i), !1
    },
    _mouseStop: function(e) {
      return this.handles.removeClass("ui-state-active"), this._mouseSliding = !1, this._stop(e, this._handleIndex), this._change(e, this._handleIndex), this._handleIndex = null, this._clickOffset = null, this._animateOff = !1, !1
    },
    _detectOrientation: function() {
      this.orientation = "vertical" === this.options.orientation ? "vertical" : "horizontal"
    },
    _normValueFromMouse: function(e) {
      var t, i, s, n, a;
      return "horizontal" === this.orientation ? (t = this.elementSize.width, i = e.x - this.elementOffset.left - (this._clickOffset ? this._clickOffset.left : 0)) : (t = this.elementSize.height, i = e.y - this.elementOffset.top - (this._clickOffset ? this._clickOffset.top : 0)), s = i / t, s > 1 && (s = 1), 0 > s && (s = 0), "vertical" === this.orientation && (s = 1 - s), n = this._valueMax() - this._valueMin(), a = this._valueMin() + s * n, this._trimAlignValue(a)
    },
    _start: function(e, t) {
      var i = {
        handle: this.handles[t],
        value: this.value()
      };
      return this.options.values && this.options.values.length && (i.value = this.values(t), i.values = this.values()), this._trigger("start", e, i)
    },
    _slide: function(e, t, i) {
      var s, n, a;
      this.options.values && this.options.values.length ? (s = this.values(t ? 0 : 1), 2 === this.options.values.length && this.options.range === !0 && (0 === t && i > s || 1 === t && s > i) && (i = s), i !== this.values(t) && (n = this.values(), n[t] = i, a = this._trigger("slide", e, {
        handle: this.handles[t],
        value: i,
        values: n
      }), s = this.values(t ? 0 : 1), a !== !1 && this.values(t, i))) : i !== this.value() && (a = this._trigger("slide", e, {
        handle: this.handles[t],
        value: i
      }), a !== !1 && this.value(i))
    },
    _stop: function(e, t) {
      var i = {
        handle: this.handles[t],
        value: this.value()
      };
      this.options.values && this.options.values.length && (i.value = this.values(t), i.values = this.values()), this._trigger("stop", e, i)
    },
    _change: function(e, t) {
      if (!this._keySliding && !this._mouseSliding) {
        var i = {
          handle: this.handles[t],
          value: this.value()
        };
        this.options.values && this.options.values.length && (i.value = this.values(t), i.values = this.values()), this._lastChangedValue = t, this._trigger("change", e, i)
      }
    },
    value: function(e) {
      return arguments.length ? (this.options.value = this._trimAlignValue(e), this._refreshValue(), this._change(null, 0), void 0) : this._value()
    },
    values: function(t, i) {
      var s, n, a;
      if (arguments.length > 1) return this.options.values[t] = this._trimAlignValue(i), this._refreshValue(), this._change(null, t), void 0;
      if (!arguments.length) return this._values();
      if (!e.isArray(arguments[0])) return this.options.values && this.options.values.length ? this._values(t) : this.value();
      for (s = this.options.values, n = arguments[0], a = 0; s.length > a; a += 1) s[a] = this._trimAlignValue(n[a]), this._change(null, a);
      this._refreshValue()
    },
    _setOption: function(t, i) {
      var s, n = 0;
      switch ("range" === t && this.options.range === !0 && ("min" === i ? (this.options.value = this._values(0), this.options.values = null) : "max" === i && (this.options.value = this._values(this.options.values.length - 1), this.options.values = null)), e.isArray(this.options.values) && (n = this.options.values.length), "disabled" === t && this.element.toggleClass("ui-state-disabled", !!i), this._super(t, i), t) {
        case "orientation":
          this._detectOrientation(), this.element.removeClass("ui-slider-horizontal ui-slider-vertical").addClass("ui-slider-" + this.orientation), this._refreshValue(), this.handles.css("horizontal" === i ? "bottom" : "left", "");
          break;
        case "value":
          this._animateOff = !0, this._refreshValue(), this._change(null, 0), this._animateOff = !1;
          break;
        case "values":
          for (this._animateOff = !0, this._refreshValue(), s = 0; n > s; s += 1) this._change(null, s);
          this._animateOff = !1;
          break;
        case "step":
        case "min":
        case "max":
          this._animateOff = !0, this._calculateNewMax(), this._refreshValue(), this._animateOff = !1;
          break;
        case "range":
          this._animateOff = !0, this._refresh(), this._animateOff = !1
      }
    },
    _value: function() {
      var e = this.options.value;
      return e = this._trimAlignValue(e)
    },
    _values: function(e) {
      var t, i, s;
      if (arguments.length) return t = this.options.values[e], t = this._trimAlignValue(t);
      if (this.options.values && this.options.values.length) {
        for (i = this.options.values.slice(), s = 0; i.length > s; s += 1) i[s] = this._trimAlignValue(i[s]);
        return i
      }
      return []
    },
    _trimAlignValue: function(e) {
      if (this._valueMin() >= e) return this._valueMin();
      if (e >= this._valueMax()) return this._valueMax();
      var t = this.options.step > 0 ? this.options.step : 1,
        i = (e - this._valueMin()) % t,
        s = e - i;
      return 2 * Math.abs(i) >= t && (s += i > 0 ? t : -t), parseFloat(s.toFixed(5))
    },
    _calculateNewMax: function() {
      var e = this.options.max,
        t = this._valueMin(),
        i = this.options.step,
        s = Math.floor(+(e - t).toFixed(this._precision()) / i) * i;
      e = s + t, this.max = parseFloat(e.toFixed(this._precision()))
    },
    _precision: function() {
      var e = this._precisionOf(this.options.step);
      return null !== this.options.min && (e = Math.max(e, this._precisionOf(this.options.min))), e
    },
    _precisionOf: function(e) {
      var t = "" + e,
        i = t.indexOf(".");
      return -1 === i ? 0 : t.length - i - 1
    },
    _valueMin: function() {
      return this.options.min
    },
    _valueMax: function() {
      return this.max
    },
    _refreshValue: function() {
      var t, i, s, n, a, o = this.options.range,
        r = this.options,
        h = this,
        l = this._animateOff ? !1 : r.animate,
        u = {};
      this.options.values && this.options.values.length ? this.handles.each(function(s) {
        i = 100 * ((h.values(s) - h._valueMin()) / (h._valueMax() - h._valueMin())), u["horizontal" === h.orientation ? "left" : "bottom"] = i + "%", e(this).stop(1, 1)[l ? "animate" : "css"](u, r.animate), h.options.range === !0 && ("horizontal" === h.orientation ? (0 === s && h.range.stop(1, 1)[l ? "animate" : "css"]({
          left: i + "%"
        }, r.animate), 1 === s && h.range[l ? "animate" : "css"]({
          width: i - t + "%"
        }, {
          queue: !1,
          duration: r.animate
        })) : (0 === s && h.range.stop(1, 1)[l ? "animate" : "css"]({
          bottom: i + "%"
        }, r.animate), 1 === s && h.range[l ? "animate" : "css"]({
          height: i - t + "%"
        }, {
          queue: !1,
          duration: r.animate
        }))), t = i
      }) : (s = this.value(), n = this._valueMin(), a = this._valueMax(), i = a !== n ? 100 * ((s - n) / (a - n)) : 0, u["horizontal" === this.orientation ? "left" : "bottom"] = i + "%", this.handle.stop(1, 1)[l ? "animate" : "css"](u, r.animate), "min" === o && "horizontal" === this.orientation && this.range.stop(1, 1)[l ? "animate" : "css"]({
        width: i + "%"
      }, r.animate), "max" === o && "horizontal" === this.orientation && this.range[l ? "animate" : "css"]({
        width: 100 - i + "%"
      }, {
        queue: !1,
        duration: r.animate
      }), "min" === o && "vertical" === this.orientation && this.range.stop(1, 1)[l ? "animate" : "css"]({
        height: i + "%"
      }, r.animate), "max" === o && "vertical" === this.orientation && this.range[l ? "animate" : "css"]({
        height: 100 - i + "%"
      }, {
        queue: !1,
        duration: r.animate
      }))
    },
    _handleEvents: {
      keydown: function(t) {
        var i, s, n, a, o = e(t.target).data("ui-slider-handle-index");
        switch (t.keyCode) {
          case e.ui.keyCode.HOME:
          case e.ui.keyCode.END:
          case e.ui.keyCode.PAGE_UP:
          case e.ui.keyCode.PAGE_DOWN:
          case e.ui.keyCode.UP:
          case e.ui.keyCode.RIGHT:
          case e.ui.keyCode.DOWN:
          case e.ui.keyCode.LEFT:
            if (t.preventDefault(), !this._keySliding && (this._keySliding = !0, e(t.target).addClass("ui-state-active"), i = this._start(t, o), i === !1)) return
        }
        switch (a = this.options.step, s = n = this.options.values && this.options.values.length ? this.values(o) : this.value(), t.keyCode) {
          case e.ui.keyCode.HOME:
            n = this._valueMin();
            break;
          case e.ui.keyCode.END:
            n = this._valueMax();
            break;
          case e.ui.keyCode.PAGE_UP:
            n = this._trimAlignValue(s + (this._valueMax() - this._valueMin()) / this.numPages);
            break;
          case e.ui.keyCode.PAGE_DOWN:
            n = this._trimAlignValue(s - (this._valueMax() - this._valueMin()) / this.numPages);
            break;
          case e.ui.keyCode.UP:
          case e.ui.keyCode.RIGHT:
            if (s === this._valueMax()) return;
            n = this._trimAlignValue(s + a);
            break;
          case e.ui.keyCode.DOWN:
          case e.ui.keyCode.LEFT:
            if (s === this._valueMin()) return;
            n = this._trimAlignValue(s - a)
        }
        this._slide(t, o, n)
      },
      keyup: function(t) {
        var i = e(t.target).data("ui-slider-handle-index");
        this._keySliding && (this._keySliding = !1, this._stop(t, i), this._change(t, i), e(t.target).removeClass("ui-state-active"))
      }
    }
  })
});



/*! lazysizes - v5.1.0 */
! function(a, b) {
  var c = b(a, a.document);
  a.lazySizes = c, "object" == typeof module && module.exports && (module.exports = c)
}("undefined" != typeof window ? window : {}, function(a, b) {
  "use strict";
  var c, d;
  if (function() {
      var b, c = {
        lazyClass: "lazyload",
        loadedClass: "lazyloaded",
        loadingClass: "lazyloading",
        preloadClass: "lazypreload",
        errorClass: "lazyerror",
        autosizesClass: "lazyautosizes",
        srcAttr: "data-src",
        srcsetAttr: "data-srcset",
        sizesAttr: "data-sizes",
        minSize: 40,
        customMedia: {},
        init: !0,
        expFactor: 1.5,
        hFac: .8,
        loadMode: 2,
        loadHidden: !0,
        ricTimeout: 0,
        throttleDelay: 125
      };
      d = a.lazySizesConfig || a.lazysizesConfig || {};
      for (b in c) b in d || (d[b] = c[b])
    }(), !b || !b.getElementsByClassName) return {
    init: function() {},
    cfg: d,
    noSupport: !0
  };
  var e = b.documentElement,
    f = a.Date,
    g = a.HTMLPictureElement,
    h = "addEventListener",
    i = "getAttribute",
    j = a[h],
    k = a.setTimeout,
    l = a.requestAnimationFrame || k,
    m = a.requestIdleCallback,
    n = /^picture$/i,
    o = ["load", "error", "lazyincluded", "_lazyloaded"],
    p = {},
    q = Array.prototype.forEach,
    r = function(a, b) {
      return p[b] || (p[b] = new RegExp("(\\s|^)" + b + "(\\s|$)")), p[b].test(a[i]("class") || "") && p[b]
    },
    s = function(a, b) {
      r(a, b) || a.setAttribute("class", (a[i]("class") || "").trim() + " " + b)
    },
    t = function(a, b) {
      var c;
      (c = r(a, b)) && a.setAttribute("class", (a[i]("class") || "").replace(c, " "))
    },
    u = function(a, b, c) {
      var d = c ? h : "removeEventListener";
      c && u(a, b), o.forEach(function(c) {
        a[d](c, b)
      })
    },
    v = function(a, d, e, f, g) {
      var h = b.createEvent("Event");
      return e || (e = {}), e.instance = c, h.initEvent(d, !f, !g), h.detail = e, a.dispatchEvent(h), h
    },
    w = function(b, c) {
      var e;
      !g && (e = a.picturefill || d.pf) ? (c && c.src && !b[i]("srcset") && b.setAttribute("srcset", c.src), e({
        reevaluate: !0,
        elements: [b]
      })) : c && c.src && (b.src = c.src)
    },
    x = function(a, b) {
      return (getComputedStyle(a, null) || {})[b]
    },
    y = function(a, b, c) {
      for (c = c || a.offsetWidth; c < d.minSize && b && !a._lazysizesWidth;) c = b.offsetWidth, b = b.parentNode;
      return c
    },
    z = function() {
      var a, c, d = [],
        e = [],
        f = d,
        g = function() {
          var b = f;
          for (f = d.length ? e : d, a = !0, c = !1; b.length;) b.shift()();
          a = !1
        },
        h = function(d, e) {
          a && !e ? d.apply(this, arguments) : (f.push(d), c || (c = !0, (b.hidden ? k : l)(g)))
        };
      return h._lsFlush = g, h
    }(),
    A = function(a, b) {
      return b ? function() {
        z(a)
      } : function() {
        var b = this,
          c = arguments;
        z(function() {
          a.apply(b, c)
        })
      }
    },
    B = function(a) {
      var b, c = 0,
        e = d.throttleDelay,
        g = d.ricTimeout,
        h = function() {
          b = !1, c = f.now(), a()
        },
        i = m && g > 49 ? function() {
          m(h, {
            timeout: g
          }), g !== d.ricTimeout && (g = d.ricTimeout)
        } : A(function() {
          k(h)
        }, !0);
      return function(a) {
        var d;
        (a = !0 === a) && (g = 33), b || (b = !0, d = e - (f.now() - c), d < 0 && (d = 0), a || d < 9 ? i() : k(i, d))
      }
    },
    C = function(a) {
      var b, c, d = 99,
        e = function() {
          b = null, a()
        },
        g = function() {
          var a = f.now() - c;
          a < d ? k(g, d - a) : (m || e)(e)
        };
      return function() {
        c = f.now(), b || (b = k(g, d))
      }
    },
    D = function() {
      var g, l, m, o, p, y, D, F, G, H, I, J, K = /^img$/i,
        L = /^iframe$/i,
        M = "onscroll" in a && !/(gle|ing)bot/.test(navigator.userAgent),
        N = 0,
        O = 0,
        P = 0,
        Q = -1,
        R = function(a) {
          P--, (!a || P < 0 || !a.target) && (P = 0)
        },
        S = function(a) {
          return null == J && (J = "hidden" == x(b.body, "visibility")), J || "hidden" != x(a.parentNode, "visibility") && "hidden" != x(a, "visibility")
        },
        T = function(a, c) {
          var d, f = a,
            g = S(a);
          for (F -= c, I += c, G -= c, H += c; g && (f = f.offsetParent) && f != b.body && f != e;)(g = (x(f, "opacity") || 1) > 0) && "visible" != x(f, "overflow") && (d = f.getBoundingClientRect(), g = H > d.left && G < d.right && I > d.top - 1 && F < d.bottom + 1);
          return g
        },
        U = function() {
          var a, f, h, j, k, m, n, p, q, r, s, t, u = c.elements;
          if ((o = d.loadMode) && P < 8 && (a = u.length)) {
            for (f = 0, Q++; f < a; f++)
              if (u[f] && !u[f]._lazyRace)
                if (!M || c.prematureUnveil && c.prematureUnveil(u[f])) aa(u[f]);
                else if ((p = u[f][i]("data-expand")) && (m = 1 * p) || (m = O), r || (r = !d.expand || d.expand < 1 ? e.clientHeight > 500 && e.clientWidth > 500 ? 500 : 370 : d.expand, c._defEx = r, s = r * d.expFactor, t = d.hFac, J = null, O < s && P < 1 && Q > 2 && o > 2 && !b.hidden ? (O = s, Q = 0) : O = o > 1 && Q > 1 && P < 6 ? r : N), q !== m && (y = innerWidth + m * t, D = innerHeight + m, n = -1 * m, q = m), h = u[f].getBoundingClientRect(), (I = h.bottom) >= n && (F = h.top) <= D && (H = h.right) >= n * t && (G = h.left) <= y && (I || H || G || F) && (d.loadHidden || S(u[f])) && (l && P < 3 && !p && (o < 3 || Q < 4) || T(u[f], m))) {
              if (aa(u[f]), k = !0, P > 9) break
            } else !k && l && !j && P < 4 && Q < 4 && o > 2 && (g[0] || d.preloadAfterLoad) && (g[0] || !p && (I || H || G || F || "auto" != u[f][i](d.sizesAttr))) && (j = g[0] || u[f]);
            j && !k && aa(j)
          }
        },
        V = B(U),
        W = function(a) {
          var b = a.target;
          if (b._lazyCache) return void delete b._lazyCache;
          R(a), s(b, d.loadedClass), t(b, d.loadingClass), u(b, Y), v(b, "lazyloaded")
        },
        X = A(W),
        Y = function(a) {
          X({
            target: a.target
          })
        },
        Z = function(a, b) {
          try {
            a.contentWindow.location.replace(b)
          } catch (c) {
            a.src = b
          }
        },
        $ = function(a) {
          var b, c = a[i](d.srcsetAttr);
          (b = d.customMedia[a[i]("data-media") || a[i]("media")]) && a.setAttribute("media", b), c && a.setAttribute("srcset", c)
        },
        _ = A(function(a, b, c, e, f) {
          var g, h, j, l, o, p;
          (o = v(a, "lazybeforeunveil", b)).defaultPrevented || (e && (c ? s(a, d.autosizesClass) : a.setAttribute("sizes", e)), h = a[i](d.srcsetAttr), g = a[i](d.srcAttr), f && (j = a.parentNode, l = j && n.test(j.nodeName || "")), p = b.firesLoad || "src" in a && (h || g || l), o = {
            target: a
          }, s(a, d.loadingClass), p && (clearTimeout(m), m = k(R, 2500), u(a, Y, !0)), l && q.call(j.getElementsByTagName("source"), $), h ? a.setAttribute("srcset", h) : g && !l && (L.test(a.nodeName) ? Z(a, g) : a.src = g), f && (h || l) && w(a, {
            src: g
          })), a._lazyRace && delete a._lazyRace, t(a, d.lazyClass), z(function() {
            var b = a.complete && a.naturalWidth > 1;
            p && !b || (b && s(a, "ls-is-cached"), W(o), a._lazyCache = !0, k(function() {
              "_lazyCache" in a && delete a._lazyCache
            }, 9)), "lazy" == a.loading && P--
          }, !0)
        }),
        aa = function(a) {
          if (!a._lazyRace) {
            var b, c = K.test(a.nodeName),
              e = c && (a[i](d.sizesAttr) || a[i]("sizes")),
              f = "auto" == e;
            (!f && l || !c || !a[i]("src") && !a.srcset || a.complete || r(a, d.errorClass) || !r(a, d.lazyClass)) && (b = v(a, "lazyunveilread").detail, f && E.updateElem(a, !0, a.offsetWidth), a._lazyRace = !0, P++, _(a, b, f, e, c))
          }
        },
        ba = C(function() {
          d.loadMode = 3, V()
        }),
        ca = function() {
          3 == d.loadMode && (d.loadMode = 2), ba()
        },
        da = function() {
          if (!l) {
            if (f.now() - p < 999) return void k(da, 999);
            l = !0, d.loadMode = 3, V(), j("scroll", ca, !0)
          }
        };
      return {
        _: function() {
          p = f.now(), c.elements = b.getElementsByClassName(d.lazyClass), g = b.getElementsByClassName(d.lazyClass + " " + d.preloadClass), j("scroll", V, !0), j("resize", V, !0), a.MutationObserver ? new MutationObserver(V).observe(e, {
            childList: !0,
            subtree: !0,
            attributes: !0
          }) : (e[h]("DOMNodeInserted", V, !0), e[h]("DOMAttrModified", V, !0), setInterval(V, 999)), j("hashchange", V, !0), ["focus", "mouseover", "click", "load", "transitionend", "animationend"].forEach(function(a) {
            b[h](a, V, !0)
          }), /d$|^c/.test(b.readyState) ? da() : (j("load", da), b[h]("DOMContentLoaded", V), k(da, 2e4)), c.elements.length ? (U(), z._lsFlush()) : V()
        },
        checkElems: V,
        unveil: aa,
        _aLSL: ca
      }
    }(),
    E = function() {
      var a, c = A(function(a, b, c, d) {
          var e, f, g;
          if (a._lazysizesWidth = d, d += "px", a.setAttribute("sizes", d), n.test(b.nodeName || ""))
            for (e = b.getElementsByTagName("source"), f = 0, g = e.length; f < g; f++) e[f].setAttribute("sizes", d);
          c.detail.dataAttr || w(a, c.detail)
        }),
        e = function(a, b, d) {
          var e, f = a.parentNode;
          f && (d = y(a, f, d), e = v(a, "lazybeforesizes", {
            width: d,
            dataAttr: !!b
          }), e.defaultPrevented || (d = e.detail.width) && d !== a._lazysizesWidth && c(a, f, e, d))
        },
        f = function() {
          var b, c = a.length;
          if (c)
            for (b = 0; b < c; b++) e(a[b])
        },
        g = C(f);
      return {
        _: function() {
          a = b.getElementsByClassName(d.autosizesClass), j("resize", g)
        },
        checkElems: g,
        updateElem: e
      }
    }(),
    F = function() {
      !F.i && b.getElementsByClassName && (F.i = !0, E._(), D._())
    };
  return k(function() {
    d.init && F()
  }), c = {
    cfg: d,
    autoSizer: E,
    loader: D,
    init: F,
    uP: w,
    aC: s,
    rC: t,
    hC: r,
    fire: v,
    gW: y,
    rAF: z
  }
});



/*!
 * JavaScript Cookie v2.1.3
 * https://github.com/js-cookie/js-cookie
 */

! function(a) {
  "use strict";
  var b = !1;
  if ("function" == typeof define && define.amd && (define(a), b = !0), "object" == typeof exports && (module.exports = a(), b = !0), !b) {
    var c = window.Cookies,
      d = window.Cookies = a();
    d.noConflict = function() {
      return window.Cookies = c, d
    }
  }
}(function() {
  function a() {
    for (var a = 0, b = {}; a < arguments.length; a++) {
      var c = arguments[a];
      for (var d in c) b[d] = c[d]
    }
    return b
  }

  function b(c) {
    function d(b, e, f) {
      var g;
      if ("undefined" != typeof document) {
        if (arguments.length > 1) {
          if (f = a({
              path: "/"
            }, d.defaults, f), "number" == typeof f.expires) {
            var h = new Date;
            h.setMilliseconds(h.getMilliseconds() + 864e5 * f.expires), f.expires = h
          }
          try {
            g = JSON.stringify(e), /^[\{\[]/.test(g) && (e = g)
          } catch (a) {}
          return e = c.write ? c.write(e, b) : encodeURIComponent(String(e)).replace(/%(23|24|26|2B|3A|3C|3E|3D|2F|3F|40|5B|5D|5E|60|7B|7D|7C)/g, decodeURIComponent), b = encodeURIComponent(String(b)), b = b.replace(/%(23|24|26|2B|5E|60|7C)/g, decodeURIComponent), b = b.replace(/[\(\)]/g, escape), document.cookie = [b, "=", e, f.expires ? "; expires=" + f.expires.toUTCString() : "", f.path ? "; path=" + f.path : "", f.domain ? "; domain=" + f.domain : "", f.secure ? "; secure" : ""].join("")
        }
        b || (g = {});
        for (var i = document.cookie ? document.cookie.split("; ") : [], j = /(%[0-9A-Z]{2})+/g, k = 0; k < i.length; k++) {
          var l = i[k].split("="),
            m = l.slice(1).join("=");
          '"' === m.charAt(0) && (m = m.slice(1, -1));
          try {
            var n = l[0].replace(j, decodeURIComponent);
            if (m = c.read ? c.read(m, n) : c(m, n) || m.replace(j, decodeURIComponent), this.json) try {
              m = JSON.parse(m)
            } catch (a) {}
            if (b === n) {
              g = m;
              break
            }
            b || (g[n] = m)
          } catch (a) {}
        }
        return g
      }
    }
    return d.set = d, d.get = function(a) {
      return d.call(d, a)
    }, d.getJSON = function() {
      return d.apply({
        json: !0
      }, [].slice.call(arguments))
    }, d.defaults = {}, d.remove = function(b, c) {
      d(b, "", a(c, {
        expires: -1
      }))
    }, d.withConverter = b, d
  }
  return b(function() {})
});


/*!
 * jQuery UI Touch Punch 0.2.3
 *
 * Copyright 2011â€"2014, Dave Furfero
 * Dual licensed under the MIT or GPL Version 2 licenses.
 *
 * Depends:
 *  jquery.ui.widget.js
 *  jquery.ui.mouse.js
 */
! function(a) {
  function f(a, b) {
    if (!(a.originalEvent.touches.length > 1)) {
      a.preventDefault();
      var c = a.originalEvent.changedTouches[0],
        d = document.createEvent("MouseEvents");
      d.initMouseEvent(b, !0, !0, window, 1, c.screenX, c.screenY, c.clientX, c.clientY, !1, !1, !1, !1, 0, null), a.target.dispatchEvent(d)
    }
  }
  if (a.support.touch = "ontouchend" in document, a.support.touch) {
    var e, b = a.ui.mouse.prototype,
      c = b._mouseInit,
      d = b._mouseDestroy;
    b._touchStart = function(a) {
      var b = this;
      !e && b._mouseCapture(a.originalEvent.changedTouches[0]) && (e = !0, b._touchMoved = !1, f(a, "mouseover"), f(a, "mousemove"), f(a, "mousedown"))
    }, b._touchMove = function(a) {
      e && (this._touchMoved = !0, f(a, "mousemove"))
    }, b._touchEnd = function(a) {
      e && (f(a, "mouseup"), f(a, "mouseout"), this._touchMoved || f(a, "click"), e = !1)
    }, b._mouseInit = function() {
      var b = this;
      b.element.bind({
        touchstart: a.proxy(b, "_touchStart"),
        touchmove: a.proxy(b, "_touchMove"),
        touchend: a.proxy(b, "_touchEnd")
      }), c.call(b)
    }, b._mouseDestroy = function() {
      var b = this;
      b.element.unbind({
        touchstart: a.proxy(b, "_touchStart"),
        touchmove: a.proxy(b, "_touchMove"),
        touchend: a.proxy(b, "_touchEnd")
      }), d.call(b)
    }
  }
}(jQuery);
