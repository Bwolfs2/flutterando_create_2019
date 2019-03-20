import 'package:flutter/material.dart';
import 'package:flutterando_create_2019/main.dart';

bg() => BgCard();
getL(int items) => List.generate(items, (index) => SmCard()).toList();
gcsc(int items) => Column(children: getL(items));
grsc(int items) => Row(children: getL(items));
width(ctx) => MediaQuery.of(ctx).size.width;
gw6(ctx) => width(ctx) / 6;

white() => Colors.white;

cont(c) => Container(child: c);
contW(c, w) => Container(child: c, width: w);
contH(c, h) => Container(child: c, height: h);

row(List<Widget> c) => Row(children: c);
col(List<Widget> c) => Column(children: c);

abstract class Stl extends StatelessWidget {}

class BL extends Stl {
  @override
  build(ctx) {
    return cont(
      col(
        [
          contH(grsc(3), gw6(ctx)),
          row([bg(), contW(gcsc(2), gw6(ctx))])
        ],
      ),
    );
  }
}

class BR extends Stl {
  @override
  build(ctx) {
    return cont(
      col(
        [
          contH(grsc(3), gw6(ctx)),
          row([contW(gcsc(2), gw6(ctx)), bg()])
        ],
      ),
    );
  }
}

class TR extends Stl {
  @override
  build(ctx) {
    return cont(
      col(
        [
          row([contW(gcsc(2), gw6(ctx)), bg()]),
          contH(grsc(3), gw6(ctx))
        ],
      ),
    );
  }
}

class TL extends Stl {
  @override
  build(ctx) {
    return cont(
      col(
        [
          contH(grsc(3), gw6(ctx)),
          row([contW(gcsc(2), gw6(ctx)), bg()])
        ],
      ),
    );
  }
}

class Cp extends StatelessWidget {
  final color;
  final icon;
  final tag;
  const Cp(this.color, this.icon, this.tag, {Key key}) : super(key: key);

  @override
  build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        backgroundColor: color,
        body: Hero(
            child: Center(child: Icon(icon, size: 100, color: white())),
            tag: "h1$tag"));
  }
}

nav(ctx, c, i, t) => Navigator.of(ctx).push(MaterialPageRoute(
    builder: (ctx) {
      return Cp(c, i, t);
    },
    fullscreenDialog: true));

class SmCard extends Stl {
  @override
  build(ctx) {
    var c = Cfg.gc();
    var i = Cfg.gi();
    var t = Cfg.gt();
    return InkWell(
        onTap: () => nav(ctx, c, i, t),
        child: Hero(
            tag: "h1$t",
            child: Container(
                width: width(ctx) / 6.32,
                height: width(ctx) / 6.32,
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(1.2),
                child: Material(
                    elevation: 4,
                    child: Container(
                        color: c, child: Icon(i, size: 30, color: white()))))));
  }
}

class BgCard extends Stl {
  @override
  build(ctx) {
    var c = Cfg.gc();
    var i = Cfg.gi();
    var t = Cfg.gt();
    return InkWell(
        onTap: () => nav(ctx, c, i, t),
        child: Hero(
            tag: "h1$t",
            child: Container(
                padding: EdgeInsets.all(2),
                child: Material(
                    elevation: 4,
                    child: Container(
                        color: c,
                        width: width(ctx) / 3.14,
                        height: width(ctx) / 3.14,
                        child: Icon(i, size: 60, color: white()))))));
  }
}
