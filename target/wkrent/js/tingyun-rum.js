var TINGYUN=function(t,e,n){function r(t){var e=!!t&&"length"in t&&t.length,n=typeof t;return"function"!==n&&("array"===n||0===e||"number"==typeof e&&e>0&&e-1 in t)}function i(t,e){var n,i=0;if(t)if(r(t))for(n=t.length;i<n&&!1!==e.call(t[i],t[i],i);i++);else for(i in t)if(!1===e.call(t[i],t[i],i))break;return t}function o(t){return function(e){return"Array"===t&&Array.isArray?Array.isArray(e):Object.prototype.toString.call(e)==="[object "+t+"]"}}function a(t){switch(typeof t){case"object":if(!t)return null;if(t instanceof Array)return i(t,function(e,n){t[n]=a(e)}),"["+t.join(",")+"]";if(t instanceof Date)return t.getTime().toString();var e="";return i(t,function(t,n){At(t)||(e+=a(n)+":"+a(t)+",")}),e&&(e=e.substr(0,e.length-1)),"{"+e+"}";case"string":return Bt+t.replace(Mt,"\\$1").replace(jt,"\\n")+Bt;case"number":return isNaN(t)?null:t;case"boolean":return t;case"function":return a(t.toString());case"undefined":default:return'"undefined"'}}function u(t){return t&&qt(t)?Rt(t):t}function s(t,e,n,r){var i=function(){return Ft(t,e,i),n.apply(this,arguments)};return Dt(t,e,i,r)}function c(t,e){return Function.prototype.apply.apply(t,e)}function f(t,e){return function(){t.apply(e,arguments)}}function l(t){return Pt?Pt(t):t}function d(t){return arguments.length<2||!t?t:(i(Ut.call(arguments,1),function(e){i(e,function(e,n){t[n]=e})}),t)}function h(t,e){for(var n=-1,r=0,i=null==t?0:t.length,o=[];++n<i;){var a=t[n];e(a,n,t)&&(o[r++]=a)}return o}function p(t,e){return t?e?t.replace(/\{(\w+.?\w+)\}/g,function(t,n){return e[n]||""}).replace(/\{(\d+)\}/g,function(t,n){return e[n]||""}):t:""}function v(t){return setTimeout(t,0)}function g(){}function m(){return+new Date}function y(t){return function(){if(null!==t){var e=t;t=null,e.apply(this,arguments)}}}function b(t){return t?qt(t)?t.length:e.ArrayBuffer&&t instanceof ArrayBuffer?t.byteLength:e.Blob&&t instanceof Blob?t.size:t.length?t.length:0:0}function S(t){return Xt!==Gt&&/^https/i.test(t&&t.protocol||Xt)?"https:":Gt}function x(t,e,n,r){var o=null;return t&&e&&(o=S(r)+"//"+t+e,n&&(o+="?",i(n,function(t,e){var n=[l(e),"=",l(t),"&"];o+=n.join("")}),o+="__r="+m())),o}function _(){this.events={}}function w(t){return!(t in Vt)||Vt[t]}function E(t){var e=$t.cookie.match(new RegExp("(^|;\\s*)("+t+")=([^;]*)"));return e?e[3]:null}function T(t,e,n){var r=t+"="+e;if(n){var i=new Date;i.setTime(i.getTime()+1e3*n),r+=";expires="+i.toGMTString()}$t.cookie=r}function k(t,e,n){var r=$t.createElement(t);try{for(var i in e)r[i]=e[i]}catch(a){var o="<"+t;for(var i in e)o+=" "+i+'="'+e[i]+'"';o+=">",n||(o+="</"+t+">"),r=$t.createElement(o)}return r}function C(t,e,n,r){At(n)&&(r=n);var i=k("div",{style:we}),o=k("iframe",{name:"ty_form",width:0,height:0,style:we}),a=k("form",{style:we,action:t,enctype:"application/x-www-form-urlencoded",method:"post",target:"ty_form"}),u=k("input",{name:"data",type:"hidden"},!0);u.value=Nt(e),a.appendChild(u),i.appendChild(o),i.appendChild(a),$t.body.appendChild(i),a.submit(),o.onreadystatechange=function(){o.readyState!==ve&&4!==o.readyState||(r(null,o.innerHTML),$t.body.removeChild(i))}}function I(t,e,n){if(t&&n&&At(n)){var r=t[e];if(!r||!r._wrapped){var i=n(r);return i&&(i._wrapped=!0),t[e]=i,i}}}function R(t){ke&&t()}function N(t){return function(){ke&&t.apply(this,arguments)}}function q(){ke=!1}function O(){Ne.on(fe,y(function(){t();var e=m();R(function(){Ce.load=e}),Le.loadEventEnd=e})),i([fe,le,de,he],function(t){Dt(e,t,function(e){R(function(){(Ce.e[t]||(Ce.e[t]=[])).push(m())}),Ne.emit(t,e)})});var t=y(function(){var t=m();R(function(){Ce.end=t}),Le.domContentLoadedEventStart=t,$t.querySelectorAll&&(Re.resources=Re.resources||[],i($t.querySelectorAll("head>link,head>script"),function(t){var e;"LINK"==t.tagName?e=t.href:"SCRIPT"!=t.tagName||t.defer||t.async||(e=t.src),e&&Re.resources.push(e)}))});Dt($t,"DOMContentLoaded",t),Dt($t,pe,function(e){$t.readyState===ve&&t()});var n=y(function(){Le.touch=m()});i(["scroll","click","keypress"],function(t){s($t,t,n)});var r=e.requestAnimationFrame;!r||r.toString().indexOf("[native code]")<0||I(e,"requestAnimationFrame",function(t){return function(){if(!Le.firstPaint){var n=m();R(function(){Ce.an.count++,Ce.an.t=n}),Le.firstPaint=n,e.requestAnimationFrame=t}return t.apply(this,arguments)}})}function A(t){H(t,qe)}function L(t){H(t,Oe)}function H(t,e){var n="ok";if(!t)return n=e.length?e.join("\n"):n;e.push(t)}function B(){var t=this;t.xhrs={},t.errs=[],_.call(t)}function M(t,e){this.flags=0,At(t.create)&&(this.create=t.create,this.flags|=Fe),At(t.before)&&(this.before=t.before,this.flags|=Pe),At(t.after)&&(this.after=t.after,this.flags|=Ue),At(t.error)&&(this.error=t.error,this.flags|=Ye),this.data=e}function j(t,e){if(!Ge){if(!Lt(t)||!t)throw new TypeError("callbacks arguments must be an object");return Ge=new M(t,e)}}function z(t){var e=Ge.data;if(0!=(Ge.flags&Fe)){var n=Ge.create(Ge.data);n!==undefined&&(e=n)}return function __ty_aysncWrap__(){0!=(Ge.flags&Pe)&&Ge.before(this,e);var n=__ty_aysncWrap__;n._&&(n._=1);try{var r=t.apply(this,arguments)}catch(i){throw 0!=(Ge.flags&Ye)&&Ge.error(e,i),i}return 0!=(Ge.flags&Ue)&&Ge.after(this,e),r}}function D(t){return!Ge||Ge.flags<=0?t:z(t)}function F(){function t(t){return function(e){var n=Ut.call(arguments,0);At(e)&&(n[0]=D(e));var r=this;try{return t.apply(r,n)}catch(i){}return c(t,[r,n])}}I(e,"setTimeout",t),I(e,"setInterval",t)}function P(){this.id=null,this.active=null,this._set=[]}function U(){F();var t=new P;return t.id=j({create:function(){return t.active},before:function(e,n){n&&t.enter(n)},after:function(e,n){n&&t.exit(n)},error:function(e,n){if(e){try{n.moduleId=e.moduleId}catch(r){}t.exit(e)}}}),t}function Y(t){De&&console.warn(t||"Event key required!")}function X(t){t=t||{},this.key=t.key;var e=t.timeout||6e5;this.i=e?setTimeout(f(this.fail,this),e):null,this.status=1,this.remain=0,this.xhrs=[],this.s=m(),this.e=null,this.called=this.sent=!1}function G(){if(Object.defineProperty){var t=e[be];Object.defineProperty(e,be,{get:function(){return nn++>0&&e.console&&console.warn("window.%s is deprecated, use window.%s instead.",be,Se),t}})}}function W(t){try{return u(t)}catch(e){A(e&&e.message)}return null}function J(){return Le[sn]||Le._end}function $(){return Le.loadEventEnd||Le._end}function K(t){function r(e){return t[e]>0?t[e]-a:0}var o={},a=n;if(t){R(function(){var e=Ce.t={};i(t,function(t,n){At(t)||(e[n]=t)})}),a=t.navigationStart,o={f:r(rn),qs:r(on),rs:r(an),re:r(un),os:r(sn),oe:r(cn),oi:r(fn),oc:r(ln),ls:r(dn),le:r(hn),tus:r(pn),tue:r(vn)};var u=r(gn),s=r(mn),c=r(yn),f=r(bn),l=r(Sn),d=r(xn);if(d-l>0&&(o.cs=l,o.ce=d),s-u>0&&(o.ds=u,o.de=s),(f-c>0||f>0)&&(o.es=c,o.ee=f),0==o.le){var h=$();o.ue=h-a}Le._le=o.ue||o.le;var p,v;if(t.msFirstPaint)p=t.msFirstPaint,R(function(){Ce.fp="m_"+p});else if((v=e.chrome)&&v.loadTimes){var g=v.loadTimes();g&&g.firstPaintTime&&(p=1e3*g.firstPaintTime),R(function(){Ce.fp="c_"+g.firstPaintTime})}else Le.firstPaint&&(p=Le.firstPaint,R(function(){Ce.fp=p}));p&&(o.fp=Math.round(p-a),Le.fp=o.fp),t[_n]&&(o.sl=r(_n))}else o={t:a,os:J()-a,ls:$()-a};return o.je=Le.errs&&Le.errs.length||0,Le.ct&&(o.ct=Le.ct-a),Le.touch&&(o.fi=Le.touch-a),o}function Q(t,e){var r={tr:!1,tt:l($t.title),charset:$t.characterSet};Ie.resources&&d(r,Ie.resources),R(function(){r.debug=Ce}),q();var o=Le.errs;i(o,function(t,r){var i=t.toObject();i.o=i.o-e&&e.navigationStart||n,o[r]=i}),r.err=o;var a="getEntriesByType";return t[a]?(r.tr=!0,r.res=[],i(t[a]("resource"),function(t){function e(e){var n=t[e];return n>0?n:0}var n=t.initiatorType,i=t.name,o={o:e("startTime"),rt:n,n:i,f:e(rn),ds:e(gn),de:e(mn),cs:e(Sn),ce:e(xn),sl:e(_n),qs:e(on),rs:e(an),re:e(un),ts:t.transferSize||0,es:t.encodedBodySize||0};if("xmlhttprequest"===n){var a=V(i);a&&(o.aid=a.id,o.atd=a.trId,o.an=a.action,o.aq=a.time&&a.time.qu,o.as=a.time&&a.time.duration)}r.res.push(o)})):L(p(Me,[a])),r}function V(t){var e;return i(Le.xhrs,function(n,r){if(r&&r.indexOf(t)>-1)return e=n,!1}),e}function Z(t){var e={};return t&&(e.id=t.id,e.a=t.a,e.q=t.q,e.tid=t.tid,e.n=t.n),e}function tt(t){var e=0,n=t.timing;return n?t.getEntriesByName&&(e=n.domLoading,i(Re.resources,function(r){var i=t.getEntriesByName(r);if(1==i.length){var o=i[0].responseEnd+n.navigationStart;o>e&&(e=o)}}),e-=n.navigationStart):L("fp=0"),R(function(){Ce._fp=e}),Math.round(e)}function et(t,n,r,o){var a=r||0,u=Ie.firstScreenResources;if(u&&u.length&&t.getEntriesByName)return i(u,function(e){var n=t.getEntriesByName(e);if(n.length){var r=n[0].responseEnd;r>a&&(a=r)}}),o.fs_s=1,Math.round(a);if(!$t.createElement("img").getBoundingClientRect)return R(function(){Ce.fs=a}),a;if(t.getEntriesByName){var s=e.innerHeight,c=e.innerWidth,f=[];i($t.querySelectorAll("img"),function(t){t.src&&nt(rt(t),s,c)&&!it(t)&&f.push(t.src)});var l=(n.loadEventEnd||Le.loadEventEnd)-n.navigationStart;i(f,function(e){var n=t.getEntriesByName(e);if(n.length){var r=n[0],i=r.responseEnd;r.fetchStart<=l&&i>a&&(a=i)}})}return Math.round(a)}function nt(t,n,r){if(t){var i=e.pageYOffset;if(t.top+(0===i?0:i||$t.scrollTop||0)-($t.clientTop||0)>=n)return!1;var o=t.left;return o>=0&&o<r}return!1}function rt(t){return At(t.getBoundingClientRect)?t.getBoundingClientRect():undefined}function it(t){return oe.reliableHiddenOffsets()?t.offsetWidth<=0&&t.offsetHeight<=0&&!t.getClientRects().length:ot(t)}function ot(t){for(;t&&1===t.nodeType;){if("none"===at(t)||"hidden"===t.type)return!0;t=t.parentNode}return!1}function at(t){return t.style&&t.style.display}function ut(t){var e=n,r=0;return t&&(e=t.navigationStart||e,r=t[sn]||t.domInteractive||t.domLoading||r),(r=Le[sn]||r||Le._end)-e}function st(t){if(t){var e=t.fetchStart;if(e)return e-t.navigationStart}return undefined}function ct(t){return function __ty_aysncWrap__(e,n){var r=this,i=__ty_aysncWrap__;if(i._&&(i._=1),!r[_e]){var o=r[be]={};o.method=e,o.url=n,o.id=Rn++;var a=Je.get("event");a&&(o.key=a.key,a.remain++)}try{return t.apply(r,arguments)}catch(u){}return c(t,[r,arguments])}}function ft(t){return function __ty_aysncWrap__(e){var n=this,r=__ty_aysncWrap__;if(r._&&(r._=1),!n[_e]){var i=n[be];i&&(i.start=m(),i.reqSize=b(e)),lt(n),n.setRequestHeader&&Vt.id&&i&&On(i.url)&&(i.r=m()%1e9,n.setRequestHeader("X-Tingyun-Id",Vt.id+";r="+i.r))}try{return t.apply(n,arguments)}catch(o){}return c(t,[n,arguments])}}function lt(t){function e(e){return D(function __ty_aysncWrap__(){var n=__ty_aysncWrap__;n._&&(n._=1),dt(t);var r;if(At(e)){var i=t[be];if(i&&4==t.readyState)var o=m();r=e.apply(this,arguments),i&&4==t.readyState&&(i.cbTime=m()-o,t[be]=null)}return r})}function n(e){t[be]&&(t[be].errorCode=e)}if(t[qn])I(t,qn,e);else try{Dt(t,pe,D(function __ty_aysncWrap__(){var e=__ty_aysncWrap__;e._&&(e._=1),dt(t)})),i(Nn,function(e,r){Dt(t,r,function(){n(e)})})}catch(r){return void v(function(){i(Nn,function(e,r){var i="on"+r;t[i]?I(t,i,function(t){if(n(e),At(t))return t.apply(this,arguments)}):t[i]=function(){n(e)}}),I(t,qn,e)})}v(function(){I(t,qn,e)})}function dt(t){var e=t[be];if(e&&(e.end=m(),e.readyState=t.readyState,4==t.readyState)){e.status=t.status,e.resSize=ht(t);var n=Je.get("event");v(function(){var r=!1;if(i(In,function(t){if(t.id===e.id)return r=!0,!1}),!r){var o=pt(e,t);n&&n.key==e.key&&(n.xhrs.push(o),0==--n.remain&&n._end()),Le.xhrs&&(Cn(e),Le.xhrs[e.url]=o),In.push(o)}})}}function ht(t){var e=0;if(""==t.responseType||"text"==t.responseType)e=b(t.responseText);else if(t.response)e=b(t.response);else try{e=b(t.responseText)}catch(n){}return e}function pt(t,e){if(t){var n=t.status,r={id:t.id,req:t.method+" "+t.url,start:t.start,du:n>0?t.end-t.start:0,cb:t.cbTime||0,status:n,err:t.errorCode?t.errorCode:0,rec:t.resSize,send:t.reqSize};if(t.r){var i=gt(e,t);i&&(r.s_id=i.id,r.s_name=i.action,i.time&&(r.s_du=i.time.duration,r.s_qu=i.time.qu),r.t_id=i.trId)}return r}}function vt(t,e){if(t&&t.getResponseHeader)return t.getResponseHeader(e)}function gt(t,e){var n=W(vt(t,"X-Tingyun-Tx-Data"));return n&&n.r&&mt(n.r)===mt(e.r)?n:null}function mt(t){return t+""}function yt(){return setInterval(function(){if(In&&In.length){var t=[];i(In,function(e){t.push(e)});var n=null;Ie.ulabel&&(n={ulabel:Ie.ulabel}),Le.emit("send","/xhr1",n,{xhr:t},function(){In=h(In,function(e){return t.indexOf(e)<0})}),Yt()&&!e.XDomainRequest&&(In=[])}},Tn)}function bt(){var t=Kt&&Kt.prototype;return t?(I(t,"open",ct),I(t,"send",ft)):Kt&&(e.XMLHttpRequest=function(){var t=new Kt;return I(t,"open",ct),I(t,"send",ft),t}),yt()}function St(t){this.limit=t,this.reset()}function xt(t,e,n,r){return String(t)+String(e)+String(n)+String(r)}function _t(t,e,n,r,i,o,a){var u=this;u.id=t,u.time=m(),u.msg=e,u.lineno=r,u.colno=i,u.filename=n,u.count=1,u.stack=o&&o.stack||"",u.module=a,u.fix();var s=Bn[t];u.ep=s?0:1,Bn[t]=!0}function wt(t){var e=function(t){var e=[];return i(t,function(t){e.push(t.toObject())}),e}(Hn.c);if(!e||!e.length)return null;var r={fu:Ln||Ln++,os:parseInt((m()-(Re.pfStart||n))/1e3)};Ie.ulabel&&(r.ulabel=Ie.ulabel),Le.emit("send","/err1",r,{datas:e},f(Hn.reset,Hn))}function Et(t,e,n,r,o){if(e||!Zt){var a=!1;if(i(Qt.domains,function(t){if(a=t.test(e))return!1}),!a){var u=o&&o.moduleId,s=xt(t,n,r,u),c=Hn.get(s);c?c.increase():(c=new _t(s,t,e,n,r,o,u),Hn.add(s,c),Le.errs&&Le.errs.push(c))}}}function Tt(){var t=e.onerror;e.onerror=function(e,n,r,i,o){if(Et(e,n,r,i,o),At(t))return t.apply(this,arguments)},e.onerror._ty=!0}function kt(){var t=e.onerror;t&&t._ty||Tt()}function Ct(){var t=Yt();return t?Tt():Dt(e,ce,function(t){var n,r,i,o,a;(t instanceof e.Event||e.ErrorEvent&&t instanceof e.ErrorEvent)&&(n=t.message||t.error&&(t.error.message||t.error.constructor.name)||"",r=t.lineno||0,i=t.colno||0,(o=t.filename||t.error&&t.error.filename||t.target&&t.target.baseURI||"")==$t.URL&&(o="#"),a=t.error),Et(n,o,r,i,a)}),Ne.on([fe,le,de,he],function(t){wt()}).on(fe,function(){t&&v(kt)}),setInterval(wt,An)}function It(){var t=Array.prototype;t.indexOf||(t.indexOf=function(t,e){var n=this.length>>>0;if((e|=0)<0)e=Math.max(n-e,0);else if(e>=n)return-1;if(t===undefined){do{if(e in this&&this[e]===undefined)return e}while(++e!==n)}else do{if(this[e]===t)return e}while(++e!==n);return-1})}var Rt,Nt,qt=o("String"),Ot=o("Array"),At=o("Function"),Lt=o("Object"),Ht=o("Undefined"),Bt='"',Mt=/([\"\\])/g,jt=/\n/g,zt=e.JSON;zt&&zt.parse&&zt.stringify?(Rt=function(t){return JSON.parse(t)},Nt=function(t){return JSON.stringify(t)}):(Rt=function(t){return new Function("return "+t)()},Nt=a);var Dt,Ft;e.addEventListener?(Dt=function(t,e,n,r){return t.addEventListener(e,n,r)},Ft=function(t,e,n){return t.removeEventListener(e,n)}):(Dt=function(t,e,n){return t.attachEvent("on"+e,n)},Ft=function(t,e,n){return t.detachEvent("on"+e,n)});var Pt=e.encodeURIComponent,Ut=[].slice,Yt=new Function("return!+[1,]"),Xt=e.location.protocol,Gt="http:",Wt=function(){function t(t){return t<0?NaN:t<=30?0|Math.random()*(1<<t):t<=53?(0|Math.random()*(1<<30))+(0|Math.random()*(1<<t-30))*(1<<30):NaN}function e(t,e){for(var n=t.toString(16),r=e-n.length,i="0";r>0;r>>>=1,i+=i)1&r&&(n=i+n);return n}return function(){return e(t(32),8)+"-"+e(t(16),4)+"-"+e(16384|t(12),4)+"-"+e(32768|t(14),4)+"-"+e(t(48),12)}}();_.prototype={on:function(t,e){var n=this;return qt(t)?(n.events[t]||(n.events[t]=[])).push(e):Ot(t)&&i(t,function(t){n.on(t,e)}),n},off:function(t,e){var n=arguments.length,r=this;if(0===n)return r.events={},r;var i=r.events[t];if(!i)return r;if(1===n)return r.events[t]=null,r;for(var o=i.length;o--;)if(i[o]===e){i.splice(o,1);break}return r},emit:function(t){var e=[].slice.call(arguments,1),n=this.events[t];return n&&i(n,function(t){return t.apply(this,e)}),this},unshift:function(t,e){var n=this;return(n.events[t]||(n.events[t]=[])).unshift(e),n}};var Jt=e.Error,$t=e.document,Kt=e.XMLHttpRequest,Qt={};t(Qt);var Vt=Qt.server||{};Vt=d({fp_threshold:2e3,fs_threshold:4e3,dr_threshold:4e3},Vt);var Zt=w("ignore_err"),te=w("debug"),ee=e.location,ne=e.navigator,re=e.HTMLElement,ie=function(){try{var t=Wt();return e.localStorage.setItem(t,t),e.localStorage.removeItem(t),!0}catch(n){return!1}}(),oe={};oe.localStorage=ie,function(){function t(){var t,f,l=$t.documentElement;l.appendChild(s),c.style.cssText="-webkit-box-sizing:border-box;box-sizing:border-box;position:relative;display:block;margin:auto;border:1px;padding:1px;top:1%;width:50%",n=i=u=!1,r=a=!0,e.getComputedStyle&&(f=e.getComputedStyle(c),n="1%"!==(f||{}).top,u="2px"===(f||{}).marginLeft,i="4px"===(f||{width:"4px"}).width,c.style.marginRight="50%",r="4px"===(f||{marginRight:"4px"}).marginRight,(t=c.appendChild($t.createElement("div"))).style.cssText=c.style.cssText="-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;display:block;margin:0;border:0;padding:0",t.style.marginRight=t.style.width="0",c.style.width="1px",a=!parseFloat((e.getComputedStyle(t)||{}).marginRight),c.removeChild(t)),c.style.display="none",(o=0===c.getClientRects().length)&&(c.style.display="",c.innerHTML="<table><tr><td></td><td>t</td></tr></table>",(t=c.getElementsByTagName("td"))[0].style.cssText="margin:0;border:0;padding:0;display:none",(o=0===t[0].offsetHeight)&&(t[0].style.display="",t[1].style.display="none",o=0===t[0].offsetHeight)),l.removeChild(s)}$t.documentElement;var n,r,i,o,a,u,s=$t.createElement("div"),c=$t.createElement("div");c.style&&(c.style.cssText="float:left;opacity:.5",oe.opacity="0.5"===c.style.opacity,oe.cssFloat=!!c.style.cssFloat,c.style.backgroundClip="content-box",c.cloneNode(!0).style.backgroundClip="",oe.clearCloneStyle="content-box"===c.style.backgroundClip,(s=$t.createElement("div")).style.cssText="border:0;width:8px;height:0;top:0;left:-9999px;padding:0;margin-top:1px;position:absolute",c.innerHTML="",s.appendChild(c),oe.boxSizing=""===c.style.boxSizing||""===c.style.MozBoxSizing||""===c.style.WebkitBoxSizing,oe.reliableHiddenOffsets=function(){return null==n&&t(),o})}();var ae,ue;oe.localStorage?(ae=function(t){return e.localStorage.getItem(t)},ue=function(t,n){return e.localStorage.setItem(t,n),n}):(ae=E,ue=T);var se,ce="error",fe="load",le="unload",de="beforeunload",he="pagehide",pe="readystatechange",ve="complete",ge="TY_DISTINCT_ID",me="TY_SESSION_ID",ye=86400,be="_ty_rum",Se="TINGYUN",xe=2,_e="__ign",we="display:none",Ee="POST",Te=function(t,e){e=e||g;var n=new Image;Dt(n,pe,function(){"loaded"!=n.readyState&&4!=n.readyState||e(null)},!1),Dt(n,fe,function(){e(null)},!1),Dt(n,ce,function(){e(ce)},!1),n.src=t};e.XDomainRequest?se=function(t,e,n,r){At(n)&&(r=n);var i=new XDomainRequest;i.open(Ee,t),i.onload=function(){r(null,i.responseText)},i.onerror=function(t){r(t)},i.send(Nt(e))}:Yt()?se=C:ne.sendBeacon?Te=se=function(t,e,n,r){At(n)&&(r=n,n=null),ne.sendBeacon(t,Nt(e))&&r&&r()}:se=function(t,e,n,r){At(n)&&(r=n,n=null);var i=y(r),o=new Kt;o[_e]=!0,o.overrideMimeType&&o.overrideMimeType("text/html"),o.onreadystatechange=function(){4==o.readyState&&200==o.status&&i(null,o.responseText)},o.onerror=i,e=Nt(e);try{o.open(Ee,t,!0)}catch(u){return C(t,e,i)}for(var a in n)o.setRequestHeader(a,n[a]);o.send(e)};var ke=te,Ce={start:n,e:{},an:{count:0},visible:[]},Ie={},Re={};!function(){if(te){var t,e,n="visibilitychange";Ht($t.hidden)?Ht($t.msHidden)?Ht($t.webkitHidden)||(t="webkitHidden",e="webkit"+n):(t="msHidden",e="ms"+n):(t="hidden",e=n),Ht($t.addEventListener)||Ht($t[t])||Dt($t,e,N(function(){Ce.visible.push([$t[t],m()])}))}}();var Ne=new _,qe=[],Oe=[],Ae=B.prototype;Ae.start=function(){if(!Vt.key)return A("missing config, agent disabled!"),!1;var t=e[be]||e[Se];return t&&t.server?(A("already loaded!"),!1):(O(),this)},d(Ae,_.prototype);var Le=new B;Le.on("send",function(t,e,n,r){var i=x(Vt.beacon,t,d({},He,e||{}));switch(r=r||g,t){case"/pf":n?se(i,n,function(){Le.xhrs=Le.errs=null,r()}):Te(i,r);break;default:se(i,n,r)}});var He={pvid:Wt(),ref:$t.URL,referrer:$t.referrer,key:Vt.key,v:"1.7.5",av:"1.7.5",did:function(){var t=ae(ge);return t||ue(ge,Wt(),ye)}(),sid:function(){var t=E(me);return t||(t=Wt(),T(me,t)),t}()},Be=re?function(t){return t instanceof re}:function(t){t&&"object"==typeof t&&1===t.nodeType&&qt(t.nodeName)},Me="{0} not support",je="illegal argument",ze={},De="undefined"!=typeof e.console,Fe=1,Pe=2,Ue=4,Ye=8,Xe=M.prototype;Xe.create=Xe.before=Xe.after=Xe.error=null;var Ge;P.prototype={createContext:function(){return Object.create?Object.create(this.active):U(this.active)},get:function(t){if(this.active)return this.active[t]},set:function(t,e){if(this.active)return this.active[t]=e},enter:function(t){if(!t)throw new Jt("context required!");this._set.push(this.active),this.active=t},exit:function(t){if(!t)throw new Jt("context required!");if(t!==this.active){var e=this._set.lastIndexOf(t);if(e<0)throw new Jt("context not currently entered!");this._set.splice(e,1)}else this.active=this._set.pop()},bind:function(t,e){e||(e=this.active?this.active:this.createContext());var n=this;return function(){n.enter(e);try{return t.apply(this,arguments)}catch(r){try{r.moduleId=e.moduleId}catch(i){}throw r}finally{n.exit(e)}}}};var We=!1,Je=(We||(Je=U(),We=!0),Je),$e=Y.prototype;$e.fail=$e.end=g;var Ke=X.prototype;Ke.end=Ke.finish=Ke.fail=null,Ke.send=function(t){var e=this;e.sent=!0;var n=t.event&&t.event.xhrs||[];i(n,function(t){t.start=t.start-e.s});var r={key:e.key,duration:e.e-e.s,status:e.status,xhrs:n};Le.emit("send","/spe",null,r,g)};var Qe={},Ve={},Ze=e.screen;Ze&&(Ve.sh=Ze.height,Ve.sw=Ze.width);var tn={host:"cshst",url:"csurl"},en={version:"1.7.5",config:function(t,e){var n;if(Lt(t))n=t;else{if(!qt(t)||e===undefined)throw new Jt(je);(n={})[t]=e}return i(n,function(t,e){e in tn?Ie[tn[e]]=t:Ie[e]=t}),this},DIAGNOSE_HREF:xe,diagnose:function(t){function e(t,e,r){var i=r||"log",o=n[t]||(n[t]={});o[i]=o[i]||"",o[i]+=e}var n={},r=A();if(e("Status",r,"ok"!==r),e("Debug",L()),i(ze,function(t,n){e("Timeline",n+": "+t.toString())}),!t&&De)console.log("[TingYun Agent Diagnosis]\n"),i(n,function(t,e){i(console[e],function(t,e){console[e](t)})});else{if(t!==xe)return Nt(n);ee.href=ee.href+"#"+Nt(n)}},createEvent:function(t){var e=(t=t||{}).key;if(!e)return new Y;if(Qe[e])return new Y("event "+e+" is executing");Qe[e]=!0;var n=Je.createContext();Je.enter(n);var r=new X(t);return Je.set("event",r),r._end=function(){var t=this;!t.sent&&0===t.remain&&t.called&&t.finish().send(n)},r.end=function(t){var e=this;e.called?De&&console.warn("Event "+this.key+"has ended or failed!"):(e.called=!0,Je.exit(n),e.status=arguments.length?t:1,e._end())},r.finish=function(t){var e=this;return e.e=m(),e.i&&clearTimeout(e.i),delete Qe[e.key],e},r.fail=function(){this.end(0)},r},logFirstScreen:function(t){if(t){var e=Ie.firstScreenResources=Ie.firstScreenResources||[];Ot(t)||(t=[t]),i(t,function(t){if(qt(t))e.push(t);else if(Be(t)){var n=t.src||t.href;n&&e.push(n)}})}},addExcludedDomain:function(t){Ot(t)||(t=[t]),i(t,function(t){if(t){if(!(t instanceof RegExp))throw new Jt("parameter's type requires RegExp");(Qt.domains||(Qt.domains=[])).push(t)}})}};e[be]=e[Se]=en;var nn=0,rn="fetchStart",on="requestStart",an="responseStart",un="responseEnd",sn="domContentLoadedEventStart",cn="domContentLoadedEventEnd",fn="domInteractive",ln="domComplete",dn="loadEventStart",hn="loadEventEnd",pn="unloadEventStart",vn="unloadEventEnd",gn="domainLookupStart",mn="domainLookupEnd",yn="redirectStart",bn="redirectEnd",Sn="connectStart",xn="connectEnd",_n="secureConnectionStart",wn=function(t){if(!t.agent){var n=e._ty_rum;if(n&&n.agent)t.agent=n.agent;else{var r=E("TINGYUN_DATA");if(r){try{t.agent=W(decodeURIComponent(r))}catch(i){A(i&&i.message)}T("TINGYUN_DATA","",-1e3)}}}return t.agent}(Qt);wn&&wn.ulabel&&(Ie.ulabel=wn.ulabel);var En=function(){var t=y(function(){function t(t){return t?"1":"0"}var r=e.performance,o=!!r;o||L(p(Me,["pf"]));var a=Z(wn),u=r&&r.timing,s=d(K(u),a,Ie),c=d({},Ve);Le.fp?(c.fp=Le.fp,o&&Le.fp>Le._le&&(L("fp>le"),c.fp=tt(r),c.__fp=2)):o?(c.fp=tt(r),c.__fp=1):c.fp=c.__fp=0,c.dr=ut(u),o?c.fs=et(r,u,c.fp,c):c.__fs=0;var f,l="";if(o){var h=Math.max(s.ls,0);h||(h=$()-u.navigationStart||n),c.trace=h;var v=st(u);i(["fp","fs","dr","trace"],function(e){l+=t((v?c[e]-v:c[e])>=Vt[e+"_threshold"])}),delete c.trace,l.indexOf("1")>-1&&(f=Q(r,u))}c.trflag=l||"0000",Re.pfStart=m(),delete s.firstScreenResources,delete s.resources,Le.emit("send","/pf",d(s,c),f,function(){L("pf sent!"),Le.xhrs=Le.errs=null})});return Ne.on(fe,function(){v(t)}).on([le,de,he],t)},Tn=2e3,kn=function(t){var e=[];return i(Vt.custom_urls,function(t){try{e.push(new RegExp(t))}catch(n){A(n&&n.message)}}),e}(),Cn=kn.length?function(t){var e=t.url;!Le.ct&&e&&i(kn,function(n){if(e.match(n))return Le.ct=t.end+t.cbTime,!1})}:g,In=[],Rn=0,Nn={error:990,abort:905,timeout:903},qn="on"+pe,On=function(){function t(t){var r=t;return e&&(n.setAttribute("href",r),r=n.href),n.setAttribute("href",r),{href:n.href,protocol:n.protocol?n.protocol.replace(/:$/,""):"",host:n.host,search:n.search?n.search.replace(/^\?/,""):"",hash:n.hash?n.hash.replace(/^#/,""):"",hostname:n.hostname,port:n.port,pathname:"/"===n.pathname.charAt(0)?n.pathname:"/"+n.pathname}}var e=/(msie|trident)/i.test(ne.userAgent),n=$t.createElement("a"),r=t(ee.href);return function(e){var n=t(e);return n.protocol===r.protocol&&n.host===r.host}}(),An=1e4,Ln=0;St.prototype={add:function(t,e){this.len>this.limit||this.get(t)||(this.c[t]=e,this.len++)},get:function(t){return this.c[t]},reset:function(){this.c={},this.len=0}};var Hn=new St(100),Bn={};return _t.prototype={increase:function(){this.count++},fix:function(){var t=this,e=t.stack;if(e&&qt(e)){var n=[];i(e=e.split(/\n/),function(t,e){-1==t.indexOf("__ty_aysncWrap__")&&n.push(t)}),t.stack=n.join("\n")}},toObject:function(){var t=this;return{o:t.time,e:t.msg,l:t.lineno,c:t.colno,r:t.filename,ec:t.count,s:t.stack,m:t.module,ep:t.ep}}},It(),Le.start()&&(En(),bt(),Ct()),Le._end=m(),R(function(){Ce._end=Le._end}),G(),en}(function(ty_rum){ty_rum.server = {id:'D6wwMmHotQg',ignore_err : true,beacon:'beacon.tingyun.com',beacon_err:'beacon-err.tingyun.com',key:'YAUDWjbpl1Q',trace_threshold:7000,fp_threshold:2000,fs_threshold:4000,dr_threshold:4000,custom_urls:[],sr:1.0};},window,+new Date);