
function scrollToAnchor(a) {
    var b = $('a[name="' + a + '"]');
    $("html,body").animate({ scrollTop: b.offset().top }, "slow")
}

var networker = networker || {};

networker.HeaderConsumer = function () {
    "use strict";
    var a = {},
        b = function () {
            var a = null === networker.Global.getCookie("anonP3") ? !1 : !0, b = networker.Global.getUserName(),
                c = jQuery("#header-tool-signin"),
                d = jQuery("#header-consumer").find(".tools");
            a ? (c.find("span.username").html(b),
            c.find(".hideWhenSignedIn").hide(),
            jQuery(".hideWhenSignedIn.pipe, .signed-out").hide(),
            jQuery(".signed-in").show()) : (c.find(".hideWhenSignedOut").hide(),
            jQuery(".signed-out").show(), jQuery(".signed-in").hide()), d.show()
        }, c = function () { var a = jQuery(this).find('input[type="text"]').val(); return void 0 === a || "" === a ? !1 : void 0 }, d = function () { jQuery(".header-tool-search").submit(c) }; return a.init = function () { b(), d() }, a
}();

var networker = networker || {}; networker.NavPrimary = function () {
    "use strict";
    var a, b, c, d, e, f, g, h, i, j, k, l, m = {},
        n = 1100, o = 0, p = 5, q = 2, r = 0, s = 0, t = !0,
        u = "ontouchstart" in document.documentElement ? "click" : "mouseenter",
        v = function () {
            if (i.on("click", ".show-more", E), k) { var b = k.find(".show-more"); b.on("mouseenter focusin", F), b.on("mouseleave", G), b.on("focusout", "a", H) } a ? (c && (c.on("click", "span", sa), g.on("click", "a", sa)), h.on("click", ia), i.on("click", "a", ja)) : (k && k.on("click", ".show-more>a", I), Modernizr.touch || (u = "ontouchstart" in document.documentElement ? "mouseover" : "mouseenter"), i.on(u, "li", N), Modernizr.touch ? (jQuery("#asea-page-wrapper").on("click", T), i.click(function (a) { a.stopPropagation() })) : i.on("mouseleave", T)), jQuery(window).on("unload", va), jQuery(window).on("pagehide", function () { T(), h.hasClass("is-visible") && h.trigger("click") })
        },
        w = function () {
            i.off("click", ".show-more", E), a ? (k && k.off("click", ".show-more>a", I), c && (c.off("click", "span", sa), g.off("click", "a", sa)), i.off(u, "li", N), jQuery("#asea-page-wrapper").off("click", T), i.off("mouseleave", T)) : (h.off("click", ia), i.off("click", "a", ja)), jQuery(window).off("unload", va), jQuery(window).off("pagehide")
        },
        x = function () {
            i.find("li").has("ul").each(function () { var b = jQuery(this); a ? jQuery(this).addClass("has-submenu") : b.parents("ul").length < 3 && jQuery(this).addClass("has-submenu") }), a ? i.addClass("is-mobile") : i.removeClass("is-mobile")
        },
        y = function () {
            i.removeClass("is-mobile"), i.find(".has-submenu").removeClass("has-submenu"), h.removeClass("is-visible")
        },
        z = function () {
            i.find("ul").removeAttr("style"), f.find("input").removeAttr("style")
        },
        A = function () {
            a ? i.find("ul").css({ width: n, left: 0 }) : i.find(".has-submenu").children("ul").css({})
        },
        /*MENU RESPONSIVE*/
        B = function () {
            a ? i.find(".has-submenu").each(function () {
                var a = jQuery(this).closest("ul").siblings("a"),
                    b = a.has("dt").length > 0 ? jQuery.trim(a.find("dt").text()) : a.html();
                b || (b = "Menu Principal"),
                jQuery(this).children("ul").prepend('<li class="js-injection"><a href="#" class="back">Volver a ' + b + "</a></li>")
            }) : V()
        },
        C = function () {
            i.find(".js-injection").remove(), f.find("#nav-secondary").remove()
        },
        D = function () {
            i.find(".view-limited").hide(), i.find(".show-more").closest("li").show()
        },
        E = function (a) {
            a.preventDefault(), a.stopPropagation(); var b = jQuery(a.currentTarget), c = b.closest("ul"); c.show(), c.children("li").show(), b.parent().hide()
        },
        F = function (a) {
            a.preventDefault(), a.stopPropagation(), jQuery(".overflow-menu").css({ "margin-left": 0 }); var b = jQuery(".overflow-menu"), c = jQuery(a.currentTarget), d = c.children("ul"), e = b.find("li a"); e.attr("tabIndex", 0), c.addClass("is-hover"), d.show(); var f = b.innerWidth(), g = jQuery("#nav-secondary").find(".show-more").innerWidth() - 2; b.css({ "margin-left": -f + g + "px" })
        },
        G = function (a) {
            a.preventDefault(), a.stopPropagation(); var b = jQuery(a.currentTarget), c = b.children("ul"); b.removeClass("is-hover"), c.hide()
        },
        H = function () {
            window.setTimeout(function () { var a = $(document.activeElement).parents(), b = k.find(".show-more"); a.is(".show-more") || b.trigger("mouseleave") }, 50)
        },
        I = function (a) {
            a.preventDefault()
        },
        J = function () {
            var a = document.location.href,
                b = i.find('[href="' + a + '"]');
            if (-1 === a.indexOf("errors/404") && b.size() > 0) {
                var c = b.last(); if (c.size() > 0) { var d = c.closest("li"), e = d.closest("ul"); for (d.addClass("is-active") ; d.size() > 0;) e = d.closest("ul"), d = e.closest("li"), d.addClass("is-active") }
            }
        },
        K = function () {
            i.find("ul").css({ left: 0 }), j.find("ul").hide(), o = 0
        },
        L = function () {
            i.find('.header-tool-search input[type="text"]').val("")
        },
        M = function (a) {
            var b = U(a); return b.parents(".has-submenu").length
        },
        N = function (a) {
            var b = $(this),
                c = b.children("a").next("ul");
            "none" === c.css("display") && a.preventDefault(),
            b.outerWidth() > c.outerWidth() && c.css("min-width", b.outerWidth() - 2),
            clearTimeout(l),
            s = 0,
            r += 1,
            $(this).parent().parent().hasClass("nav-consumer") ? (s = 0, 1 === r && (i.find("li").removeClass("is-hover"), i.find(".has-submenu").children("ul").hide()), r = 0) : s = 250, Modernizr.touch ? (R(b), O(b)) : l = setTimeout(function () { R(b), O(b) }, s)
        },
        O = function (a) {
            var b = a.children("ul");
            a.addClass("is-hover"), b.size() > 0 && a.hasClass("has-submenu") && (b = S(b), b.hasClass("reverse-menu") && Q(b), b.show(), P(b) && Q(b))
        },
        P = function (a) {
            var b = $(window).scrollTop(),
                c = a.offset().top, d = a.outerHeight(),
                e = c + d, f = c - (d - d / a.find("li").length), g = b + $(window).height();
            return f > b && e > g
        },
        Q = function (a) {
            a.toggleClass("reverse-menu").append(a.children("li").get().reverse())
        },
        R = function (a) {
            a.siblings(".is-hover").removeClass("is-hover").children("ul").hide()
        },
        S = function (a) {
            a.removeClass("display-opposite"),
            a.css("visibility", "hidden").show();
            var b = a.outerWidth(), c = a.offset().left;
            return a.css("visibility", "").hide(),
                a.removeClass("display-opposite"), c + b > n && a.addClass("display-opposite"), a
        },
        T = function () {
            clearTimeout(l),
            l = setTimeout(function () {
                i.find("li").removeClass("is-hover"),
                i.find(".has-submenu").children("ul").hide()
            }, s)
        },
        U = function (a) {
            var b,
                c = a.indexOf("#");
            return b = i.find('a[href="' + a + '"]').first(), c > 0 && 0 === b.size() && (b = i.find('a[href="' + a.substr(0, c) + '"]').first()), b
        },
        V = function () {
            var a, b, c = document.location.href, d = U(c),
                e = "main-element", h = "has-shadow", i = M(c); if (i > 0 && 3 >= i && -1 === c.indexOf("errors/404")) { 0 === f.find("#nav-secondary").length && g.after('<nav id="nav-secondary" class="js-injection"><div class="grid-inner"><ul></ul></div></nav>'), k = f.find("#nav-secondary").find("ul:first"), k.closest("nav").show(), a = d.siblings("ul").children("li").children("a"); var j, l; 3 === i || 0 === a.size() ? (l = d.closest("ul").find("a").first(), j = ga(l.attr("href"), l.text(), e), fa(j), b = d.closest("ul").children("li").children("a"), b.each(function (a) { if (0 !== a) { var b = jQuery(this).attr("href") === c ? "is-active" : "", d = 1 === a ? " " + h : "", e = ga(jQuery(this).attr("href"), jQuery(this).text(), b + d); fa(e) } })) : (l = 1 === i ? d.siblings("ul").find("a:first") : d.parent().closest("li").find("a:first"), j = ga(l.attr("href"), l.text(), e), fa(j), a.each(function (a) { if (0 !== a) { var b = 1 === a ? " " + h : ""; j = ga(jQuery(this).attr("href"), jQuery(this).text(), b), fa(j) } })), W() }
        },
        W = function () {
            var a = k.children("li");
            if (a.size() > p) {
                k.append('<li class="js-injection show-more"><a class="" href="#">More</a><span></span><ul class="overflow-menu"></ul></li>'),
                a.slice(p).appendTo(".overflow-menu").closest("ul");
                var b = jQuery(".overflow-menu").children("li").last();
                "More" === b.text() && b.remove(), jQuery(".overflow-menu").hide(), X()
            }
        },
        X = function () {
            k && (ba() < ea() ? Y() : _())
        },
        Y = function () {
            for (var a = k.children("li"), b = a.length; b > q; b--) { if (a = k.children("li"), !(ba() < ea())) return; Z(a, b - 1) }
        },
        Z = function (a, b) {
            a.eq(b - 1).prependTo(".overflow-menu")
        },
        _ = function () {
            for (var a, b, c = k.find(".overflow-menu").children("li").length, d = 40, e = c; e > 1; e--) a = k.children("li").length, b = k.find(".overflow-menu").first("li").first("a").width(), ba() > ea() + b + d && p >= a && aa()
        },
        aa = function () {
            jQuery(".overflow-menu").children("li:first").insertBefore(jQuery("#nav-secondary").find(".show-more:first"))
        },
        ba = function () {
            var a = jQuery(".grid-inner").width(); if (ca() || da()) return a; var b = jQuery("body").width(); return Math.min(a, b)
        },
        ca = function () {
            return jQuery(".migrated-content-container").length > 0
        },
        da = function () {
            return $("html").hasClass("netWork")
        },
        ea = function () {
            var a = 0; return k.children("li").each(function () { a += jQuery(this).outerWidth(!0) }), a
        },
        fa = function (a) {
            k.append(a)
        },
        ga = function (a, b, c) {
            var d = jQuery("<li>").addClass(c); return d.append(jQuery("<a>").attr("href", a).text(b)), d
        },
        ha = function () {
            var a = o * n; i.find("ul:visible").css({ left: n }), a = a > 0 ? -1 * a : a, i.children("ul").css({ left: a })
        },
        ia = function (a) {
            a.preventDefault(); var b = jQuery(this); b.blur(), b.toggleClass("is-visible"), b.hasClass("is-visible") ? j.show() : (j.hide(), K(), D(), L()), sa()
        },
        ja = function (a) {
            var b = jQuery(this), c = jQuery(this).parent(); if (!b.hasClass("show-more")) if (b.hasClass("back")) a.preventDefault(), o--, ma(), jQuery(this).addClass("js-back-clicked"); else { o++; var d = jQuery(this).parent().hasClass("has-submenu"); d ? (a.preventDefault(), ka(c)) : this.blur() }
        },
        ka = function (a) {
            jQuery("html, body").animate({ scrollTop: 0 }, 100), la(a.children("ul")), ma()
        },
        la = function (a) {
            a.show().css({ left: n })
        }, ma = function () { Modernizr.csstransitions ? j.css({ left: -(n * o) }).on("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", na) : j.animate({ left: -(n * o) }, na) }, na = function () { jQuery(".js-back-clicked").removeClass("js-back-clicked").closest("ul").removeAttr("style") }, oa = function () { var b = a; qa(), A(), !a && k && X(), b === a ? a && ha() : (ra(), va(), ua()) }, pa = function () { b.on("load", oa) }, qa = function () { if (jQuery("html").hasClass("migrated-consumer-mobile")) n = 320, a = !0; else if (jQuery("html").hasClass("mobile-only-nav")) n = jQuery("body").innerWidth(), a = !0; else if (jQuery("html").hasClass("desktop-only-nav")) { n = jQuery("body").innerWidth(); var b = jQuery(".nav-primary .grid-inner").first().innerWidth(); n = b > n ? b : n, a = !1 } else n = jQuery("body").innerWidth(), a = networker.Global.isMobile() }



        /*TOOTIP MENU*/

        , ra = function () { }


        //    var b = 0
        //    , g = 0
        //    , h = jQuery("html").height();

        //a && !networker.Global.getCookie("burgerSeen")
        //&& (0 === f.find(".burger-overlay").length && f.addClass("burger-help").append('<div class="burger-overlay" />').append('<div class="burger-copy"><b>Ayuda:</b><br>Selecciona el icon del Menu para mas opciones.<span></span></div>')




        //, c = f.find(".burger-copy")
        //, d = f.find(".burger-overlay")
        //, d.css("height", h + "px")
        //, g = parseInt(c.css("top"), 10) - 10
        //, e = setTimeout(sa, 5e3)
        //, jQuery(window).on("scroll", function () { b = jQuery(window).scrollTop(), b > g ? c.addClass("fixed") : c.removeClass("fixed") }
        //    ))
        //}

        /*END TOOTIP MENU*/

    , sa = function () { f.removeClass("burger-help"), f.find(".burger-overlay").remove(), f.find(".burger-copy").remove(), clearTimeout(e), t && networker.Global.setCookie("burgerSeen", !0, 1e3) }
    , ta = function () { b = jQuery(window), f = jQuery("#header-consumer"), g = jQuery(".nav-primary"), h = f.find(".mobile-nav-toggle"), i = f.find(".nav-consumer"), j = i.children("ul") }
    , ua = function () { x(), B(), J(), A(), ra(), v() }
    , va = function () { K(), z(), y(), C(), w() };

    return m.init = function () { ta(), qa(), ca() || da() || b.on("resize", oa), pa(), ua() }

        , m
}(), "function" != typeof String.prototype.endsWith && (String.prototype.endsWith = function (a) { return -1 !== this.indexOf(a, this.length - a.length) }), Modernizr.input.placeholder || (jQuery("[placeholder]").focus(function () { var a = jQuery(this); a.val() === a.attr("placeholder") && a.val("").removeClass("placeholder") }).blur(function () { var a = jQuery(this); ("" === a.val() || a.val() === a.attr("placeholder")) && a.val(a.attr("placeholder")).addClass("placeholder") }).blur(), jQuery("[placeholder]").parents("form").submit(function () { jQuery(this).find("[placeholder]").each(function () { var a = jQuery(this); a.val() === a.attr("placeholder") && a.val("") }) })); var networker = networker || {}; networker.GenericContent = function () { "use strict"; var a = {}, b = function () { var a = jQuery(".accordian"), b = jQuery(".accordian h2"), d = jQuery(".accordian div"); a.length > 0 && (b.prepend('<span class="js-accordian-indicator">&#43;</span>'), b.on("click", c), d.hide()), b.keydown(function (a) { 13 === a.keyCode && $(this).trigger("click") }) }, c = function () { b = "&#43;", jQuery(".js-accordian-indicator").html(b); var a = jQuery(this).siblings("div").first(), b = "&#8722;"; a.is(":hidden") ? (jQuery(".accordian div").hide(), a.slideDown(), a.closest("li").prepend('<a id="anchor" name="anchor">&nbsp;</a>'), scrollToAnchor("anchor"), jQuery("#anchor").remove()) : (a.slideUp(), b = "&#43;"), jQuery(this).find(".js-accordian-indicator").html(b) }; return a.init = function () { b() }, a }(); var networker = networker || {}; networker.Global = function () { "use strict"; var a = {}, b = 575, c = jQuery("html"), d = function () { jQuery("#javascriptWarning").remove() }, e = function (a, b) { var c = jQuery(".lp-mobile-chat-button:eq(" + b + ")"); c.after(jQuery.parseHTML(a)), c.next("div").find(".product-cta").text(""), c.appendTo(c.next("div").find(".product-cta")), f($("div.lp-available:eq(" + b + ")"), c) }, f = function (a, b) { a.on("click", function () { b.click() }), b.on("click", function (a) { a.stopPropagation() }) }, g = function (a, b) { var c = jQuery(".lp-mobile-chat-button:eq(" + b + ")"); c.after(jQuery.parseHTML(a)) }, h = function () { jQuery(".lp-mobile-chat-button").detach() }, i = function () { jQuery(".lp").detach() }, j = function () { c.on("click", '#asea-page-wrapper a[href^="#"]', function () { var a = !0, b = jQuery(this).attr("href").replace("#", ""), c = function () { return jQuery('[name="' + b + '"]').length > 0 ? jQuery('[name="' + b + '"]').offset().top : void (a = !1) }(); a && jQuery("html, body").animate({ scrollTop: c + "px" }) }) }, k = function () { var a = jQuery(".module"), b = /iPhone|iPod|iPad|Android|BlackBerry/.test(navigator.userAgent); b || a.each(function () { var a = jQuery(this); a.hasClass("no-hover") || a.find("a:first-child").append('<span class="hover-down" />') }) }, l = function () { $(".deep-link").on("click keypress", function (a) { a.preventDefault(), $(this).find("form").submit() }) }, m = function () { Modernizr.svg || jQuery('img[src*="svg"]').attr("src", function () { return jQuery(this).attr("src").replace(".svg", ".png") }) }, n = function (a, b, c) { var d = new Date; d.setDate(d.getDate() + c); var e = escape(b) + (null === c ? "" : "; expires=" + d.toUTCString()); document.cookie = a + "=" + e + ";domain=.networker.co.uk;path=/" }, o = function (a) { var b = document.cookie.indexOf(a + "="), c = b + a.length + 1; if (!b && a !== document.cookie.substring(0, a.length)) return null; if (-1 === b) return null; var d = document.cookie.indexOf(";", c); return -1 === d && (d = document.cookie.length), unescape(document.cookie.substring(c, d)) }, p = function () { var a = String(o("anonP3")); return a = a.replace(/</g, " "), a = a.replace(/>/g, " "), a = a.replace(/{/g, " "), a = a.replace(/}/g, " "), a = a.replace(/\"/g, " "), a = a.replace(/\//g, " "), a = a.replace(/\\/g, " "), a = a.replace(/;/g, " "), a = a.replace(/script/gi, " "), a = a.replace(/javascript/gi, " ") }; return a.isMobile = function (a) { if (!a) { var d = jQuery("body"); d.css("overflow-y", "hidden"), a = c.width(), d.css("overflow-y", "") } return b > a ? !0 : !1 }, a.getUserName = function () { return p() }, a.setCookie = function (a, b, c) { return n(a, b, c) }, a.getCookie = function (a) { return o(a) }, a.setMobileLivePersonAvailable = function (a, b) { return e(a, b) }, a.setMobileLivePersonUnavailable = function (a, b) { return g(a, b) }, a.detachMobileLivePersonButtons = function () { return h() }, a.detatchInactiveMobileLivePersonPlaceholder = function () { return i() }, a.init = function () { d(), k(), l(), m(), j() }, a }(), jQuery(function () { for (var a in networker) networker[a].init && networker[a].init() });
